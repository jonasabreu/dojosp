--- 
wordpress_id: 18
layout: post
title: Dojo 41 - Return of the Overlapping Areas
date: 2008-06-18 18:12:25 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=15
---
<p style="padding-left: 30px; text-align: center;"><em>Esse relato foi escrito pelo Yoshi, estreando como escriba no blog. Legal!!</em></p>

<ul>
	<li><span style="color: #000000;"><strong>Data:</strong></span> 11/06/2008</li>
	<li><span style="color: #000000;"><strong>Participantes:</strong></span> Thiago, Mari, Hugo, Yoshi e Breno</li>
	<li><strong><span style="color: #000000;">Randori:</span></strong> <a href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=875">Overlapping Areas</a> em C, com o Dojo Unit Test</li>
	<li><strong>Código fonte:</strong> <a href="http://dojo_sp.googlegroups.com/web/41-OverlappingAreas.zip">http://dojo_sp.googlegroups.com/web/41-OverlappingAreas.zip</a></li>
</ul>
Tiramos a carta <span style="color: #ff0000;">"Venda seu peixe"</span>. Nada mais próprio para um dia onde, numa situação inédita, os problemas eram exatamente os mesmo do dojo anterior, mas com um porém: Se repetísse-mos <span style="color: #ff0000;">"Overlapping areas"</span>, continuaríamos do ponto que paramos - para melhor ou para pior. E isso só seria possível por que todos os presentes estavam... Presentes na sessão anterior.

Eram então os problemas: <span style="color: #ff0000;">Eternal Truths</span>, <span style="color: #ff0000;">Water Flow</span> e <span style="color: #ff0000;">Overlapping Areas</span>.
O Yoshi resolveu abraçar a causa da carta e vender a idéia de, finalmente, terminar um problema no Dojo. Como isso, sugeriu <span style="color: #ff0000;">Water Flow</span> - incontestavelmente o problema para a situação.

Aberta a votação, ficou evidente que ninguém estava interessado em procurar pela verdade eterna nos labirintos sagrados. A votação então ficou empatada, aguardando o voto da Mari para a decisão. Visivelmente o Yoshi vendeu seu peixe, uma vez que o empate só se deu por que ele traiu seus persuadidos e votou no outro problema, após ser persuadido pelo Thiago a votar no Retorno de <span style="color: #ff0000;">"Overlapping Areas"</span>. (Pode isso? Vai entender...) Frente a esse quadro, a Mari resolveu por escolher um <span style="color: #ff0000;">outro inédito</span>: repetir um problema no dojo. (Teria ela também sido persuadida pelo Thiago? Ou pelo Yoshi, que virou a casaca dele mesmo? Enfim...)

Como o problema era conhecido, buscamos sua <span style="color: #004586;">ToDo-List</span> para recomeçar. Lembrávamos de um problema com o <span style="font-family: Courier New,monospace;"><strong>qsort</strong></span>, mas não estava claro qual. Como os testes feitos na sessão anterior passaram prontamente, pareceu que estava tudo sobre controle... Ledo engano.

Nosso novo alegre <span style="font-family: Times New Roman,serif;"><span>Dojo Unit</span></span>, agora <span style="color: #b80047;">c</span><span style="color: #579d1c;">o</span><span style="color: #660066;">l</span><span style="color: #cc6633;">o</span><span style="color: #008080;">r</span><span style="color: #6b4794;">i</span><span style="color: #9966cc;">d</span><span style="color: #ff6633;">o</span>, não estava com um <span style="font-family: Courier New,monospace;"><strong>assert_same</strong></span> funcional. Percebemos isso quando ele disse ok para um teste que... Não estava ok. Demos um <span style="font-family: Courier New,monospace;"><strong>svn revert</strong></span> nele e migramos para o velho e sóbrio dojo unit do dojo 40.

Superados os problemas de recomeçar, logo nos deparamos novamente com o estranho problema do quicksort, e este foi resolvido. Moral da hstória? Macros são úteis, mas... <span style="color: #ff0000;">COLOQUE PARÊNTESES</span>! Avançamos mais um pouco no problema: começamos a criar os eventos em X para verificar quais retângulos cruzam a linha de varredura. Com isso, ao soar o gongo para nossa retrospectiva, nosso <span style="color: #004586;">ToDo-List</span> ficou assim:
<ul>
	<li><span style="color: #004586;">Estrutura de Dados para armazenar os 	retâgulos</span></li>
	<li><span style="color: #004586;">Ordenar os retângulos pelo eixo x 	(varrer coordenadas â€˜xâ€™ dos retângulos)</span></li>
	<li><span style="color: #004586;">Guardar os retângulos que cruzam 	a linha de varredura</span></li>
	<li><span style="color: #004586;">Calcular quantos retângulos 	interessam e guardar o máximo.</span></li>
	<li><span style="color: #004586;">Calcular a área</span></li>
</ul>
<h3>Retrospectiva</h3>
<h4><span style="color: #579d1c;">Coisas Legais:</span></h4>
<ol>
	<li><span style="color: #000000;">O algoritmo Scanline, apesar de sua complexidade, despertou o interesse de muitos.</span></li>
	<li><span style="color: #000000;">Continuar o problema também teve uma unisitada popularidade.</span></li>
	<li><span style="color: #000000;">Dojo Unit colorido ficou mó legal!</span></li>
	<li><span style="color: #000000;">O quick sort e seus ponteiros tambem tiveram seu destaque, tanto pela notação quanto pelo 	seu funcionamento.</span></li>
	<li><span style="color: #000000;">Macros são legais, mas... <span style="color: #ff0000;">USE 	PARENTESES</span>!</span></li>
	<li><span style="color: #000000;">Alternativa simples para listas ligadas com alocação dinâmica de <span style="font-family: Courier New,monospace;"><strong>data 	***vetor</strong></span></span></li>
</ol>
<h4><span style="color: #c5000b;">Coisas não legais:</span></h4>
<ol>
	<li>Retomar do ponto de parada não é fácil</li>
	<li>Mesmo retomando, não terminamos</li>
	<li>Dojo Unit colorido estava bonitinho, mas ainda não 	pudemos usa-lo</li>
	<li>Estrutura de dados do scanline é complexa</li>
	<li>Ainda não sabemos testar <span style="font-family: Courier New,monospace;"><strong>malloc</strong></span> e <span style="font-family: Courier New,monospace;"><strong>free</strong></span>... :)</li>
	<li>Fim de semestre: muito cansaço e poucas pessoas</li>
</ol>
<span style="color: #004586;">Durante a (espera pela) pizza, discutimos algumas coisinhas:</span>

Por que não usar o <span style="font-family: Courier New,monospace;"><strong>== </strong></span>ao invés de <span style="font-family: Courier New,monospace;"><strong>assert_same</strong></span>? Infelizmente não estamos em C++ e, portanto não podemos sobrecarregar o operador. Um uso ingênuo de <span style="font-family: Courier New,monospace;"><strong>==</strong></span> não compararia toda a estrutura e, portanto, não daria o resultado esperado...

Para aproveitar melhor o <span style="color: #004586;">parking lot</span>, devemos distribuir os postits brancos no começo. Assim podermos anotar as dúvidas on-line e não deixar nada de lado!
