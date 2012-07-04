--- 
wordpress_id: 46
layout: post
title: "Dojo 57 - Kata do Blocks "
date: 2008-11-11 07:39:54 -02:00
wordpress_url: http://www.dojosp.org/?p=46
---
<ul>
	<li><strong>Data: </strong>10/11/2008, no <a href="http://www.ime.usp.br">IME - USP</a></li>
	<li><strong>Participantes:</strong> Pedro, Thiago, Hugo, Jorge, R, Flores, Fabs, Mari, Marcelo, Bruno Gola, Renato, Carlos e Ricardo.</li>
	<li><strong>Kata</strong>: <a title="Blocks" href="http://online-judge.uva.es/p/v1/101.html" target="_blank">Blocks</a> por Mari</li>
	<li><strong>Carta da Criatividade:</strong> Experimente uma idÃ©ia aleatÃ³ria.</li>
	<li><strong>CÃ³digo</strong>: EstarÃ¡ disponÃ­vel em breve.</li>
</ul>
<h3>Warm up</h3>
Um primeiro Parking Lot que apareceu foi sobre a numeraÃ§Ã£o atual do Dojo, e acabamos por decidir que esse seria o Dojo 57. ApÃ³s isso fizemos a escolha do problema. Inicialmente houveram quatro sugestÃµes:
<ul>
	<li>Kata do <a title="Blocks" href="http://online-judge.uva.es/p/v1/101.html" target="_blank">Blocks</a></li>
	<li>Randori do <a title="Dama" href="https://br.spoj.pl/problems/DAMA/" target="_blank">Dama</a></li>
	<li>Randori do <a title="Entertainement" href="http://acmicpc-live-archive.uva.es/nuevoportal/data/problem.php?p=3547">Entertainement </a></li>
	<li>Randori do Amigo Secreto: Um programa para sortear amigos secretos com um teste de aleatoriedade.</li>
</ul>
Fizemos a votaÃ§Ã£o e o Kata ganhou. Perguntaram da onde vinha o problema Blocks, e a Mari nos disse que Ã© o segundo mais fÃ¡cil do <a href="http://online-judge.uva.es/problemset/">UVA</a> (sÃ³ perdendo para o <a title="3n+1" href="http://online-judge.uva.es/p/v1/100.html">3n+1</a>). ApÃ³s isso, sorteamos a carta da criatividade: "Experimente uma idÃ©ia aleatÃ³ria", que falava sobre um mÃ©dico indÃ­gena e estratÃ©gias aleatÃ³rias de caÃ§as.
<h3>Coding Time</h3>
Inicialmente, a Mari criou o tipo de dados bloco e um construtor. Com os testes passando, foi feita uma refatoraÃ§Ã£o para funcionar com um nÃºmero arbitrÃ¡rio de blocos.

No Kata, a Mari comeÃ§ou a criar as operaÃ§Ãµes, iniciando com a <em>pile</em>. Para essa operaÃ§Ã£o, foi criada uma funÃ§Ã£o para tirar um bloco do mundo. Depois criou uma funÃ§Ã£o para devolver os blocos ao mundo recebendo o bloco que deveria voltar e sobre que bloco este deveria entrar, depois a implementou a OperaÃ§Ã£o <em>Pile Over</em>. Infelizmente nÃ£o terminamos o problema, mas por mais que pareÃ§a que fizemos pouco, o Hugo nos disse que para terminar tudo sÃ³ precisaria implementar mais uma funÃ§Ã£o e todo o resto seria simples de se implementar. Para cada implementaÃ§Ã£o de funÃ§Ã£o, estas ficaram meio grandes, mas se tornaram sucintas com uma boa refatoraÃ§Ã£o, o que tornou o cÃ³digo mais fÃ¡cil de entender.

A sintaxe de Haskell e os recursos funcionais nos deram a oportunidade de aprender coisas novas como o $, let, map, elem, span e outras coisas.
<h3>Retrospectiva</h3>
Dessa vez, as pessoas receberam os post-its e canetas no inÃ­cio do Dojo, para escreverem os pontos bons e ruins durante o Kata.

Como pontos positivos :-) , os principais temas abordados foram:
<ul>
	<li>Haskell e coisas relacionadas a essa linguagem;</li>
	<li>Boas explicaÃ§Ãµes;</li>
	<li><a title="BrHackDay" href="http://www.hackday.org/">BrHackDay ;
</a></li>
	<li>Pessoas Novas ;</li>
	<li>Pensar Funcional ;</li>
	<li>RefatoraÃ§Ã£o Power ;</li>
</ul>
E como pontos negativos :-( , podemos citar:
<ul>
	<li>Haskell e coisas relacionadas a essa linguagem ;</li>
	<li>Sem testes para o mundo ;</li>
	<li>Emacs ;</li>
	<li>Giant Step ;</li>
	<li>RepositÃ³rio (foi movido para o Parking Lot) ;</li>
	<li>Conversa Paralela ;</li>
	<li>Monads (foi movido para o Parking Lot) ;</li>
	<li>Moedas do FabrÃ­cio;</li>
</ul>
E para o Parking Lot, os principais temas foram:
<ul>
	<li>DiscussÃ£o do reposÃ­tÃ³rio;</li>
	<li>Monads;</li>
	<li>ComeÃ§ar pelo in no let ... in (isso Ã© o Where na verdade);</li>
	<li>Remove recursivo;</li>
	<li>$ tem precedÃªncia mÃ­nima;</li>
	<li>Map, elem;</li>
	<li>\lambda;</li>
	<li>Set up para os testes;</li>
	<li>Stick to time?;</li>
	<li>Como construir Show e Eq complexos?;</li>
</ul>
O Dojo teve alguns momentos engraÃ§ados, como o Fabricio dar sua contribuiÃ§Ã£o para a Pizza em moedas (gerando o Ã³dio do Hugo), a explicaÃ§Ã£o do Hugo de porquÃª o \lambda Ã© representado por "\" ("Ã© sÃ³ tirar o pÃ©zinho"), mas a frase da noite foi dirigida ao Fabricio pelo R "Prum cara preguiÃ§oso que nem vocÃª, Lazy Evaluation Ã© Ã³timo".
