--- 
wordpress_id: 24
layout: post
title: Dojo 49 - Conhecendo Haskell
date: 2008-09-05 11:27:23 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=24
---
<p style="text-align: center;"><em>Relato escrito pelo Thiago - escreveu rápido e bem, quase dá pra ouvir ele falando! Valeu, Thiago, está de parabéns!!</em></p>

<ul>
	<li><strong>Data:</strong> 01/09/2008Â  (PARABÃ‰NS JAC!!!)</li>
	<li><strong>Participantes:</strong> Thiago, Yoshi, Hugo, Mari, Jac e Breno</li>
	<li><strong>Kata:</strong> Introdução a Haskell, pela Mari</li>
	<li><strong>Código:</strong> <a href="http://groups.google.com/group/dojo_sp/web/49-haskell-intro.zip">http://groups.google.com/group/dojo_sp/web/49-haskell-intro.zip</a> ou <a href="http://github.com/dojosp/participant-s-projects/tree/9a787ec3cd3e532cb890c37ae261794b0d1777c6/49-haskell-intro">no github</a></li>
</ul>
Empolgada pelo <a href="http://codingdojo.org/cgi-bin/wiki.pl?ParisDojo">Dojo de Paris</a>, a Mari resolveu apresentar uma introdução básica à Haskell para que quando ela for apresentar o Kata de verdade não ficassemos totalmente perdidos, como já aconteceu.

Portanto ela apresentou Haskell "formalmente", dizendo que é uma linguagem funcional e lazy. Em sequida explicou os termos para as pessoas que não os conheciam:
<ul>
	<li>"...funcional pois tudo é função..."</li>
	<li>"...lazy porque ela só calcula o que for necessário quando for necessário..."</li>
</ul>
Feito isto iniciamos a parte legal: Código!
<h2>Codando</h2>
Mostrando no interpretador de Haskell como fazemos "atribuições" em "variáveis" (entre aspas porque na linguagem não ocorrem atribuições e as variáveis não variam depois de definidas), depois como criamos uma função no próprio interpretador. Função esta que explicitava o fato de ser lazy.

Depois de sabermos o básico do básico de Haskell, iniciamos um "micro-problema": Calcular um fatorial.

Para calcular o fatorial iniciamos o TDD, e com baby-steps aprendemos o <em>pattern matching</em> das funções, e como este recurso deixa fácil, rápido e compreensível o "cheating" de fazer passar MUITO rapidamente qualquer teste (colocando o valor esperado como valor de retorno de uma funcao que recebe exatamente os valores testados para ela). Este fato foi mais comentado na "Retrospectiva". Juntamente com o <em>pattern matching</em> discutimos como o uso de "lembrança" (ou "cache" sem invalidar) em uma linguagem funcional e lazy pode ser algo extremamente útil e poderoso, já que uma vez calculado um valor, não precisamos recalculá-lo.

Além disso, com o fatorial funcionando entendemos como funcionam os tipos de variáveis, e como controlar o uso das funções com estes tipos. Aqui começou a abstração interessante e nada trivial sobre a linguagem. Terminada a parte do fatorial, entramos na parte de estrutura de dados: Como calcular a soma dos elementos de uma lista.

Assim vimos novamente a combinação "<em>pattern macthing</em> de funções + recursão", além de entender como controlar os elementos da lista com funções de primeiro, e resto da lista, além do "mágico" <em>pattern macthing</em> da lista, separando facilmente os elementos da lista.

E foi neste ponto que uma grande discussão próspera começou. Como usar a função 'foldr'.

Para começar, a Mari mostrou o tipo da função. O que depois provou-se um GIANT-Step, pois consigo trouxe a idéia da função Lambda, '+' como sendo uma função binária com "bagunça" nos parâmetros, como podemos usar o "mais" de mais de uma maneira, e assim o caos se perpetuou, já que pouquíssimas pessoas continuavam entendendo. Mas graças à paciência de Hugo e Mari tudo se resolveu rapidamente.

Começaram explicando como funciona (não o que é de verdade) uma função lambda, e como todos parâmetros de uma função se tornam no final uma função Lambda, e com várias chamadas de funções obscuras resultamos na funçao desejada.

Depois de claro como era o tipo e para que serve o 'foldr', vimos como esta é uma ferramenta poderosa e muito útil na iteração de listas.

Em seguida a Mari continuou mostrando o map e o filter. e assim percebemos o baby-step invertido... Já que estas últimas funções foram rapidamente compreendidas.

Neste ponto a Pizza chegou!
<h2>Retrospectiva</h2>
Como de praxe, para "atazanar" um certo membro do Dojo, fizemos retrospectiva COM comida... ^^

Aqui entendemos muito bem (mas não completamente) o conceito da Função Lambda e quão dificil é compreendê-la de fato. Para esta explicação o Hugo mostrou um Jogo apresentado na Agile 2008 para entender como funcionam as funções em Haskell.

Depois de um bom tempo desenhando na lousa e depois que todos tinham compreendido os conceitos, partimos para o outor assunto interessante: Roubando para o teste passar rápido.

Para fazer isto, podemos usar if's e else's para retornar logo de cara o valor esperado, ou simples e elegantemente usar o <em>pattern macthing</em> das funções. Esta tática foi motrada aos nossos "intercambistas" no dojo de Paris.

Lá eles fazem com que o teste passe extremamente rápido, assim tudo que mexe na estrutura e otimização do código, incluindo aqui algoritmos desconhecidos, faz parte da refatoração. Percebemos que é bom treinar deste modo, pois nossa refatoração só causa um efeito "estético" no código, quase nunca alterando o método de resolução do problema.

Assim ficou decidido que iremos tentar de vez em quando usar esta técnica "apelona".

Depois de falarmos muito e de barriga cheia, cada um tomou seu rumo e assim terminou nosso dojo de número aproximadamente igual a 49.
