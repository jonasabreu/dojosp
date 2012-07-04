--- 
wordpress_id: 72
layout: post
title: Dojo 64 - Interpretador de Smalltalk em Smalltalk
date: 2009-03-09 08:39:27 -03:00
wordpress_url: http://www.dojosp.org/?p=72
---
<ul>
	<li><strong>Data:</strong> 09/02/2009</li>
	<li><strong>Participantes:</strong> Breno, Mari, Jac, Hugo, AndrÃ©, Fernando, Paulo, Ettore, Marcos, Thiago</li>
	<li><strong>Problema:</strong> Interpretador de Smalltalk em <a href="http://www.squeak.org">Smalltalk (Squeak)</a></li>
	<li><strong>CÃ³digo:</strong> <span style="color: #ff0000;">ainda nÃ£o estÃ¡ online</span></li>
</ul>
A idÃ©ia do problema era interpretar uma sequencia de comandos em Smalltalk fazendo parse do texto e tudo o mais. ComeÃ§amos com a coisa mais simples - uma atribuiÃ§Ã£o: "<code>minhaVariavel := umValor</code>". Apesar de a maioria nÃ£o saber a linguagem direito e de os que sabiam nÃ£o lembrarem direito, o cÃ³digo foi evoluindo.

<h3>Retrospectiva</h3>

Do ruim:
<ul>
	<li>AvanÃ§amos muito pouco, apesar de fazer parte do aprendizado, querÃ­amos ter avanÃ§ado mais</li>
	<li>NÃ£o usamos controle de versÃµes</li>
	<li>Falta conhecimento base em Smalltalk para aproveitar mais da sessÃ£o</li>
	<li>A falta de conhecimento tambÃ©m causa lentidÃ£o</li>
	<li>Precisamos muito do mouse pra programar no Squeak</li>
	<li>"Gurus" Smalltalk estavam enferrujados</li>
	<li>ConfusÃ£o com as janelas do Squeak, resoluÃ§Ã£o 800x600 nÃ£o ajuda, ambiente estranho para a maioria</li>
	<li>Conversa paralela e dupla falando baixo</li>
	<li>Nem sempre a lista de "ToDo's" dÃ¡ tÃ£o certo</li>
	<li>Estamos na seca se problemas</li>
</ul>
Do bom:
<ul>
	<li>MÃ©todo String &gt;&gt; findTokens do Squeak Ã© o String.split() do Java</li>
	<li>String &gt;&gt; withBlanksTrimmed</li>
	<li>Linguagem nova: Squeak Smalltalk!</li>
	<li>Aprendemos ou relembramos SUnit</li>
	<li>Pessoas novas</li>
	<li>O problema, independente da linguagem, Ã© muito interessante</li>
	<li>Foi uma sessÃ£o mais exploratÃ³ria do que de costume</li>
</ul>
Do que discutimos com a pizza:
<ul>
	<li>Squeak em produÃ§Ã£o? AplicaÃ§Ãµes do Smalltalk?</li>
	<li>Como funciona o Method Finder? Ã‰ mÃ¡gica?</li>
	<li>Que tal um "breafing" da reuniÃ£o na semana que antecede o encontro?</li>
</ul>
