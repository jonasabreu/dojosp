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
	<li><strong>Randori:</strong> Problema K (Jaspion) da seletiva do IME para a <a href="http://www.ime.usp.br/~cef/maratona">Maratona de Programação</a></li>
	<li><strong>Código fonte:</strong> http://dojo_sp.googlegroups.com/web/47-JASPION.zip</li>
</ul>
No dia anterior ao Dojo, domingo, aconteceu no IME a seletiva para a <a href="http://www.ime.usp.br/~cef/XIImaratona">Maratona de Programação</a>. Para quem não conhece, é uma prova muito divertida que ocorre todo ano, na qual equipes de no máximo 3 pessoas têm por volta de 5 horas para resolver uma série de problemas. Como 4 dos 9 que apareceram no Dojo segunda participaram dessa prova, eles sugeriram um dos problemas da prova, que acabou sendo escolhido para resolvermos.

Após explicar o problema, votamos também na linguagem a ser utilizada, entre um monte de opções (talvez opções demais) - desde Perl até Smalltalk. A escolhida pela galera foi Java, uma das linguagens que pode ser utilizada na maratona (as outras são C e C++).
<h3>O Problema</h3>
Resumindo a historinha de 2 parágrafos que introduz o problema (infelizmente não tem uma versão online da prova), o objetivo é traduzir letras de músicas em japonês para o português, usando um dicionário de palavras em japonês para expressões em português. O problema parecia fácil, apesar de durante a prova de domingo poucos grupos terem conseguido sucesso na solução. Isso só aumentou a vontade do pessoal do Dojo de terminar a implementação, inclusive com leitura da entrada!

A entrada consistia do seguinte formato: primeiro um número T de instâncias a serem processadas. Depois, cada instância começa com dois inteiros M e N indicando respectivamente o número de palavras no dicionário e o número de linhas da música. A seguir, são dados M pares de linhas, sendo a primeira linha do par uma palavra em japonês (sem espaços) e a segunda, uma expressão em português (podendo ter espaços). Depois disso, vinham as N linhas da música. Uma observação importante é que, se uma palavra da música não estivesse no dicionário, ela deveria ser deixada sem tradução, isto é, copiada exatamente para a saída. Por fim, todas as palavras tanto do dicionário quanto da música consistem apenas de letras minúsculas.
<h4>Por exemplo...</h4>
Para a entrada:
<code>1
1 1
oi
tchau pessoal
oi do dojo oi
</code>
A saída esperada é:
<code>tchau pessoal do dojo tchau pessoal</code>
<h3>A Solução</h3>
Assim que começamos, percebemos que o problema de fato parecia fácil. Terminamos rapidamente a parte de tradução, que é o centro do problema. Restava apenas a leitura de entrada, e partimos para isso.

Para não ter que lidar de fato com leitura de entrada, o que não é desejado em testes unitários, fizemos um <a href="http://www.michaelminella.com/testing/the-concept-of-mocking.html"><em>mock</em></a> bem simples de <code>InputStream</code>, tornando-o capaz de fornecer a entrada desejada para o código. Com esse mock, conseguimos ler as duplas de palavras que formam o dicionário, mas paramos por aí pois o tempo já tinha acabado.
<h3>Retrospectiva</h3>
A retrospectiva foi repleta de coisas boas (como o fato de o Hugo e a Mari - eu!! - estarem de volta, e de termos bastante gente) e discussões interessantes.

Como pontos positivos:
<ul>
	<li>O texto do problema, que recebemos durante a prova no dia anterior, estava circulando entre a platéia. Isso facilitou resolver dúvidas que alguém tivesse de forma rápida e sem interromper o par programando para ter que consultar o problema no navegador.</li>
	<li>Seguimos à risca a troca de pares, dando um bom ritmo ao código, mas fizemos algumas pausas (do cronômetro mesmo) pra explicar em pontos quando a maioria ficava perdido (por exemplo pra explicar o <em>mock</em>). Mal podemos esperar pela nossa <strong>ampulheta</strong>!!!</li>
</ul>
Além disso, vários pontos foram considerados como algo bom e ruim ao mesmo tempo! As discussões interessantes que tivemos foram:<strong></strong>

<p style="padding-left: 30px;"><strong>+</strong> Votar na linguagem foi muito bom, pois não queremos mais ficar presos a uma linguagem apenas durante um tempão...<strong>
--</strong> Por outro lado, a maneira como fizemos nesse Dojo demorou, roubou do nosso tempo valioso para fazer o que é mais divertido, que é codar...
<strong>!!</strong> Então sugerimos de escolher a linguagem ao mesmo tempo do problema, ou seja, ao sugerir um problema já sugerimos a linguagem a ser utilizada. Podemos algumas vezes sugerir o mesmo problema em duas linguagens, mas sem exagerar no número de opções. Assim, podemos variar de linguagem fazendo apenas uma votação.</p>

<p style="padding-left: 30px;"><strong>+</strong> A sessão foi bem calma e tivemos silêncio no vermelho, o que é raro...
<strong>--</strong> Mas algumas pessoas não gostaram disso, acharam que faltou animação e disseram que dava para ouvir o barulho do projetor...
<strong>?</strong> Será que devemos pedir pro Fabs não faltar mais?</p>

<p style="padding-left: 30px;"><strong>+</strong> O problema era interessante e factível, e o tempo rendeu bem...
<strong>--</strong> Mas mesmo assim não terminamos, apesar de chegar muito perto, e ficamos todos curiosos para saber se a nossa solução passaria ou não nos testes do juiz.</p>

<p style="padding-left: 30px;"><strong>+</strong> Aprendemos um jeito rápido e fácil de fazer um <em>mock</em>...
<strong>--</strong> Porém, alguns acharam esse jeito muito, muito feio!!
<strong>?</strong> Seria interessante vermos algumas bibliotecas de <em>mock</em> no Dojo?</p>

<p style="padding-left: 30px;"><strong>+</strong> Java foi considerada uma boa escolha para o problema, e as pessoas ficaram felizes de usar o Eclipse...
<strong>--</strong> Porém constatamos que leitura de entrada em Java ainda é muito ruim! E além disso, algumas pessoas não estão confortáveis com a linguagem e sentiram que isso atrapalhou o entendimento e fluxo do Dojo
<strong>?</strong> Será que a falta de fluência é um problema? A maioria concordou que aprender e treinar novas linguagens faz parte dos objetivos de vir ao Dojo, e que as dúvidas devem ser resolvidas conforme elas acontecem.</p>

Por fim, falamos dos itens no Parking Lot (aliás muito bem utilizado, passando itens da retrospectiva para o Parking Lot se percebíamos que tinha mais coisa a conversar a respeito):
<ul>
	<li>"Como testar o armazenamento de dados por um objeto sem ter de conhecer a implementação de uma ED interna a ele?"
Por exemplo, nosso objeto deveria armazenar um par de uma palavra em japonês e uma expressão em português, como um mapa ou dicionário. Porém, para efeitos de testes, queríamos que a forma de armazenar isso fosse invisível. Então, como testar o método de armazenamento se a única coisa que ele faz é interna e não podemos enxergar? Ou seja, ele produz um efeito colateral, e concluímos que a única maneira de testá-lo seria através de outro método da classe, por exemplo um método que diz se uma determinada palavra está no dicionário. Se trata de um teste <em>caixa preta</em>.</li>
	<li>"Sugestão: pausa no meio"
Seguindo práticas aprendidas com o pessoal do Dojo Paris e na Agile 2008, eu sugeri essa prática de fazer uma pausa no meio da sessão para discutir se tivemos dúvidas até o momento, discutir o rumo que a solução está tomando e se queremos mudá-lo. O pessoal topou tentar, ressaltando que acham que a pausa só deve ser feita se alguém tiver dúvida ou algum problema com o rumo das coisas - ou seja, não queremos parar só por parar.</li>
	<li>"Usar controle de versão Git do Dojo"
Outra idéia que veio de fora é de, durante a sessão do Dojo, fazer commits regulares para um repositório de controle de versões, como o repositório Git que já temos. Com isso, os passos tomados durante o Randori ficariam automaticamente salvos e além disso não seria mais necessário subir o código final para nosso espaço no Google Groups.</li>
	<li>Por fim, eu reclamei que não tivemos nenhum post das reuniões de julho (e se alguém lê esse blog, deve ter reclamado também), e perguntei pro pessoal se eles tinham idéia de alguma outra maneira para capturar o relato das nossas reuniões. Isso casou razoavelmente bem com a idéia anterior, do repositório, dado que podemos usar um arquivo para comentários ou até a própria mensagem em cada commit para "gravar" como foi a reunião. Assim, o trabalho do escriba ficaria consideravelmente menor (será?), precisando apenas juntar esses comentários e passar os principais pontos da retrospectiva para cá.</li>
</ul>
