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
	<li><strong>Código fonte:</strong> http://dojo_sp.googlegroups.com/web/03SAB-ProdutoEscalarTree.tar.gz</li>
	<li><strong>Fotos:</strong> http://picasaweb.google.com/fabriciosn/DojoSabado2106</li>
</ul>
Como era a primeira participação da Jac no Dojo de sábado o Fabs fez uma introdução sobre Erlang, a linguagem que esta sendo utilizada no Dojo. Depois sorteamos a carta de criatividade "Conform", discutiusse que a idéia não era ficar conformado, mas agir de acordo, conforme o combinado.

Os problemas propostos foram multiplicação de matrizes e produto escalar.

A idéia inicial era tentar implementar a multiplicação de matrizes, mas como a linguagem não era muito conhecida pelos participantes, o problema de produto escalar foi votado para ser resolvido novamente.

Foi implementada a ideia discutida no último dojo, criar uma árvore binária em que as folhas realizassem a multiplicação de 2 elementos dos vetores de entrada e a cada raiz de uma subarvore soma-se suas folhas e a raiz da árvore somasse os seus filhos.
<h3>Retrospectiva</h3>
<h4>Coisas Legais:</h4>
<ol>
	<li>As pessoas gostaram de resolver o problema utilizando a característica de paralelismo da linguagem</li>
	<li>Há interessados em entender e explorar um pouco mais a característica de paralelismo da linguagem</li>
	<li>Descobrimos que a biblioteca já possuia uma 	implementação de lista e utilizamos o <code>split</code> da biblioteca</li>
	<li>As pessoas gostaram de utilizar inlined receives</li>
	<li>O problema foi resolvido com folga de horário</li>
</ol>
<strong>Curiosidades de sintaxes:</strong>
<ul>
	<li><strong>lists</strong>: -&gt; importar lib de lista</li>
	<li>round -&gt; arredondamento</li>
	<li>split -&gt; importar lib de lista</li>
</ul>
<h4>Coisas não legais:</h4>
<ol>
	<li><code>If</code> apresenta uma sintaxe estranha</li>
	<li>Não soubemos fazer divisão inteira e tivemos que utilizar o round</li>
	<li>Tivemos pouca gente</li>
	<li>Como acabamos cedo podiamos ter feio mais coisas, mas paramos de codar</li>
	<li>O dojo começou atrasado</li>
	<li>Alguns acham que o poderiamos começar um pouco mais tarde</li>
	<li>Não se sabe onde vão parar os erros do spawn</li>
</ol>
<h4>Parking Lot:</h4>
<ul>
	<li>Como rodar o programa em várias máquinas?</li>
	<li>Como realizar uma divisão inteira?</li>
	<li>Porque aparece um erro de crash dump e o programa roda?</li>
	<li>Os testes são escritos por macros. Como resolver este problema para utilizarmos variáveis?</li>
	<li><code>?_assert</code>: Porque o teste inicia com ?</li>
	<li>Discutiu-se a diferença entre [A,B] eÂ  {A,B}</li>
	<li>Verificar a ordem de chegada das mensagens, com o disparo de processos que 	demandem tempos aleatórios</li>
	<li>Idéias de problemas: WebServer e Celular</li>
</ul>
