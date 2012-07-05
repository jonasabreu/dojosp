--- 
wordpress_id: 29
layout: post
title: "Dojo 54: Dominando Entrada e Sa\xC3\x83\xC2\xADda padr\xC3\x83\xC2\xA3o no Haskell"
date: 2008-10-09 17:02:56 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=30
---
<ul>
	<li><strong>Data</strong>: 06/10/2008</li>
	<li><strong>Participantes</strong>: Thiago, Hugo, Mari, Leo, Jac</li>
	<li><strong>Randori</strong>: <a title="3n+1" href="http://acm.uva.es/p/v1/100.html">The 3n+1 problem</a>. Utilizamos Haskell com HUnit.</li>
	<li><strong>Carta de criatividade:</strong> â€œFight for itâ€</li>
	<li><strong>Código</strong>: <a href="http://github.com/dojosp/participant-s-projects/tree/master/54-stdin-haskell">http://github.com/dojosp/participant-s-projects/tree/master/54-stdin-haskell</a></li>
</ul>
Escolhemos um problema simples para, na verdade, aprender a ler da entrada padrão e escrever na saída padrão com Haskell.

<!--more-->
<h3>Codando</h3>
O dojo começou tarde, em parte pela falta de quorum, em parte pela indecisão sobre qual problema deveríamos resolver, já que a vontade do pessoal era aprender IO padrão em Haskell.

Usando TDD e Baby Steps rapidamente convergimos em uma solução algorítmica primeiro para calcular o "próximo passo" do algoritmo 3n+1 e logo em seguida para calcular o "comprimento do ciclo" da convergência do algoritmo 3n+1 para 1. Fizemos isso sem necessitar efetivamente calcular a seqüência da convergência do algoritmo.

Após isso, ainda usando TDD, aprendemos a usar "span", "read", "fst" e "snd" no haskell para transformar uma string como "3 5" em dois valores inteiros distintos para usarmos nas funções previamente desenvolvidas.

Finalmente, como não pudemos pensar em uma maneira rápida de simular entrada e saída padrão, abandonamos TDD para construir a parte do programa que lia os dados da entrada padrão e escrevia na saída padrão de acordo com o formato especificado no problema. Nesta parte aprendemos sobre "hSetBuffering", "getLine", "putStr", "putStrLn" e, principalmente, "do". Este último permite a um programa haskell executar uma seqüência imperativa de comandos. Como não descobrimos rapidamente uma maneira de não ler a entrada padrão quando não há mais nada para ler, nosso programa termina com uma mensagem incômoda, mas apenas na saída de erro, o que, para propósitos práticos, significa que nosso programa cumpre com sucesso o objetivo do problema como específicado.

Além disso, como não sabemos fazer laços em haskell (se é que é possível), nosso programa chama recursivamente a si mesmo para cada linha da entrada o que concluímos ser deliciosamente maligno, mas também correto do ponto de vista de utilizar uma linguagem funcional.

Também concluímos que os criadores da linguagem Haskell não gostam de vogais.
<h3>Retrospectiva</h3>
A satisfação com a conclusão do problema e dos nossos objetivos para o dia praticamente dominou a restrospectiva.

Pontos positivos citados, além da conclusão em tempo do problema:
<ul>
	<li>git rolando, com "push" fácil via configuração da origem.</li>
	<li>manipulação de IO padrão (com direito a piada ruim com o Instituto Oceanográfico)</li>
	<li>"cd -" (alternar para o último diretório em shell)</li>
	<li>operador binário booleano, quando usado sem o primeiro parâmetro, funciona como um predicado (função de 1 parâmetro que retorna booleano), e pode ser passado como parâmetro para funções que esperam predicados.</li>
	<li>aprendizado do "do"</li>
	<li>aprendizado do "span"</li>
	<li>"main" recursivo do mal/bem</li>
	<li>aprendizado das funções "read" (converte string em tipo primitivo) e seu oposto "show"</li>
	<li>constatação de que dojo com pouca gente também é legal.</li>
</ul>
Pontos negativos citados
<ul>
	<li>pouca gente</li>
	<li>ainda não gravamos um dojo</li>
	<li>não sabemos tratar exceções no Haskell</li>
	<li>nem parar de ler a entrada quando ela acaba</li>
	<li>"span" é legal mas não é "split". Ainda queremos descobrir como obter uma lista com vários elementos a partir de uma <em>string</em>.</li>
	<li>git reclama quando tem whitespace no fim das linhas</li>
	<li>não temos problemas para resolver na semana que vem</li>
	<li>pessoas na platéia usando o computador.</li>
</ul>
Curiosamente, não tivemos discussões para o <em>Parking Lot</em>. Talvez porque os post-its brancos não estivessem à mão :-)
