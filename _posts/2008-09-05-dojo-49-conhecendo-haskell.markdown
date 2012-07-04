--- 
wordpress_id: 24
layout: post
title: Dojo 49 - Conhecendo Haskell
date: 2008-09-05 11:27:23 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=24
---
<p style="text-align: center;"><em>Relato escrito pelo Thiago - escreveu rÃ¡pido e bem, quase dÃ¡ pra ouvir ele falando! Valeu, Thiago, estÃ¡ de parabÃ©ns!!</em></p>

<ul>
	<li><strong>Data:</strong> 01/09/2008Â  (PARABÃ‰NS JAC!!!)</li>
	<li><strong>Participantes:</strong> Thiago, Yoshi, Hugo, Mari, Jac e Breno</li>
	<li><strong>Kata:</strong> IntroduÃ§Ã£o a Haskell, pela Mari</li>
	<li><strong>CÃ³digo:</strong> <a href="http://groups.google.com/group/dojo_sp/web/49-haskell-intro.zip">http://groups.google.com/group/dojo_sp/web/49-haskell-intro.zip</a> ou <a href="http://github.com/dojosp/participant-s-projects/tree/9a787ec3cd3e532cb890c37ae261794b0d1777c6/49-haskell-intro">no github</a></li>
</ul>
Empolgada pelo <a href="http://codingdojo.org/cgi-bin/wiki.pl?ParisDojo">Dojo de Paris</a>, a Mari resolveu apresentar uma introduÃ§Ã£o bÃ¡sica Ã  Haskell para que quando ela for apresentar o Kata de verdade nÃ£o ficassemos totalmente perdidos, como jÃ¡ aconteceu.

Portanto ela apresentou Haskell "formalmente", dizendo que Ã© uma linguagem funcional e lazy. Em sequida explicou os termos para as pessoas que nÃ£o os conheciam:
<ul>
	<li>"...funcional pois tudo Ã© funÃ§Ã£o..."</li>
	<li>"...lazy porque ela sÃ³ calcula o que for necessÃ¡rio quando for necessÃ¡rio..."</li>
</ul>
Feito isto iniciamos a parte legal: CÃ³digo!
<h2>Codando</h2>
Mostrando no interpretador de Haskell como fazemos "atribuiÃ§Ãµes" em "variÃ¡veis" (entre aspas porque na linguagem nÃ£o ocorrem atribuiÃ§Ãµes e as variÃ¡veis nÃ£o variam depois de definidas), depois como criamos uma funÃ§Ã£o no prÃ³prio interpretador. FunÃ§Ã£o esta que explicitava o fato de ser lazy.

Depois de sabermos o bÃ¡sico do bÃ¡sico de Haskell, iniciamos um "micro-problema": Calcular um fatorial.

Para calcular o fatorial iniciamos o TDD, e com baby-steps aprendemos o <em>pattern matching</em> das funÃ§Ãµes, e como este recurso deixa fÃ¡cil, rÃ¡pido e compreensÃ­vel o "cheating" de fazer passar MUITO rapidamente qualquer teste (colocando o valor esperado como valor de retorno de uma funcao que recebe exatamente os valores testados para ela). Este fato foi mais comentado na "Retrospectiva". Juntamente com o <em>pattern matching</em> discutimos como o uso de "lembranÃ§a" (ou "cache" sem invalidar) em uma linguagem funcional e lazy pode ser algo extremamente Ãºtil e poderoso, jÃ¡ que uma vez calculado um valor, nÃ£o precisamos recalculÃ¡-lo.

AlÃ©m disso, com o fatorial funcionando entendemos como funcionam os tipos de variÃ¡veis, e como controlar o uso das funÃ§Ãµes com estes tipos. Aqui comeÃ§ou a abstraÃ§Ã£o interessante e nada trivial sobre a linguagem. Terminada a parte do fatorial, entramos na parte de estrutura de dados: Como calcular a soma dos elementos de uma lista.

Assim vimos novamente a combinaÃ§Ã£o "<em>pattern macthing</em> de funÃ§Ãµes + recursÃ£o", alÃ©m de entender como controlar os elementos da lista com funÃ§Ãµes de primeiro, e resto da lista, alÃ©m do "mÃ¡gico" <em>pattern macthing</em> da lista, separando facilmente os elementos da lista.

E foi neste ponto que uma grande discussÃ£o prÃ³spera comeÃ§ou. Como usar a funÃ§Ã£o 'foldr'.

Para comeÃ§ar, a Mari mostrou o tipo da funÃ§Ã£o. O que depois provou-se um GIANT-Step, pois consigo trouxe a idÃ©ia da funÃ§Ã£o Lambda, '+' como sendo uma funÃ§Ã£o binÃ¡ria com "bagunÃ§a" nos parÃ¢metros, como podemos usar o "mais" de mais de uma maneira, e assim o caos se perpetuou, jÃ¡ que pouquÃ­ssimas pessoas continuavam entendendo. Mas graÃ§as Ã  paciÃªncia de Hugo e Mari tudo se resolveu rapidamente.

ComeÃ§aram explicando como funciona (nÃ£o o que Ã© de verdade) uma funÃ§Ã£o lambda, e como todos parÃ¢metros de uma funÃ§Ã£o se tornam no final uma funÃ§Ã£o Lambda, e com vÃ¡rias chamadas de funÃ§Ãµes obscuras resultamos na funÃ§ao desejada.

Depois de claro como era o tipo e para que serve o 'foldr', vimos como esta Ã© uma ferramenta poderosa e muito Ãºtil na iteraÃ§Ã£o de listas.

Em seguida a Mari continuou mostrando o map e o filter. e assim percebemos o baby-step invertido... JÃ¡ que estas Ãºltimas funÃ§Ãµes foram rapidamente compreendidas.

Neste ponto a Pizza chegou!
<h2>Retrospectiva</h2>
Como de praxe, para "atazanar" um certo membro do Dojo, fizemos retrospectiva COM comida... ^^

Aqui entendemos muito bem (mas nÃ£o completamente) o conceito da FunÃ§Ã£o Lambda e quÃ£o dificil Ã© compreendÃª-la de fato. Para esta explicaÃ§Ã£o o Hugo mostrou um Jogo apresentado na Agile 2008 para entender como funcionam as funÃ§Ãµes em Haskell.

Depois de um bom tempo desenhando na lousa e depois que todos tinham compreendido os conceitos, partimos para o outor assunto interessante: Roubando para o teste passar rÃ¡pido.

Para fazer isto, podemos usar if's e else's para retornar logo de cara o valor esperado, ou simples e elegantemente usar o <em>pattern macthing</em> das funÃ§Ãµes. Esta tÃ¡tica foi motrada aos nossos "intercambistas" no dojo de Paris.

LÃ¡ eles fazem com que o teste passe extremamente rÃ¡pido, assim tudo que mexe na estrutura e otimizaÃ§Ã£o do cÃ³digo, incluindo aqui algoritmos desconhecidos, faz parte da refatoraÃ§Ã£o. Percebemos que Ã© bom treinar deste modo, pois nossa refatoraÃ§Ã£o sÃ³ causa um efeito "estÃ©tico" no cÃ³digo, quase nunca alterando o mÃ©todo de resoluÃ§Ã£o do problema.

Assim ficou decidido que iremos tentar de vez em quando usar esta tÃ©cnica "apelona".

Depois de falarmos muito e de barriga cheia, cada um tomou seu rumo e assim terminou nosso dojo de nÃºmero aproximadamente igual a 49.
