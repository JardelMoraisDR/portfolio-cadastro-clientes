using CrudClientes.Models.Enums;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace CrudClientes.Helpers
{
    public class EnderecoHelper
    {
        public static List<SelectListItem> GetEstados(string itemSelected = "", string itemInitial = "")
        {
            
            List<SelectListItem> listItems = new List<SelectListItem>();

            if (!string.IsNullOrEmpty(itemInitial))
            {
                listItems.Add(new SelectListItem
                {
                    Text = itemInitial,
                    Value = itemInitial,
                    Selected = !string.IsNullOrEmpty(itemSelected) && itemSelected == itemInitial
                });
            }

            foreach (var item in Enum.GetNames(typeof(EstadosEnum)))
            {
                SelectListItem currentItem = new SelectListItem
                {
                    Text = item,
                    Value = item
                };

                if (!string.IsNullOrEmpty(itemSelected) && itemSelected == item)
                    currentItem.Selected = true;

                listItems.Add(currentItem);
            }

            return listItems;

        }
    }
}
