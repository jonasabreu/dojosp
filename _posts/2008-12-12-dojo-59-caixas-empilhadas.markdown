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
	<li><strong>CÃ³digo</strong>: http://github.com/dojosp/participant-s-projects/commits/master/59-pile-of-boxes</li>
</ul>
<h3>Problemas</h3>
Os problemas sugeridos foram:
<ul>
	<li><strong>Caixas empilhadas:</strong> Dadas as dimensÃµes de altura e largura de uma 	caixa com abertura no topo devemos empilhar as caixas. Se uma caixa 	menor for colocada em cima de uma caixa maior, a menor estarÃ¡ 	dentro da maior e a altura final da pilha Ã© a altura da caixa 	maior.Se a caixa maior for colocada em cima da caixa menor, a altura final Ã© a soma das alturas.</li>
	<li><strong>Entertainment:</strong> Dada uma tabela de elementos char e uma posiÃ§Ã£o da 	tabela que nÃ£o seja um espaÃ§o em branco. Deve-se encontar os elementos identicos adjacentes recursivamente ao elemento escolhido e troca-los por espaÃ§os em branco. Depois de substituidos, os elementos restantes devem ser movidos para esquerda enquanto os espaÃ§os em branco sÃ£o deslocados 	para direita e posteriormente devem ser deslocados para baixo enquanto os espaÃ§os em branco sÃ£o deslocados para cima.</li>
	<li><strong>Magnetics:</strong> Dado um ponto com sua regiÃ£o de atraÃ§Ã£o, verificar se quando um clique for dado o clique pertence a regiÃ£o 	de atraÃ§Ã£o do ponto e tambÃ©m verificar a distÃ¢ncia mÃ­nima entre dois pontos. (Este problema estÃ¡ perto de se tornar o novo little bishops!!)</li>
</ul>
Entre os problemas sugeridos, o problema das caixas empilhadas foi o escolhido por ser o mais votado.

<!--more-->
<h3>Codando</h3>
Foi feita uma ToDo List para discutir o <em>approach</em> de como armazenar as entradas, descobrir a altura final da pilha e saber se uma caixa estava dentro de outra.

Durante a discussÃ£o conversamos muito mais sobre como obter a soluÃ§Ã£o do que como encaminhar a soluÃ§Ã£o! Surgiram questionamentos posteriores sobre a utilidade da Todo List e atÃ© que ponto uma ToDo List Ã© necessÃ¡ria? A partir de quando ela comeÃ§a a atrapalhar a soluÃ§Ã£o do problema?

Durante a implementaÃ§Ã£o conseguimos definir o tamanho de uma caixa e quando passamos a nos preocupar em como empilhar as caixa surgiram os problemas. Tentamos empilhar as caixas mas nÃ£o conseguimos muitos sucesso. Patinamos por um bom tempo atÃ© que resolvemos fazer uma parada no meio da reuniÃ£o para entender quais eram as dificuldades.

Percebemos que tinhamos alguns problemas para passagem de argumentos, confusÃµes do interpretador e depois da discussÃ£o resolvemos ignorar o metodo empilha por nÃ£o apresentar um comportamento definido.

Quando retomamos a implementaÃ§Ã£o tinhamos definido novas funcionalidades do problema, como pedestal e o mÃ©todo junta, que deveria juntar ou 2 caixas, ou 1 caixa hÃ¡ um pedestal.
No final da sessÃ£o acabamos conseguindo fazer o junta se comportar de forma recursiva, mas nÃ£o chegamos na soluÃ§Ã£o!

A carta da criatividade nÃ£o paraceu muito Ãºtil nesse problema e algumas pessoas chegaram um pouco mais atrasadas por causa do <em>geocaching</em>.
<h3>Retrospectiva</h3>
Pontos positivos :-)
<ul>
	<li><em>Commit</em> a cada passo</li>
	<li>Pausa no meio da reuniÃ£o foi muito importante</li>
	<li>Aprendemos novas caracteristicas/funcionalidades da linguagem</li>
	<li>Durante uma refatoraÃ§Ã£o acabamos perdendo uma implementaÃ§Ã£o bem interessante do either e do otherwise</li>
	<li>Algumas sugestÃµes interessantes de como melhorar o ambiente</li>
	<li>Alguns sugeriram de tentar fazer um <em>geocaching</em> junto com o dojo</li>
</ul>
Pontos negativos :-(
<ul>
	<li>Questionamentos sobre descarte de cÃ³digo inÃºtil, funcionamento da Box Recursiva</li>
	<li>NÃ£o existe infinite test para Haskell</li>
	<li>ComplicaÃ§Ãµes da linguagem e muito computador paralelo</li>
	<li>Comida chegou MUITO cedo!</li>
</ul>
Parking Lot:
<ul>
	<li>SugestÃ£o de realizar o dojo de natal num restaurante no formato Uber Dojo!</li>
</ul>
