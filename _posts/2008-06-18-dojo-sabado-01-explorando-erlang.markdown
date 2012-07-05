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
	<li><strong>Kata/Randori:</strong> <a href="http://en.wikipedia.org/wiki/Fibonacci_number">Números de Fibonacci</a> e <a href="http://en.wikipedia.org/wiki/Dot_product">Produto escalar</a>, em <a href="http://www.erlang.org/">Erlang</a> com <a href="http://svn.process-one.net/contribs/trunk/eunit/doc/overview-summary.html">EUnit</a></li>
	<li><strong>Código Fonte:</strong> http://dojo_sp.googlegroups.com/web/01SAB-introErlang.tar.gz<strong>
</strong></li>
	<li><strong>Fotos:</strong> http://picasaweb.google.com/fabriciosn/DojoSBado07062008</li>
</ul>
Na primeira edição do Dojo de sábado, apenas o Fabrício tinha explorado uma linguagem desconhecida, o <a href="http://www.erlang.org/">Erlang</a>. Ele não tinha um Kata pronto, mas propôs apresentar o que sabia sobre a linguagem. Começamos bem simples, resolvendo o problema de calcular números de Fibonacci. Vimos um pouco de sintaxe, o básico da biblioteca de testes, como rodar os programas, como definir funções, entre outras coisas.

A seguir, pedimos por um exemplo mais complexo - que usasse algo listas, algum condicional ou até troca de mensagens. Então Fabricio apresentou uma versão bem simples do produto escalar entre vetores, usando listas e troca de mensagens entre processos. A implementação foi linear, e o grupo queria tentar uma abordagem pelo menos um pouco mais concorrente.

Discutimos um pouco as alternativas, e esboçamos a <a href="http://picasaweb.google.com/fabriciosn/DojoSBado07062008/photo#5210728546615582018">"árvore de execução"</a> que a gente queria atingir. Na parte final do Dojo, mudamos para o formato Randori para tentar implementar uma solução na abordagem sugerida. Mas antes de terminarmos o problema, terminou o tempo, e partimos pra retrospectiva.
<h3>Retrospectiva</h3>
<h4><em>O que foi bom:</em></h4>
<ul>
	<li>Alguém estudou uma linguagem nova, e apesar de não ser um Kata completo. Talvez por isso, notamos que Dojo com Erlang fluiu melhor que com Lua :)</li>
	<li>O paradigma de Erlang é <strong>muito</strong> diferente de tudo que já usamos no Dojo anteriormente. Ã‰ mais funcional e mais orientado a programas paralelos. Aprendemos um pouco sobre ambos os conceitos ao experimentar a linguagem.</li>
	<li>O formato Kata + Randori funcionou bem para uma primeira exploração da linguagem.</li>
	<li>Tinha um bom número de pessoas (Dojo de sábado não foi um fracasso :-D)</li>
</ul>
Além disso, aprendemos:
<ul>
	<li>A <a href="http://www.erlang.org/doc/getting_started/seq_prog.html#2.5">interessante sintaxe para trabalhar com listas</a>: <code>[Primeiro | Resto] = Lista</code> separa o primeiro elemento do resto da lista</li>
	<li>A <a href="http://www.erlang.org/doc/getting_started/seq_prog.html#2.9">definição de funções por "guard matching"</a>, ou pelo valor do parâmetro recebido, como no caso do Fibonacci</li>
</ul>
<h4><em>O que atrapalhou:</em></h4>
<ul>
	<li>Várias pessoas estavam com sono (sábado de manhã é difícil... :-P)</li>
	<li>Pouco conhecimento da linguagem atrapalha um pouco - não entendemos os motivos de erros, e não entendemos por que falhou o último teste</li>
	<li>Formato de exploração é estranho - em alguns momentos não sabíamos o que fazer a seguir</li>
	<li>Erlang nos parece estranha</li>
</ul>
<h4><em>Parking lot:</em></h4>
São dúvidas que ficaram em aberto, sugestões para reuniões futuras, etc:
<ul>
	<li>Como rodar os programas de maneira concorrente? Como preparar um ambiente de execução?</li>
	<li>Encontrar problemas para resolver com concorrência / problemas paralelizáveis</li>
	<li>Idéia de problema: chat em Erlang</li>
	<li>Dá pra receber mensagens em qualquer ordem?</li>
</ul>
