var cities = {
    "estados": [
        {
            "sigla": "AC",
            "cidades": [
                "Acrelandia",
                "Assis Brasil"
            ]
        },
        {
            "sigla": "AL",
            "cidades": [
                "Agua Branca",
                "Anadia"
            ]
        },
        {
            "sigla": "SP",
            "cidades": [
                "Santo Andre",
                "Mauá"
            ]
        },
        {
            "sigla": "RJ",
            "cidades": [
                "São Goncalo",
                "Duque de Caxias"
            ]
        },
        {
            "sigla": "MG",
            "cidades": [
                "Belo Horizonte",
                "Uberaba"
            ]
        },
        {
            "sigla": "PI",
            "cidades": [
                "Teresina",
                "Picos"
            ]
        },
        {
            "sigla": "PA",
            "cidades": [
                "Belem",
                "Santarem"
            ]
        }
    ]
};

function searchCity(siglaUf, idInput = '#inputCidade', selected = '') {

    document.querySelector(idInput).innerHTML = '';

    var cidade_select = document.querySelector(idInput);
    var num_estados = cities.estados.length;
    var indexUf = -1;

    for (var index = 0; index < num_estados; index++) {
        if (cities.estados[index].sigla == siglaUf) {
            indexUf = index;
        }
    }

    if (indexUf != -1) {
        cities.estados[indexUf].cidades.forEach(function (cidade) {
            var cid_opts = document.createElement('option');
            cid_opts.setAttribute('value', cidade)
            cid_opts.innerHTML = cidade;
            cidade_select.appendChild(cid_opts);
        });
    } else { //Apenas para exemplificação em demais estados
        var cid_opts = document.createElement('option');
        cid_opts.setAttribute('value', 'Cidade de exemplo')
        cid_opts.innerHTML = 'Cidade de Exemplo';
        cidade_select.appendChild(cid_opts);
    }

}