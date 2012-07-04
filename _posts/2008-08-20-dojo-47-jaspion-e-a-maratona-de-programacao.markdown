--- 
wordpress_id: 22
layout: post
title: "Dojo 47 - Jaspion! e a Maratona de Programa\xC3\x83\xC2\xA7\xC3\x83\xC2\xA3o"
date: 2008-08-20 17:08:50 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=22
---
<ul>
	<li><strong>Data:</strong> 18/08/2008</li>
	<li><strong>Participantes:</strong> Jac, Adolfo, Thiago, Mari, Breno, Hugo, Paulo, Yoshi e Gustavo</li>
	<li><strong>Randori:</strong> Problema K (Jaspion) da seletiva do IME para a <a href="http://www.ime.usp.br/~cef/maratona">Maratona de ProgramaÃ§Ã£o</a></li>
	<li><strong>CÃ³digo fonte:</strong> http://dojo_sp.googlegroups.com/web/47-JASPION.zip</li>
</ul>
No dia anterior ao Dojo, domingo, aconteceu no IME a seletiva para a <a href="http://www.ime.usp.br/~cef/XIImaratona">Maratona de ProgramaÃ§Ã£o</a>. Para quem nÃ£o conhece, Ã© uma prova muito divertida que ocorre todo ano, na qual equipes de no mÃ¡ximo 3 pessoas tÃªm por volta de 5 horas para resolver uma sÃ©rie de problemas. Como 4 dos 9 que apareceram no Dojo segunda participaram dessa prova, eles sugeriram um dos problemas da prova, que acabou sendo escolhido para resolvermos.

ApÃ³s explicar o problema, votamos tambÃ©m na linguagem a ser utilizada, entre um monte de opÃ§Ãµes (talvez opÃ§Ãµes demais) - desde Perl atÃ© Smalltalk. A escolhida pela galera foi Java, uma das linguagens que pode ser utilizada na maratona (as outras sÃ£o C e C++).
<h3>O Problema</h3>
Resumindo a historinha de 2 parÃ¡grafos que introduz o problema (infelizmente nÃ£o tem uma versÃ£o online da prova), o objetivo Ã© traduzir letras de mÃºsicas em japonÃªs para o portuguÃªs, usando um dicionÃ¡rio de palavras em japonÃªs para expressÃµes em portuguÃªs. O problema parecia fÃ¡cil, apesar de durante a prova de domingo poucos grupos terem conseguido sucesso na soluÃ§Ã£o. Isso sÃ³ aumentou a vontade do pessoal do Dojo de terminar a implementaÃ§Ã£o, inclusive com leitura da entrada!

A entrada consistia do seguinte formato: primeiro um nÃºmero T de instÃ¢ncias a serem processadas. Depois, cada instÃ¢ncia comeÃ§a com dois inteiros M e N indicando respectivamente o nÃºmero de palavras no dicionÃ¡rio e o nÃºmero de linhas da mÃºsica. A seguir, sÃ£o dados M pares de linhas, sendo a primeira linha do par uma palavra em japonÃªs (sem espaÃ§os) e a segunda, uma expressÃ£o em portuguÃªs (podendo ter espaÃ§os). Depois disso, vinham as N linhas da mÃºsica. Uma observaÃ§Ã£o importante Ã© que, se uma palavra da mÃºsica nÃ£o estivesse no dicionÃ¡rio, ela deveria ser deixada sem traduÃ§Ã£o, isto Ã©, copiada exatamente para a saÃ­da. Por fim, todas as palavras tanto do dicionÃ¡rio quanto da mÃºsica consistem apenas de letras minÃºsculas.
<h4>Por exemplo...</h4>
Para a entrada:
<code>1
1 1
oi
tchau pessoal
oi do dojo oi
</code>
A saÃ­da esperada Ã©:
<code>tchau pessoal do dojo tchau pessoal</code>
<h3>A SoluÃ§Ã£o</h3>
Assim que comeÃ§amos, percebemos que o problema de fato parecia fÃ¡cil. Terminamos rapidamente a parte de traduÃ§Ã£o, que Ã© o centro do problema. Restava apenas a leitura de entrada, e partimos para isso.

Para nÃ£o ter que lidar de fato com leitura de entrada, o que nÃ£o Ã© desejado em testes unitÃ¡rios, fizemos um <a href="http://www.michaelminella.com/testing/the-concept-of-mocking.html"><em>mock</em></a> bem simples de <code>InputStream</code>, tornando-o capaz de fornecer a entrada desejada para o cÃ³digo. Com esse mock, conseguimos ler as duplas de palavras que formam o dicionÃ¡rio, mas paramos por aÃ­ pois o tempo jÃ¡ tinha acabado.
<h3>Retrospectiva</h3>
A retrospectiva foi repleta de coisas boas (como o fato de o Hugo e a Mari - eu!! - estarem de volta, e de termos bastante gente) e discussÃµes interessantes.

Como pontos positivos:
<ul>
	<li>O texto do problema, que recebemos durante a prova no dia anterior, estava circulando entre a platÃ©ia. Isso facilitou resolver dÃºvidas que alguÃ©m tivesse de forma rÃ¡pida e sem interromper o par programando para ter que consultar o problema no navegador.</li>
	<li>Seguimos Ã  risca a troca de pares, dando um bom ritmo ao cÃ³digo, mas fizemos algumas pausas (do cronÃ´metro mesmo) pra explicar em pontos quando a maioria ficava perdido (por exemplo pra explicar o <em>mock</em>). Mal podemos esperar pela nossa <strong>ampulheta</strong>!!!</li>
</ul>
AlÃ©m disso, vÃ¡rios pontos foram considerados como algo bom e ruim ao mesmo tempo! As discussÃµes interessantes que tivemos foram:<strong></strong>

<p style="padding-left: 30px;"><strong>+</strong> Votar na linguagem foi muito bom, pois nÃ£o queremos mais ficar presos a uma linguagem apenas durante um tempÃ£o...<strong>
--</strong> Por outro lado, a maneira como fizemos nesse Dojo demorou, roubou do nosso tempo valioso para fazer o que Ã© mais divertido, que Ã© codar...
<strong>!!</strong> EntÃ£o sugerimos de escolher a linguagem ao mesmo tempo do problema, ou seja, ao sugerir um problema jÃ¡ sugerimos a linguagem a ser utilizada. Podemos algumas vezes sugerir o mesmo problema em duas linguagens, mas sem exagerar no nÃºmero de opÃ§Ãµes. Assim, podemos variar de linguagem fazendo apenas uma votaÃ§Ã£o.</p>

<p style="padding-left: 30px;"><strong>+</strong> A sessÃ£o foi bem calma e tivemos silÃªncio no vermelho, o que Ã© raro...
<strong>--</strong> Mas algumas pessoas nÃ£o gostaram disso, acharam que faltou animaÃ§Ã£o e disseram que dava para ouvir o barulho do projetor...
<strong>?</strong> SerÃ¡ que devemos pedir pro Fabs nÃ£o faltar mais?</p>

<p style="padding-left: 30px;"><strong>+</strong> O problema era interessante e factÃ­vel, e o tempo rendeu bem...
<strong>--</strong> Mas mesmo assim nÃ£o terminamos, apesar de chegar muito perto, e ficamos todos curiosos para saber se a nossa soluÃ§Ã£o passaria ou nÃ£o nos testes do juiz.</p>

<p style="padding-left: 30px;"><strong>+</strong> Aprendemos um jeito rÃ¡pido e fÃ¡cil de fazer um <em>mock</em>...
<strong>--</strong> PorÃ©m, alguns acharam esse jeito muito, muito feio!!
<strong>?</strong> Seria interessante vermos algumas bibliotecas de <em>mock</em> no Dojo?</p>

<p style="padding-left: 30px;"><strong>+</strong> Java foi considerada uma boa escolha para o problema, e as pessoas ficaram felizes de usar o Eclipse...
<strong>--</strong> PorÃ©m constatamos que leitura de entrada em Java ainda Ã© muito ruim! E alÃ©m disso, algumas pessoas nÃ£o estÃ£o confortÃ¡veis com a linguagem e sentiram que isso atrapalhou o entendimento e fluxo do Dojo
<strong>?</strong> SerÃ¡ que a falta de fluÃªncia Ã© um problema? A maioria concordou que aprender e treinar novas linguagens faz parte dos objetivos de vir ao Dojo, e que as dÃºvidas devem ser resolvidas conforme elas acontecem.</p>

Por fim, falamos dos itens no Parking Lot (aliÃ¡s muito bem utilizado, passando itens da retrospectiva para o Parking Lot se percebÃ­amos que tinha mais coisa a conversar a respeito):
<ul>
	<li>"Como testar o armazenamento de dados por um objeto sem ter de conhecer a implementaÃ§Ã£o de uma ED interna a ele?"
Por exemplo, nosso objeto deveria armazenar um par de uma palavra em japonÃªs e uma expressÃ£o em portuguÃªs, como um mapa ou dicionÃ¡rio. PorÃ©m, para efeitos de testes, querÃ­amos que a forma de armazenar isso fosse invisÃ­vel. EntÃ£o, como testar o mÃ©todo de armazenamento se a Ãºnica coisa que ele faz Ã© interna e nÃ£o podemos enxergar? Ou seja, ele produz um efeito colateral, e concluÃ­mos que a Ãºnica maneira de testÃ¡-lo seria atravÃ©s de outro mÃ©todo da classe, por exemplo um mÃ©todo que diz se uma determinada palavra estÃ¡ no dicionÃ¡rio. Se trata de um teste <em>caixa preta</em>.</li>
	<li>"SugestÃ£o: pausa no meio"
Seguindo prÃ¡ticas aprendidas com o pessoal do Dojo Paris e na Agile 2008, eu sugeri essa prÃ¡tica de fazer uma pausa no meio da sessÃ£o para discutir se tivemos dÃºvidas atÃ© o momento, discutir o rumo que a soluÃ§Ã£o estÃ¡ tomando e se queremos mudÃ¡-lo. O pessoal topou tentar, ressaltando que acham que a pausa sÃ³ deve ser feita se alguÃ©m tiver dÃºvida ou algum problema com o rumo das coisas - ou seja, nÃ£o queremos parar sÃ³ por parar.</li>
	<li>"Usar controle de versÃ£o Git do Dojo"
Outra idÃ©ia que veio de fora Ã© de, durante a sessÃ£o do Dojo, fazer commits regulares para um repositÃ³rio de controle de versÃµes, como o repositÃ³rio Git que jÃ¡ temos. Com isso, os passos tomados durante o Randori ficariam automaticamente salvos e alÃ©m disso nÃ£o seria mais necessÃ¡rio subir o cÃ³digo final para nosso espaÃ§o no Google Groups.</li>
	<li>Por fim, eu reclamei que nÃ£o tivemos nenhum post das reuniÃµes de julho (e se alguÃ©m lÃª esse blog, deve ter reclamado tambÃ©m), e perguntei pro pessoal se eles tinham idÃ©ia de alguma outra maneira para capturar o relato das nossas reuniÃµes. Isso casou razoavelmente bem com a idÃ©ia anterior, do repositÃ³rio, dado que podemos usar um arquivo para comentÃ¡rios ou atÃ© a prÃ³pria mensagem em cada commit para "gravar" como foi a reuniÃ£o. Assim, o trabalho do escriba ficaria consideravelmente menor (serÃ¡?), precisando apenas juntar esses comentÃ¡rios e passar os principais pontos da retrospectiva para cÃ¡.</li>
</ul>
