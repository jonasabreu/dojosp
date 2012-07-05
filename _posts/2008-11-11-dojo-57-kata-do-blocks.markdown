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
	<li><strong>Carta da Criatividade:</strong> Experimente uma idéia aleatória.</li>
	<li><strong>Código</strong>: Estará disponível em breve.</li>
</ul>
<h3>Warm up</h3>
Um primeiro Parking Lot que apareceu foi sobre a numeração atual do Dojo, e acabamos por decidir que esse seria o Dojo 57. Após isso fizemos a escolha do problema. Inicialmente houveram quatro sugestões:
<ul>
	<li>Kata do <a title="Blocks" href="http://online-judge.uva.es/p/v1/101.html" target="_blank">Blocks</a></li>
	<li>Randori do <a title="Dama" href="https://br.spoj.pl/problems/DAMA/" target="_blank">Dama</a></li>
	<li>Randori do <a title="Entertainement" href="http://acmicpc-live-archive.uva.es/nuevoportal/data/problem.php?p=3547">Entertainement </a></li>
	<li>Randori do Amigo Secreto: Um programa para sortear amigos secretos com um teste de aleatoriedade.</li>
</ul>
Fizemos a votação e o Kata ganhou. Perguntaram da onde vinha o problema Blocks, e a Mari nos disse que é o segundo mais fácil do <a href="http://online-judge.uva.es/problemset/">UVA</a> (só perdendo para o <a title="3n+1" href="http://online-judge.uva.es/p/v1/100.html">3n+1</a>). Após isso, sorteamos a carta da criatividade: "Experimente uma idéia aleatória", que falava sobre um médico indígena e estratégias aleatórias de caças.
<h3>Coding Time</h3>
Inicialmente, a Mari criou o tipo de dados bloco e um construtor. Com os testes passando, foi feita uma refatoração para funcionar com um número arbitrário de blocos.

No Kata, a Mari começou a criar as operações, iniciando com a <em>pile</em>. Para essa operação, foi criada uma função para tirar um bloco do mundo. Depois criou uma função para devolver os blocos ao mundo recebendo o bloco que deveria voltar e sobre que bloco este deveria entrar, depois a implementou a Operação <em>Pile Over</em>. Infelizmente não terminamos o problema, mas por mais que pareça que fizemos pouco, o Hugo nos disse que para terminar tudo só precisaria implementar mais uma função e todo o resto seria simples de se implementar. Para cada implementação de função, estas ficaram meio grandes, mas se tornaram sucintas com uma boa refatoração, o que tornou o código mais fácil de entender.

A sintaxe de Haskell e os recursos funcionais nos deram a oportunidade de aprender coisas novas como o $, let, map, elem, span e outras coisas.
<h3>Retrospectiva</h3>
Dessa vez, as pessoas receberam os post-its e canetas no início do Dojo, para escreverem os pontos bons e ruins durante o Kata.

Como pontos positivos :-) , os principais temas abordados foram:
<ul>
	<li>Haskell e coisas relacionadas a essa linguagem;</li>
	<li>Boas explicações;</li>
	<li><a title="BrHackDay" href="http://www.hackday.org/">BrHackDay ;
</a></li>
	<li>Pessoas Novas ;</li>
	<li>Pensar Funcional ;</li>
	<li>Refatoração Power ;</li>
</ul>
E como pontos negativos :-( , podemos citar:
<ul>
	<li>Haskell e coisas relacionadas a essa linguagem ;</li>
	<li>Sem testes para o mundo ;</li>
	<li>Emacs ;</li>
	<li>Giant Step ;</li>
	<li>Repositório (foi movido para o Parking Lot) ;</li>
	<li>Conversa Paralela ;</li>
	<li>Monads (foi movido para o Parking Lot) ;</li>
	<li>Moedas do Fabrício;</li>
</ul>
E para o Parking Lot, os principais temas foram:
<ul>
	<li>Discussão do reposítório;</li>
	<li>Monads;</li>
	<li>Começar pelo in no let ... in (isso é o Where na verdade);</li>
	<li>Remove recursivo;</li>
	<li>$ tem precedência mínima;</li>
	<li>Map, elem;</li>
	<li>\lambda;</li>
	<li>Set up para os testes;</li>
	<li>Stick to time?;</li>
	<li>Como construir Show e Eq complexos?;</li>
</ul>
O Dojo teve alguns momentos engraçados, como o Fabricio dar sua contribuição para a Pizza em moedas (gerando o ódio do Hugo), a explicação do Hugo de porquê o \lambda é representado por "\" ("é só tirar o pézinho"), mas a frase da noite foi dirigida ao Fabricio pelo R "Prum cara preguiçoso que nem você, Lazy Evaluation é ótimo".
