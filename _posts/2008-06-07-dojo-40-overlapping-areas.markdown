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
A sessÃ£o comeÃ§ou com o sorteio da <a title="Creative Whack Pack" href="http://www.creativethink.com/whack/" target="_blank">carta</a> "Have Something at Stake". Depois da leitura da carta e de uma breve histÃ³ria de pescadores contada pelo Yoshi (embora tudo leve a crer, acho que nÃ£o era mentira), fomos Ã  tradicional votaÃ§Ã£o. Os <strong>7</strong> votos do <a title="Eternal Truths at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=869" target="_blank">Eternal Truths</a> e os <strong>3</strong> do <a title="Water Flow at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=874" target="_blank">Water Flow</a> nÃ£o foram suficientes  para vencer os <strong>8</strong> votos do <a title="Overlapping Areas at UVa" href="http://icpcres.ecs.baylor.edu/onlinejudge/index.php?option=com_onlinejudge&amp;Itemid=8&amp;category=11&amp;page=show_problem&amp;problem=875" target="_blank">Overlapping Areas</a>. Escolhido o predador pro nosso aquÃ¡rio, comeÃ§amos a discutir o problema.

<img src="http://icpcres.ecs.baylor.edu/onlinejudge/external/9/p934a.gif" alt="Overlapping Areas" width="452" height="369" />

A encrenca consiste, resumidamente, em determinar a soma das Ã¡reas das regiÃµes em que hÃ¡ maior sobreposiÃ§Ã£o de retÃ¢ngulos. No exemplo acima, terÃ­amos que somar a Ã¡rea batizada de "E3" com a "G3".

A nossa discussÃ£o foi mais longa do que as que temos usualmente. O Yoshi surgiu com uma boa idÃ©ia para resolvermos o problema. Depois de algumas explicaÃ§Ãµes e um debate, a Mari nos explicou um algoritmo, usado no <a title="Projetos AgilCoop" href="http://www.agilcoop.org.br/portal/projetosDeSoftware" target="_blank">Archimedes</a>, que chamamos de "Scan Line". Misturamos as idÃ©ias do Yoshi, o algoritmo da Mari, os pitacos de todo mundo e conseguimos a nossa lista de atividades para serem feitas:

<em><strong>ToDo List:</strong></em>

- Estrutura de Dados para armazenar os retÃ¢gulos

- Ordenar os retÃ¢ngulos pelo eixo x (varrer coordenadas 'x' dos retÃ¢ngulos)

- Guardar os retÃ¢ngulos que cruzam a linha de varredura

- Calcular quantos retÃ¢ngulos interessam e guardar o mÃ¡ximo.

- Calcular a Ã¡rea

Hora de codar: comeÃ§amos a implementar o que havÃ­amos discutido e as idÃ©ias e observaÃ§Ãµes interessantes nÃ£o pararam de se manifestar. O andamento das coisas estava tÃ£o envolvente que quase nÃ£o percebemos a chegada da retrospectiva.
<h3>Retrospectiva (em resumo)</h3>
<em>O que podemos melhorar?</em>

- O problema era longo. SÃ³ conseguimos chegar ao segundo item da nossa lista de atividades e, ainda assim, nÃ£o foi possÃ­vel resolver um problema com a funÃ§Ã£o QSort.

- Gastamos muito tempo na discussÃ£o do problema e tivemos pouco tempo para codar (embora tenhamos conseguido fazer o rodÃ­zio de todos os participantes).

- Um teste falhando deixou todo mundo com uma pulga atrÃ¡s da orelha. Todos estÃ¡vamos curiosos para entender o comportamento inesperado quando o gongo da retrospectiva tocou.

- Precisamos ser mais pontuais. A sessÃ£o comeÃ§ou Ã s 20:20, quando deveria ter sido iniciada Ã s 20:00.

<em>O que foi legal?</em>

- Muitas pessoas gostaram do problema. Tecemos elogios Ã s discussÃµes surgidas, aos desenhos e Ã  dinÃ¢mica que a sessÃ£o teve com um problema diferente. Nos divertimos.

- A Dojo Unit nÃ£o dÃ¡ mais problema de make. A nossa biblioteca de testes estÃ¡ ficando bem legal.

- A sessÃ£o foi dinÃ¢mica, estamos percebendo que estÃ¡ ficando mais rÃ¡pido de codar (os 7 minutos estÃ£o sendo respeitados)

- Gostamos de aprender a respeito do "Scan Line"

- Elogios Ã  funÃ§Ã£o QSort do C

- Bastantes pessoas, o que significa que o Dojo de quarta continua. Esta discussÃ£o surgiu por conta do Dojo que agora tambÃ©m acontece aos <a title="Dojo de SÃ¡bado" href="http://groups.google.com/group/dojo_sp/browse_thread/thread/435e6f5d051a7960?hl=pt-BR" target="_blank">sÃ¡bados</a>.

- SSH not so safe no Debian :)

<em>Encafifamentos</em>

Durante a pizza, discutimos alguns assuntos:

- NÃ£o devemos fazer testes para evitar erros conhecidos? Em alguns momentos forÃ§amos o teste. Qual o seu propÃ³sito? Os testes pegam erros nÃ£o previstos.

- Conversamos sobre a Dojo Unit, que agora estÃ¡ com as features implementadas pelo Hugo.

- Novamente falamos a respeito da questÃ£o "terminar a resoluÃ§Ã£o do problema ou focar nas discussÃµes, na melhor implementaÃ§Ã£o, nas prÃ¡ticas do Dojo, etc".

- Por fim, falamos um pouco sobre as diferenÃ§as entre TDD e BDD.

Bom, depois desta sessÃ£o empolgante, acho que podemos dizer que o predador no aquÃ¡rio realmente aumentou a nossa motivaÃ§Ã£o. AtÃ© a prÃ³xima, portanto!!!
