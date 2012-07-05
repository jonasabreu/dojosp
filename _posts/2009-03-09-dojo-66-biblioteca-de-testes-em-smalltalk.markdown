--- 
wordpress_id: 76
layout: post
title: Dojo 66 - Biblioteca de testes em Smalltalk
date: 2009-03-09 09:06:10 -03:00
wordpress_url: http://www.dojosp.org/?p=76
---
<ul>
	<li><strong>Data:</strong> 02/03/2009</li>
	<li><strong>Participantes:</strong> Mari, Hugo, Yoshi, Fabricio, Thiago, Lucas, Jorge, Rafael, Breno, Ettore, Adolfo, Gianluca</li>
	<li><strong>Problema:</strong> Biblioteca de testes estilo "BDD" em <a href="http://www.squeak.org">Smalltalk (Squeak)</a></li>
	<li><strong>Código:</strong> <a href="http://github.com/dojosp/participant-s-projects/tree/master/66-SmalltalkBDD">no github</a></li>
</ul>
Insatisfeitos com o SUnit, escolhemos brincar de escrever uma biblioteca de testes mais ao estilo RSpec do Ruby, em Smalltalk. Começamos discutindo as possíveis sintaxes, decidindo por algo como:
<pre>(1 = 1) should: #beTrue
1 should: #= to: 1</pre>
A implementação foi rolando na classe Object mesmo, em uma categoria especial que adicionamos.
<h3>Retrospectiva</h3>
Do ruim:
<ul>
	<li>Problema muito difícil para o conhecimento coletivo do dojo</li>
	<li>SUnit não tem muitos recursos</li>
	<li>A linguagem não tem guru de verdade, ficamos um pouco travados</li>
	<li>Confundimos: testes, linguagem, ambiente - uma bagunça</li>
	<li>Post-its amarelos pequenininhos</li>
	<li>Muita conversa no vermelho: tava difícil?</li>
	<li>Sintaxe Smalltalk: mais de um argumento exige que tenha palavra entre os argumentos</li>
	<li>True é classe, true é singleton, otherwise não é true</li>
	<li>Não tem substring (ou não achamos)</li>
	<li>Faz tempo que não tem post no blog :-( ==&gt; resolvido!</li>
</ul>
Do bom:
<ul>
	<li>Squeak é igual à mãe do Fabs</li>
	<li>Muita novidade</li>
	<li>Terminamos com testes passando - malandramente, mas passando</li>
	<li>Method finder é da hora</li>
	<li>Save method WITH STYLE :-)</li>
	<li>nil</li>
	<li>Reflexão: "perform: #bla with: arg"</li>
	<li>Smalltalk é legal, apesar de estranho</li>
	<li>Symbol é String</li>
	<li>Solução de bem poucas linhas</li>
	<li>Pessoas novas, bastante gente</li>
	<li>Dojo continua muito legal (OBAA! XD)</li>
</ul>
Das discussões que rolaram durante e depois:
<ul>
	<li>Por algum motivo o ambiente do Squeak lembrou o Fabricio do projeto <a href="http://www.alice.org/">Alice - aprendendo a programar em Java</a>, no qual você escreve programas que controlam bonequinhos 3D para aprender a linguagem.</li>
	<li>Discutimos "<a href="http://en.wikipedia.org/wiki/Monkey_patch">Monkey patch</a>", ou seja, como colocar métodos no Object sem mudar o projeto Kernel do Squeak. Discutimos o conceito, mas não sabemos como fazer isso em Smalltalk, por isso adotamos a solução mais feia, que foi modificar o Kernel mesmo.</li>
	<li>Colocamos o método "should" no Object... ele deveria existir APENAS quando executando testes. Em produção, uma chamada a "should" deveria idealmente não ser reconhecida.</li>
	<li>Existe vida além do SUnit! Com um pouco de pesquisa, o Hugo acho o projeto <a href="http://www.squeaksource.com/SSpec.html">SSpec</a> que parece ser uma biblioteca de testes mais no estilo do que a gente queria. Legal! Como será a solução deles?</li>
</ul>
