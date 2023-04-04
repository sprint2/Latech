function simular() {
    litros = Number(document.getElementById('inpLitros').value)
    vendaLitro = Number(document.getElementById('inpVendaLitro').value)
    custoProd = Number(document.getElementById('inpCustoProd').value)


    let litrosCPerda = litros - (litros * 0.1)
    let vendaFinal = vendaLitro - custoProd
    let ganhoMes = vendaFinal * litrosCPerda
    let ganhoAno = ganhoMes * 12
    let perda = ((litros - litrosCPerda) * vendaFinal) * 12

    let litrosCSolucao = litros - (litros * 0.02)
    let vendaFinalSolucao = vendaLitro - custoProd
    let ganhoMesSolucao = vendaFinal * litrosCSolucao
    let ganhoAnoSolucao = ganhoMesSolucao * 12
    let perdaSolucao = ((litros - litrosCSolucao) * vendaFinal) * 12


    resultado.innerHTML = `
    <div class="divtitulos">
        <table id="tb-resultado">
            <tr class="titulos">
                <td> </td>
                <td id="novo">Mês</tsd>
                <td id="novo">Ano</td>
                <td id="novo">Perda anual</td>
            </tr>
            <tr>
                <td id="title-colunm">Sem nossa solução</td>
                <td id="info-colunm">R$ ${ganhoMes.toFixed(2)}</td>
                <td id="info-colunm">R$ ${ganhoAno.toFixed(2)}</td>
                <td style="color: red" id="info-table">R$ ${perda.toFixed(2)}</td>
                </tr>
            <tr>
                <td id="title-colunm">Com nossa solução</td>
                <td id="info-colunm">R$ ${ganhoMesSolucao.toFixed(2)}</td>
                <td id="info-colunm">R$ ${ganhoAnoSolucao.toFixed(2)}</td>
                <td style="color: green" id="info-table">R$ ${perdaSolucao.toFixed(2)}</td>
            </tr>
        </table>
    `
}