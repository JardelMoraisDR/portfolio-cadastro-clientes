// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
function clearFilter() {
    $("#inputCpf").val('')
    $("#inputNome").val('')
    $("#inputDtnasc").val('')
    $("#inputEstado").val('')
    $("#inputCidade").val('')

    document.querySelector("#inputCidade").innerHTML = '';
}

function clearFields() {
    $("#CPF").val('')
    $("#Nome").val('')
    $("#DataNascimento").val('')
    $("#Sexo").val('')
    $("#Estado").val('')
    $("#Cidade").val('')

    document.querySelector("#Cidade").innerHTML = '';
}