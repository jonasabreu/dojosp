--- 
wordpress_id: 17
layout: post
title: "Dojo S\xC3\x83\xC2\xA1bado 01 - Explorando Erlang"
date: 2008-06-18 17:54:25 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=14
---
<ul>
	<li><strong>Data:</strong> 07/Junho/2008</li>
	<li><span style="color: #ff0000;"><span style="color: #000000;"><strong>Participantes:</strong> Bruno, Fabricio, Helio, Lucas, Cecilia, Mariana e Hugo</span><em><strong>
</strong></em></span></li>
	<li><strong>Kata/Randori:</strong> <a href="http://en.wikipedia.org/wiki/Fibonacci_number">NÃºmeros de Fibonacci</a> e <a href="http://en.wikipedia.org/wiki/Dot_product">Produto escalar</a>, em <a href="http://www.erlang.org/">Erlang</a> com <a href="http://svn.process-one.net/contribs/trunk/eunit/doc/overview-summary.html">EUnit</a></li>
	<li><strong>CÃ³digo Fonte:</strong> http://dojo_sp.googlegroups.com/web/01SAB-introErlang.tar.gz<strong>
</strong></li>
	<li><strong>Fotos:</strong> http://picasaweb.google.com/fabriciosn/DojoSBado07062008</li>
</ul>
Na primeira ediÃ§Ã£o do Dojo de sÃ¡bado, apenas o FabrÃ­cio tinha explorado uma linguagem desconhecida, o <a href="http://www.erlang.org/">Erlang</a>. Ele nÃ£o tinha um Kata pronto, mas propÃ´s apresentar o que sabia sobre a linguagem. ComeÃ§amos bem simples, resolvendo o problema de calcular nÃºmeros de Fibonacci. Vimos um pouco de sintaxe, o bÃ¡sico da biblioteca de testes, como rodar os programas, como definir funÃ§Ãµes, entre outras coisas.

A seguir, pedimos por um exemplo mais complexo - que usasse algo listas, algum condicional ou atÃ© troca de mensagens. EntÃ£o Fabricio apresentou uma versÃ£o bem simples do produto escalar entre vetores, usando listas e troca de mensagens entre processos. A implementaÃ§Ã£o foi linear, e o grupo queria tentar uma abordagem pelo menos um pouco mais concorrente.

Discutimos um pouco as alternativas, e esboÃ§amos a <a href="http://picasaweb.google.com/fabriciosn/DojoSBado07062008/photo#5210728546615582018">"Ã¡rvore de execuÃ§Ã£o"</a> que a gente queria atingir. Na parte final do Dojo, mudamos para o formato Randori para tentar implementar uma soluÃ§Ã£o na abordagem sugerida. Mas antes de terminarmos o problema, terminou o tempo, e partimos pra retrospectiva.
<h3>Retrospectiva</h3>
<h4><em>O que foi bom:</em></h4>
<ul>
	<li>AlguÃ©m estudou uma linguagem nova, e apesar de nÃ£o ser um Kata completo. Talvez por isso, notamos que Dojo com Erlang fluiu melhor que com Lua :)</li>
	<li>O paradigma de Erlang Ã© <strong>muito</strong> diferente de tudo que jÃ¡ usamos no Dojo anteriormente. Ã‰ mais funcional e mais orientado a programas paralelos. Aprendemos um pouco sobre ambos os conceitos ao experimentar a linguagem.</li>
	<li>O formato Kata + Randori funcionou bem para uma primeira exploraÃ§Ã£o da linguagem.</li>
	<li>Tinha um bom nÃºmero de pessoas (Dojo de sÃ¡bado nÃ£o foi um fracasso :-D)</li>
</ul>
AlÃ©m disso, aprendemos:
<ul>
	<li>A <a href="http://www.erlang.org/doc/getting_started/seq_prog.html#2.5">interessante sintaxe para trabalhar com listas</a>: <code>[Primeiro | Resto] = Lista</code> separa o primeiro elemento do resto da lista</li>
	<li>A <a href="http://www.erlang.org/doc/getting_started/seq_prog.html#2.9">definiÃ§Ã£o de funÃ§Ãµes por "guard matching"</a>, ou pelo valor do parÃ¢metro recebido, como no caso do Fibonacci</li>
</ul>
<h4><em>O que atrapalhou:</em></h4>
<ul>
	<li>VÃ¡rias pessoas estavam com sono (sÃ¡bado de manhÃ£ Ã© difÃ­cil... :-P)</li>
	<li>Pouco conhecimento da linguagem atrapalha um pouco - nÃ£o entendemos os motivos de erros, e nÃ£o entendemos por que falhou o Ãºltimo teste</li>
	<li>Formato de exploraÃ§Ã£o Ã© estranho - em alguns momentos nÃ£o sabÃ­amos o que fazer a seguir</li>
	<li>Erlang nos parece estranha</li>
</ul>
<h4><em>Parking lot:</em></h4>
SÃ£o dÃºvidas que ficaram em aberto, sugestÃµes para reuniÃµes futuras, etc:
<ul>
	<li>Como rodar os programas de maneira concorrente? Como preparar um ambiente de execuÃ§Ã£o?</li>
	<li>Encontrar problemas para resolver com concorrÃªncia / problemas paralelizÃ¡veis</li>
	<li>IdÃ©ia de problema: chat em Erlang</li>
	<li>DÃ¡ pra receber mensagens em qualquer ordem?</li>
</ul>
