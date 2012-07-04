--- 
wordpress_id: 21
layout: post
title: "Dojo S\xC3\x83\xC2\xA1bado 03 - Produto escalar de vetores"
date: 2008-07-02 05:14:25 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=18
---
<p style="text-align: center;"><em>Post escrito pela Jac, contribuindo como escriba pela primeira vez!</em></p>

<ul>
	<li><strong>Data:</strong> 21/06/2008</li>
	<li><strong>Participantes:</strong> Hugo, Jac, Fabs, Lucas</li>
	<li><strong>Randori:</strong> Produto escalar entre 2 vetores, em <a href="http://www.erlang.org/" target="_blank">Erlang</a> com <a href="http://svn.process-one.net/contribs/trunk/eunit/doc/overview-summary.html" target="_blank">Eunit</a></li>
	<li><strong>CÃ³digo fonte:</strong> http://dojo_sp.googlegroups.com/web/03SAB-ProdutoEscalarTree.tar.gz</li>
	<li><strong>Fotos:</strong> http://picasaweb.google.com/fabriciosn/DojoSabado2106</li>
</ul>
Como era a primeira participaÃ§Ã£o da Jac no Dojo de sÃ¡bado o Fabs fez uma introduÃ§Ã£o sobre Erlang, a linguagem que esta sendo utilizada no Dojo. Depois sorteamos a carta de criatividade "Conform", discutiusse que a idÃ©ia nÃ£o era ficar conformado, mas agir de acordo, conforme o combinado.

Os problemas propostos foram multiplicaÃ§Ã£o de matrizes e produto escalar.

A idÃ©ia inicial era tentar implementar a multiplicaÃ§Ã£o de matrizes, mas como a linguagem nÃ£o era muito conhecida pelos participantes, o problema de produto escalar foi votado para ser resolvido novamente.

Foi implementada a ideia discutida no Ãºltimo dojo, criar uma Ã¡rvore binÃ¡ria em que as folhas realizassem a multiplicaÃ§Ã£o de 2 elementos dos vetores de entrada e a cada raiz de uma subarvore soma-se suas folhas e a raiz da Ã¡rvore somasse os seus filhos.
<h3>Retrospectiva</h3>
<h4>Coisas Legais:</h4>
<ol>
	<li>As pessoas gostaram de resolver o problema utilizando a caracterÃ­stica de paralelismo da linguagem</li>
	<li>HÃ¡ interessados em entender e explorar um pouco mais a caracterÃ­stica de paralelismo da linguagem</li>
	<li>Descobrimos que a biblioteca jÃ¡ possuia uma 	implementaÃ§Ã£o de lista e utilizamos o <code>split</code> da biblioteca</li>
	<li>As pessoas gostaram de utilizar inlined receives</li>
	<li>O problema foi resolvido com folga de horÃ¡rio</li>
</ol>
<strong>Curiosidades de sintaxes:</strong>
<ul>
	<li><strong>lists</strong>: -&gt; importar lib de lista</li>
	<li>round -&gt; arredondamento</li>
	<li>split -&gt; importar lib de lista</li>
</ul>
<h4>Coisas nÃ£o legais:</h4>
<ol>
	<li><code>If</code> apresenta uma sintaxe estranha</li>
	<li>NÃ£o soubemos fazer divisÃ£o inteira e tivemos que utilizar o round</li>
	<li>Tivemos pouca gente</li>
	<li>Como acabamos cedo podiamos ter feio mais coisas, mas paramos de codar</li>
	<li>O dojo comeÃ§ou atrasado</li>
	<li>Alguns acham que o poderiamos comeÃ§ar um pouco mais tarde</li>
	<li>NÃ£o se sabe onde vÃ£o parar os erros do spawn</li>
</ol>
<h4>Parking Lot:</h4>
<ul>
	<li>Como rodar o programa em vÃ¡rias mÃ¡quinas?</li>
	<li>Como realizar uma divisÃ£o inteira?</li>
	<li>Porque aparece um erro de crash dump e o programa roda?</li>
	<li>Os testes sÃ£o escritos por macros. Como resolver este problema para utilizarmos variÃ¡veis?</li>
	<li><code>?_assert</code>: Porque o teste inicia com ?</li>
	<li>Discutiu-se a diferenÃ§a entre [A,B] eÂ  {A,B}</li>
	<li>Verificar a ordem de chegada das mensagens, com o disparo de processos que 	demandem tempos aleatÃ³rios</li>
	<li>IdÃ©ias de problemas: WebServer e Celular</li>
</ul>
