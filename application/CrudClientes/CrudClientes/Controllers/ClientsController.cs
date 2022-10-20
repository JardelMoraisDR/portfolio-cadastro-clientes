using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CrudClientes.Models;

namespace CrudClientes.Controllers
{
    public class ClientsController : Controller
    {
        private readonly Context _context;

        public ClientsController(Context context)
        {
            _context = context;
        }

        // GET: Clients
        public async Task<IActionResult> Index(string inputCpf, string inputNome, string inputGender, string inputDtnasc, string inputEstado, string inputCidade)
        {
            var clientes = await _context.Client.ToListAsync();
            if (!String.IsNullOrEmpty(inputCpf))
                clientes = clientes.Where(aluno => aluno.CPF.ToUpper().Contains(inputCpf.ToUpper())).ToList();

            if (!String.IsNullOrEmpty(inputNome))
                clientes = clientes.Where(aluno => aluno.Nome.ToUpper().Contains(inputNome.ToUpper())).ToList();

            if (!String.IsNullOrEmpty(inputGender))
                clientes = clientes.Where(aluno => aluno.Sexo.ToUpper().Contains(inputGender.ToUpper())).ToList();

            if (!String.IsNullOrEmpty(inputDtnasc) && inputDtnasc != "dd/mm/aaaa")
                clientes = clientes.Where(aluno => aluno.DataNascimento.ToUpper().Contains(inputDtnasc.ToUpper())).ToList();

            if (!String.IsNullOrEmpty(inputEstado))
                clientes = clientes.Where(aluno => aluno.Estado.ToUpper().Contains(inputEstado.ToUpper())).ToList();

            if (!String.IsNullOrEmpty(inputCidade))
                clientes = clientes.Where(aluno => aluno.Cidade.ToUpper().Contains(inputCidade.ToUpper())).ToList();

            return View(clientes);

        }

        // GET: Clients/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var client = await _context.Client
                .FirstOrDefaultAsync(m => m.Id == id);
            if (client == null)
            {
                return NotFound();
            }

            return View(client);
        }

        // GET: Clients/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Clients/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(ClientModel client)
        {
            if (ModelState.IsValid)
            {
                _context.Add(client);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(client);
        }

        // GET: Clients/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var client = await _context.Client.FindAsync(id);
            if (client == null)
            {
                return NotFound();
            }
            return View(client);
        }

        // POST: Clients/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, ClientModel client)
        {
            if (id != client.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(client);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ClientExists(client.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(client);
        }

        // GET: Clients/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var client = await _context.Client
                .FirstOrDefaultAsync(m => m.Id == id);
            if (client == null)
            {
                return NotFound();
            }

            return View(client);
        }

        // POST: Clients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var client = await _context.Client.FindAsync(id);
            _context.Client.Remove(client);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ClientExists(int id)
        {
            return _context.Client.Any(e => e.Id == id);
        }
    }
}
