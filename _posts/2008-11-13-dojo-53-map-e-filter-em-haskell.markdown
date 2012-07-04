--- 
wordpress_id: 7
layout: post
title: Dojo 53 - map e filter em Haskell
date: 2008-11-13 07:00:24 -02:00
wordpress_url: http://www.dojosp.epistemol.net/?p=27
---
<ul>
	<li><strong>Data</strong>: 29/09/2008</li>
	<li><strong>Participantes</strong>: Hugo, R, JoÃ£o, Mari, Thiago, Yoshi, Breno</li>
	<li><strong>Problema</strong>: <a href="http://en.wikipedia.org/wiki/Map_(higher-order_function)">map</a>, <a href="http://en.wikipedia.org/wiki/Filter_(higher-order_function)">filter</a> e <a href="http://en.wikipedia.org/wiki/Foldl">foldr</a> em Haskell com HUnit (cuidado! Links da Wikipedia mostram implementaÃ§Ã£o!)</li>
	<li><strong>CÃ³digo</strong>: http://github.com/dojosp/participant-s-projects/tree/master/53-haskell-basico</li>
</ul>
Decidimos finalmente tentar implementar as clÃ¡ssicas funÃ§Ãµes <code>map</code>, <code>filter</code> e <code>foldr</code> em Haskell. Cada uma deve fazer o seguinte:<!--more-->
<ul>
	<li><strong>map</strong>: recebe como parÃ¢metros uma funÃ§Ã£o unÃ¡ria (apenas um parÃ¢metro) e uma lista, e devolve uma lista que Ã© resultado de aplicar a funÃ§Ã£o a cada elemento da lista passada como parÃ¢metro. Por exemplo:
<code>map (+ 5) [2 0 4]</code> devolve <code>[7 5 9]</code></li>
	<li><strong>filter</strong>: recebe como parÃ¢metros um predicado (funÃ§Ã£o unÃ¡ria que devolve True ou False) e uma lista, e devolve uma lista com os elementos da lista original que satisfazem o predicado (resposta True). Por exemplo:
<code>filter even [1 2 3 6 5]</code> devolve <code>[2 6]</code></li>
	<li><strong>foldr</strong>: essa Ã© mais complicadinha, e nem comeÃ§amos a fazÃª-la, entÃ£o nem vou explicar muito =P. ComeÃ§ando com um exemplo:
<code>foldr (+) 0 [1 2 3]</code> devolve <code>6</code>, que Ã© a soma dos elementos da lista. EntÃ£o, o foldr recebe uma fuinÃ§Ã£o binÃ¡ria (com dois parÃ¢metros), um elemento "base" (0 no exemplo) e uma lista, e devolve o resultado de usar a funÃ§Ã£o para "juntar" todos os elementos da lista.</li>
</ul>
<h3>Codando</h3>
ComeÃ§amos pelo <code>map</code> que parecia mais fÃ¡cil. O cÃ³digo cresceu num ritmo acelerado e bom (ou seja todos estavam acompanhando). Apesar de algumas dificuldades com as mensagens de erro, conseguimos contornÃ¡-las e terminar o <code>map</code>.

Em seguida atacamos o <code>filter</code>, no mesmo ritmo. Terminamos de implementar no horÃ¡rio, e decidimos nÃ£o comeÃ§ar o <code>foldr</code>. :-)
<h3>Retrospectiva</h3>
Reclamamos:
<ul>
	<li>Dos atrasos</li>
	<li>De nÃ£o filmar a sessÃ£o (para quem quer conhecer)</li>
	<li>De nÃ£o conseguirmos fazer commit no repositÃ³rio remoto durante a reuniÃ£o (o git estava dando um erro bizarro que ninguÃ©m conhecia)</li>
	<li>De erros do compilador Haskell que nÃ£o entendemos (fomos forÃ§ados a declarar o tipo das funÃ§Ãµes para contornÃ¡-los)</li>
	<li>De problemas com o editor</li>
</ul>
E mais:
<ul>
	<li>O <code>foldr</code> nÃ£o parece tÃ£o fÃ¡cil quanto os outros</li>
	<li>Queremos aprender a implementaÃ§Ã£o do <code>even</code> (verifica se um nÃºmero Ã© par)</li>
	<li>Queremos entender a diferenÃ§a entre <code>~=?</code> e <code>==</code></li>
</ul>
Por outro lado, aprendemos:
<ul>
	<li><code>:t coisa</code> diz o tipo de coisa (no interpretador)</li>
	<li>a definir tipo de funÃ§Ãµes que recebem funÃ§Ãµes como parÃ¢metro</li>
	<li><a href="http://en.wikipedia.org/wiki/Currying">currying</a>, ou seja, funÃ§Ãµes parciais "automÃ¡ticas"</li>
	<li>o que Ã© pattern matching e pattern overlapping</li>
	<li><code>import Char</code> traz funÃ§Ãµes como <code>isLower</code></li>
	<li><code>otherwise</code>, uma palavra chave, Ã© um <em>alias</em> para <code>True</code> - para alguns isso cheira a <em>hack</em>, para outros Ã© aÃ§Ãºcar sintÃ¡tico :-P</li>
</ul>
AlÃ©m disso, gostamos:
<ul>
	<li>que Haskell continua legal e estÃ¡ mais intuitivo</li>
	<li>que tivemos pessoas novas</li>
	<li>que terminamos <code>map</code> e <code>filter</code></li>
	<li>que tivemos um ritmo bom e acelerado</li>
</ul>
No parking lot, discutimos os temas:
<ul>
	<li>NÃ£o explicamos dojo pro novato</li>
	<li>Pq precisamos indicar os tipos? (o que sÃ£o os erros bizarros?)</li>
	<li>O que Ã© "Char.isLower" ? MÃ©todo? Tem algo a ver com P.O.O.?</li>
	<li>O main Ã© uma funÃ§Ã£o??</li>
</ul>
<em>ps: Buscando links pra colocar neste artigo, descobri que existiu um cara chamado <a href="http://en.wikipedia.org/wiki/Haskell_Curry">Haskell Curry</a>, matemÃ¡tico e lÃ³gico norte-americano....</em>
