--- 
wordpress_id: 16
layout: post
title: Dojo 40 - Overlapping Areas
date: 2008-06-07 23:10:31 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=13
---
<ul>
	<li><strong>Data:</strong> 04/06/2008</li>
	<li><strong>Participantes:</strong> Thiago, Mari, Hugo, Yoshi, Breno e Adolfo</li>
	<li><strong>Randori:</strong> <a href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=875">Overlapping Areas</a> em C, com o Dojo Unit Test</li>
</ul>
A sessão começou com o sorteio da <a title="Creative Whack Pack" href="http://www.creativethink.com/whack/" target="_blank">carta</a> "Have Something at Stake". Depois da leitura da carta e de uma breve história de pescadores contada pelo Yoshi (embora tudo leve a crer, acho que não era mentira), fomos à tradicional votação. Os <strong>7</strong> votos do <a title="Eternal Truths at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=869" target="_blank">Eternal Truths</a> e os <strong>3</strong> do <a title="Water Flow at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=874" target="_blank">Water Flow</a> não foram suficientes  para vencer os <strong>8</strong> votos do <a title="Overlapping Areas at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=875" target="_blank">Overlapping Areas</a>. Escolhido o predador pro nosso aquário, começamos a discutir o problema.

<img src="http://icpcres.ecs.baylor.edu/onlinejudge/external/9/p934a.gif" alt="Overlapping Areas" width="452" height="369" />

A encrenca consiste, resumidamente, em determinar a soma das áreas das regiões em que há maior sobreposição de retângulos. No exemplo acima, teríamos que somar a área batizada de "E3" com a "G3".

A nossa discussão foi mais longa do que as que temos usualmente. O Yoshi surgiu com uma boa idéia para resolvermos o problema. Depois de algumas explicações e um debate, a Mari nos explicou um algoritmo, usado no <a title="Projetos AgilCoop" href="http://www.agilcoop.org.br/portal/projetosDeSoftware" target="_blank">Archimedes</a>, que chamamos de "Scan Line". Misturamos as idéias do Yoshi, o algoritmo da Mari, os pitacos de todo mundo e conseguimos a nossa lista de atividades para serem feitas:

<em><strong>ToDo List:</strong></em>

- Estrutura de Dados para armazenar os retâgulos

- Ordenar os retângulos pelo eixo x (varrer coordenadas 'x' dos retângulos)

- Guardar os retângulos que cruzam a linha de varredura

- Calcular quantos retângulos interessam e guardar o máximo.

- Calcular a área

Hora de codar: começamos a implementar o que havíamos discutido e as idéias e observações interessantes não pararam de se manifestar. O andamento das coisas estava tão envolvente que quase não percebemos a chegada da retrospectiva.
<h3>Retrospectiva (em resumo)</h3>
<em>O que podemos melhorar?</em>

- O problema era longo. Só conseguimos chegar ao segundo item da nossa lista de atividades e, ainda assim, não foi possível resolver um problema com a função QSort.

- Gastamos muito tempo na discussão do problema e tivemos pouco tempo para codar (embora tenhamos conseguido fazer o rodízio de todos os participantes).

- Um teste falhando deixou todo mundo com uma pulga atrás da orelha. Todos estávamos curiosos para entender o comportamento inesperado quando o gongo da retrospectiva tocou.

- Precisamos ser mais pontuais. A sessão começou às 20:20, quando deveria ter sido iniciada às 20:00.

<em>O que foi legal?</em>

- Muitas pessoas gostaram do problema. Tecemos elogios às discussões surgidas, aos desenhos e à dinâmica que a sessão teve com um problema diferente. Nos divertimos.

- A Dojo Unit não dá mais problema de make. A nossa biblioteca de testes está ficando bem legal.

- A sessão foi dinâmica, estamos percebendo que está ficando mais rápido de codar (os 7 minutos estão sendo respeitados)

- Gostamos de aprender a respeito do "Scan Line"

- Elogios à função QSort do C

- Bastantes pessoas, o que significa que o Dojo de quarta continua. Esta discussão surgiu por conta do Dojo que agora também acontece aos <a title="Dojo de Sábado" href="http://groups.google.com/group/dojo_sp/browse_thread/thread/435e6f5d051a7960?hl=pt-BR" target="_blank">sábados</a>.

- SSH not so safe no Debian :)

<em>Encafifamentos</em>

Durante a pizza, discutimos alguns assuntos:

- Não devemos fazer testes para evitar erros conhecidos? Em alguns momentos forçamos o teste. Qual o seu propósito? Os testes pegam erros não previstos.

- Conversamos sobre a Dojo Unit, que agora está com as features implementadas pelo Hugo.

- Novamente falamos a respeito da questão "terminar a resolução do problema ou focar nas discussões, na melhor implementação, nas práticas do Dojo, etc".

- Por fim, falamos um pouco sobre as diferenças entre TDD e BDD.

Bom, depois desta sessão empolgante, acho que podemos dizer que o predador no aquário realmente aumentou a nossa motivação. Até a próxima, portanto!!!
