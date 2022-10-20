using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CrudClientes.Models
{
    [Table("Clientes")]
    public class ClientModel
    {
        [Column("Id")]
        public int Id { get; set; }

        [Column("Nome")]
        public string Nome { get; set; }

        [Column("CPF")]
        [StringLength(14, ErrorMessage = "Tamanho não pode ser superior a 14.")]
        public string CPF { get; set; }

        [Column("DataNascimento")]
        [Display(Name = "Data de Nascimento")]
        public string DataNascimento { get; set; }
        
        [Column("Sexo")]
        public string Sexo { get; set; }

        [Column("Estado")]
        public string Estado { get; set; }

        [Column("Cidade")]
        public string Cidade { get; set; }

    }
}
