--- 
wordpress_id: 56
layout: post
title: Dojo 59 - Caixas empilhadas
date: 2008-12-12 05:31:28 -02:00
wordpress_url: http://www.dojosp.org/?p=56
---
<p style="text-align: center;"><em>Relato escrito pela Jac - obrigada, Jac!</em></p>

<ul>
	<li><strong>Data</strong>: 01/12/2008</li>
	<li><strong>Participantes</strong>: Marcelo, Pedro, Thiago, Hugo, Mari, Jac, R, Aline, Bruno Gola</li>
	<li><strong>Randori</strong>: Problema das Caixas Empilhadas (adaptado de <a href="http://online-judge.uva.es/problemset/v9/946.html">Pile of Boxes</a>). Utilizamos Haskell com HUnit.</li>
	<li><strong>Carta de criatividade:</strong> "Listen your dreams"</li>
	<li><strong>Código</strong>: http://github.com/dojosp/participant-s-projects/commits/master/59-pile-of-boxes</li>
</ul>
<h3>Problemas</h3>
Os problemas sugeridos foram:
<ul>
	<li><strong>Caixas empilhadas:</strong> Dadas as dimensões de altura e largura de uma 	caixa com abertura no topo devemos empilhar as caixas. Se uma caixa 	menor for colocada em cima de uma caixa maior, a menor estará 	dentro da maior e a altura final da pilha é a altura da caixa 	maior.Se a caixa maior for colocada em cima da caixa menor, a altura final é a soma das alturas.</li>
	<li><strong>Entertainment:</strong> Dada uma tabela de elementos char e uma posição da 	tabela que não seja um espaço em branco. Deve-se encontar os elementos identicos adjacentes recursivamente ao elemento escolhido e troca-los por espaços em branco. Depois de substituidos, os elementos restantes devem ser movidos para esquerda enquanto os espaços em branco são deslocados 	para direita e posteriormente devem ser deslocados para baixo enquanto os espaços em branco são deslocados para cima.</li>
	<li><strong>Magnetics:</strong> Dado um ponto com sua região de atração, verificar se quando um clique for dado o clique pertence a região 	de atração do ponto e também verificar a distância mínima entre dois pontos. (Este problema está perto de se tornar o novo little bishops!!)</li>
</ul>
Entre os problemas sugeridos, o problema das caixas empilhadas foi o escolhido por ser o mais votado.

<!--more-->
<h3>Codando</h3>
Foi feita uma ToDo List para discutir o <em>approach</em> de como armazenar as entradas, descobrir a altura final da pilha e saber se uma caixa estava dentro de outra.

Durante a discussão conversamos muito mais sobre como obter a solução do que como encaminhar a solução! Surgiram questionamentos posteriores sobre a utilidade da Todo List e até que ponto uma ToDo List é necessária? A partir de quando ela começa a atrapalhar a solução do problema?

Durante a implementação conseguimos definir o tamanho de uma caixa e quando passamos a nos preocupar em como empilhar as caixa surgiram os problemas. Tentamos empilhar as caixas mas não conseguimos muitos sucesso. Patinamos por um bom tempo até que resolvemos fazer uma parada no meio da reunião para entender quais eram as dificuldades.

Percebemos que tinhamos alguns problemas para passagem de argumentos, confusões do interpretador e depois da discussão resolvemos ignorar o metodo empilha por não apresentar um comportamento definido.

Quando retomamos a implementação tinhamos definido novas funcionalidades do problema, como pedestal e o método junta, que deveria juntar ou 2 caixas, ou 1 caixa há um pedestal.
No final da sessão acabamos conseguindo fazer o junta se comportar de forma recursiva, mas não chegamos na solução!

A carta da criatividade não paraceu muito útil nesse problema e algumas pessoas chegaram um pouco mais atrasadas por causa do <em>geocaching</em>.
<h3>Retrospectiva</h3>
Pontos positivos :-)
<ul>
	<li><em>Commit</em> a cada passo</li>
	<li>Pausa no meio da reunião foi muito importante</li>
	<li>Aprendemos novas caracteristicas/funcionalidades da linguagem</li>
	<li>Durante uma refatoração acabamos perdendo uma implementação bem interessante do either e do otherwise</li>
	<li>Algumas sugestões interessantes de como melhorar o ambiente</li>
	<li>Alguns sugeriram de tentar fazer um <em>geocaching</em> junto com o dojo</li>
</ul>
Pontos negativos :-(
<ul>
	<li>Questionamentos sobre descarte de código inútil, funcionamento da Box Recursiva</li>
	<li>Não existe infinite test para Haskell</li>
	<li>Complicações da linguagem e muito computador paralelo</li>
	<li>Comida chegou MUITO cedo!</li>
</ul>
Parking Lot:
<ul>
	<li>Sugestão de realizar o dojo de natal num restaurante no formato Uber Dojo!</li>
</ul>
