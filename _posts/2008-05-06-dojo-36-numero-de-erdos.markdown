--- 
wordpress_id: 13
layout: post
title: "Dojo 36 - N\xC3\x83\xC2\xBAmero de Erdos"
date: 2008-05-06 14:12:42 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=9
---
<ul>
	<li><strong>Data:</strong> 30/Abril/2008</li>
	<li><strong>Participantes:</strong> Breno Franco, Cecilia Fernandes, Fabricio Sousa, Hugo Corbucci, Jacqueline Marchetti, Leandro Lameiro, Mariana Bravo, Yoshi</li>
	<li><strong>Randori:</strong> <a href="http://br.spoj.pl/problems/NUMERDOS">NÃºmero de Erdos</a> em C, com o Dojo Unit Test</li>
	<li><strong>Fonte:</strong> http://dojo_sp.googlegroups.com/web/36-erdos.zip</li>
</ul>
Escolhemos o problema de uma lista de 3 opÃ§Ãµes, e jÃ¡ saÃ­mos codando. Depois do primeiro turno, percebemos que faltava explicar melhor o problema e fazer a lista de "To-Dos" pois os testes estavam indo em uma direÃ§Ã£o estranha. Ok, diminuÃ­mos a velocidade e anotamos as tarefas:
<ul>
	<li>Adicionar artigo</li>
	<li>Guardar autores</li>
	<li>Guardar relaÃ§Ãµes</li>
	<li>Calcular nÃºmero de Erdos</li>
</ul>
Seguimos com a implementaÃ§Ã£o, adicionando artigos (relaÃ§Ãµes), mas guardando apenas os nomes dos autores. Tivemos dificuldades ao lidar com strings - ou melhor, <code>char*</code>'s - em C. Depois de armazenar os autores, um dos participantes sugeriu de tentar calcular o nÃºmero de Erdos com base em uma estrutura de Union-Find, evitando a necessidade de armazenar todas as relaÃ§Ãµes. Por isso, pulamos direto para a Ãºltima tarefa, mas sem discutir muito como seria essa abordagem. NÃ£o fomos muito longe, no entanto, porque o tempo acabou.
<h3><strong>Retrospectiva</strong></h3>
Para a retrospectiva, adotamos um formato diferente usando 3 cores de post-its: amarelo para "O que aprendemos?", vermelho para "O que nos atrapalhou?" e cinza para "Encafifamentos - coisas que queremos discutir". Alguns dos assuntos e pontos levantados foram:
<ul>
	<li>C com TDD esta comeÃ§ando a fluir bem</li>
	<li>O problema e a soluÃ§Ã£o proposta parecem interessantes</li>
	<li>Temos voluntÃ¡rios e interessados em organizar Dojos de sÃ¡bado (acompanhem na <a title="Dojo@SP no Google Groups" href="http://groups.google.com/group/dojo_sp">lista</a> mais sobre esse assunto)</li>
	<li>Respeitamos o turno de 7 minutos, o Dojo fica mais dinÃ¢mico</li>
	<li>Nossa conversa no vermelho: melhorou, mas pode melhorar</li>
	<li>Nosso Makefile ainda tem problemas</li>
	<li>O Dojo Test nÃ£o mostra resultado colorido e nem avisa quando todos os testes passam</li>
	<li>Em C, ainda nos faltam estruturas bÃ¡sicas como listas e mapas. Podemos usar algo pronto ou implementar as nossas prÃ³prias (essa opÃ§Ã£o parece mais legal)</li>
	<li>Tentamos evitar de lidar com char*, strings em C Ã© ruim, nÃ£o estamos acostumados</li>
	<li>Ainda nÃ£o sabemos balancear discussÃ£o e cÃ³digo, por essas e outras parece que nÃ£o chegamos na parte legal dos problemas</li>
</ul>
