--- 
wordpress_id: 7
layout: post
title: Dojo 53 - map e filter em Haskell
date: 2008-11-13 07:00:24 -02:00
wordpress_url: http://www.dojosp.epistemol.net/?p=27
---
<ul>
	<li><strong>Data</strong>: 29/09/2008</li>
	<li><strong>Participantes</strong>: Hugo, R, João, Mari, Thiago, Yoshi, Breno</li>
	<li><strong>Problema</strong>: <a href="http://en.wikipedia.org/wiki/Map_(higher-order_function)">map</a>, <a href="http://en.wikipedia.org/wiki/Filter_(higher-order_function)">filter</a> e <a href="http://en.wikipedia.org/wiki/Foldl">foldr</a> em Haskell com HUnit (cuidado! Links da Wikipedia mostram implementação!)</li>
	<li><strong>Código</strong>: http://github.com/dojosp/participant-s-projects/tree/master/53-haskell-basico</li>
</ul>
Decidimos finalmente tentar implementar as clássicas funções <code>map</code>, <code>filter</code> e <code>foldr</code> em Haskell. Cada uma deve fazer o seguinte:<!--more-->
<ul>
	<li><strong>map</strong>: recebe como parâmetros uma função unária (apenas um parâmetro) e uma lista, e devolve uma lista que é resultado de aplicar a função a cada elemento da lista passada como parâmetro. Por exemplo:
<code>map (+ 5) [2 0 4]</code> devolve <code>[7 5 9]</code></li>
	<li><strong>filter</strong>: recebe como parâmetros um predicado (função unária que devolve True ou False) e uma lista, e devolve uma lista com os elementos da lista original que satisfazem o predicado (resposta True). Por exemplo:
<code>filter even [1 2 3 6 5]</code> devolve <code>[2 6]</code></li>
	<li><strong>foldr</strong>: essa é mais complicadinha, e nem começamos a fazê-la, então nem vou explicar muito =P. Começando com um exemplo:
<code>foldr (+) 0 [1 2 3]</code> devolve <code>6</code>, que é a soma dos elementos da lista. Então, o foldr recebe uma fuinção binária (com dois parâmetros), um elemento "base" (0 no exemplo) e uma lista, e devolve o resultado de usar a função para "juntar" todos os elementos da lista.</li>
</ul>
<h3>Codando</h3>
Começamos pelo <code>map</code> que parecia mais fácil. O código cresceu num ritmo acelerado e bom (ou seja todos estavam acompanhando). Apesar de algumas dificuldades com as mensagens de erro, conseguimos contorná-las e terminar o <code>map</code>.

Em seguida atacamos o <code>filter</code>, no mesmo ritmo. Terminamos de implementar no horário, e decidimos não começar o <code>foldr</code>. :-)
<h3>Retrospectiva</h3>
Reclamamos:
<ul>
	<li>Dos atrasos</li>
	<li>De não filmar a sessão (para quem quer conhecer)</li>
	<li>De não conseguirmos fazer commit no repositório remoto durante a reunião (o git estava dando um erro bizarro que ninguém conhecia)</li>
	<li>De erros do compilador Haskell que não entendemos (fomos forçados a declarar o tipo das funções para contorná-los)</li>
	<li>De problemas com o editor</li>
</ul>
E mais:
<ul>
	<li>O <code>foldr</code> não parece tão fácil quanto os outros</li>
	<li>Queremos aprender a implementação do <code>even</code> (verifica se um número é par)</li>
	<li>Queremos entender a diferença entre <code>~=?</code> e <code>==</code></li>
</ul>
Por outro lado, aprendemos:
<ul>
	<li><code>:t coisa</code> diz o tipo de coisa (no interpretador)</li>
	<li>a definir tipo de funções que recebem funções como parâmetro</li>
	<li><a href="http://en.wikipedia.org/wiki/Currying">currying</a>, ou seja, funções parciais "automáticas"</li>
	<li>o que é pattern matching e pattern overlapping</li>
	<li><code>import Char</code> traz funções como <code>isLower</code></li>
	<li><code>otherwise</code>, uma palavra chave, é um <em>alias</em> para <code>True</code> - para alguns isso cheira a <em>hack</em>, para outros é açúcar sintático :-P</li>
</ul>
Além disso, gostamos:
<ul>
	<li>que Haskell continua legal e está mais intuitivo</li>
	<li>que tivemos pessoas novas</li>
	<li>que terminamos <code>map</code> e <code>filter</code></li>
	<li>que tivemos um ritmo bom e acelerado</li>
</ul>
No parking lot, discutimos os temas:
<ul>
	<li>Não explicamos dojo pro novato</li>
	<li>Pq precisamos indicar os tipos? (o que são os erros bizarros?)</li>
	<li>O que é "Char.isLower" ? Método? Tem algo a ver com P.O.O.?</li>
	<li>O main é uma função??</li>
</ul>
<em>ps: Buscando links pra colocar neste artigo, descobri que existiu um cara chamado <a href="http://en.wikipedia.org/wiki/Haskell_Curry">Haskell Curry</a>, matemático e lógico norte-americano....</em>
