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
	<li><strong>CÃ³digo</strong>: <a href="http://github.com/dojosp/participant-s-projects/tree/master/54-stdin-haskell">http://github.com/dojosp/participant-s-projects/tree/master/54-stdin-haskell</a></li>
</ul>
Escolhemos um problema simples para, na verdade, aprender a ler da entrada padrÃ£o e escrever na saÃ­da padrÃ£o com Haskell.

<!--more-->
<h3>Codando</h3>
O dojo comeÃ§ou tarde, em parte pela falta de quorum, em parte pela indecisÃ£o sobre qual problema deverÃ­amos resolver, jÃ¡ que a vontade do pessoal era aprender IO padrÃ£o em Haskell.

Usando TDD e Baby Steps rapidamente convergimos em uma soluÃ§Ã£o algorÃ­tmica primeiro para calcular o "prÃ³ximo passo" do algoritmo 3n+1 e logo em seguida para calcular o "comprimento do ciclo" da convergÃªncia do algoritmo 3n+1 para 1. Fizemos isso sem necessitar efetivamente calcular a seqÃ¼Ãªncia da convergÃªncia do algoritmo.

ApÃ³s isso, ainda usando TDD, aprendemos a usar "span", "read", "fst" e "snd" no haskell para transformar uma string como "3 5" em dois valores inteiros distintos para usarmos nas funÃ§Ãµes previamente desenvolvidas.

Finalmente, como nÃ£o pudemos pensar em uma maneira rÃ¡pida de simular entrada e saÃ­da padrÃ£o, abandonamos TDD para construir a parte do programa que lia os dados da entrada padrÃ£o e escrevia na saÃ­da padrÃ£o de acordo com o formato especificado no problema. Nesta parte aprendemos sobre "hSetBuffering", "getLine", "putStr", "putStrLn" e, principalmente, "do". Este Ãºltimo permite a um programa haskell executar uma seqÃ¼Ãªncia imperativa de comandos. Como nÃ£o descobrimos rapidamente uma maneira de nÃ£o ler a entrada padrÃ£o quando nÃ£o hÃ¡ mais nada para ler, nosso programa termina com uma mensagem incÃ´moda, mas apenas na saÃ­da de erro, o que, para propÃ³sitos prÃ¡ticos, significa que nosso programa cumpre com sucesso o objetivo do problema como especÃ­ficado.

AlÃ©m disso, como nÃ£o sabemos fazer laÃ§os em haskell (se Ã© que Ã© possÃ­vel), nosso programa chama recursivamente a si mesmo para cada linha da entrada o que concluÃ­mos ser deliciosamente maligno, mas tambÃ©m correto do ponto de vista de utilizar uma linguagem funcional.

TambÃ©m concluÃ­mos que os criadores da linguagem Haskell nÃ£o gostam de vogais.
<h3>Retrospectiva</h3>
A satisfaÃ§Ã£o com a conclusÃ£o do problema e dos nossos objetivos para o dia praticamente dominou a restrospectiva.

Pontos positivos citados, alÃ©m da conclusÃ£o em tempo do problema:
<ul>
	<li>git rolando, com "push" fÃ¡cil via configuraÃ§Ã£o da origem.</li>
	<li>manipulaÃ§Ã£o de IO padrÃ£o (com direito a piada ruim com o Instituto OceanogrÃ¡fico)</li>
	<li>"cd -" (alternar para o Ãºltimo diretÃ³rio em shell)</li>
	<li>operador binÃ¡rio booleano, quando usado sem o primeiro parÃ¢metro, funciona como um predicado (funÃ§Ã£o de 1 parÃ¢metro que retorna booleano), e pode ser passado como parÃ¢metro para funÃ§Ãµes que esperam predicados.</li>
	<li>aprendizado do "do"</li>
	<li>aprendizado do "span"</li>
	<li>"main" recursivo do mal/bem</li>
	<li>aprendizado das funÃ§Ãµes "read" (converte string em tipo primitivo) e seu oposto "show"</li>
	<li>constataÃ§Ã£o de que dojo com pouca gente tambÃ©m Ã© legal.</li>
</ul>
Pontos negativos citados
<ul>
	<li>pouca gente</li>
	<li>ainda nÃ£o gravamos um dojo</li>
	<li>nÃ£o sabemos tratar exceÃ§Ãµes no Haskell</li>
	<li>nem parar de ler a entrada quando ela acaba</li>
	<li>"span" Ã© legal mas nÃ£o Ã© "split". Ainda queremos descobrir como obter uma lista com vÃ¡rios elementos a partir de uma <em>string</em>.</li>
	<li>git reclama quando tem whitespace no fim das linhas</li>
	<li>nÃ£o temos problemas para resolver na semana que vem</li>
	<li>pessoas na platÃ©ia usando o computador.</li>
</ul>
Curiosamente, nÃ£o tivemos discussÃµes para o <em>Parking Lot</em>. Talvez porque os post-its brancos nÃ£o estivessem Ã  mÃ£o :-)
