--- 
wordpress_id: 42
layout: post
title: Dojo 56 - (Testes do) Amigo Secreto... em Python
date: 2008-11-13 08:33:50 -02:00
wordpress_url: http://www.dojosp.org/?p=42
---
<ul>
	<li><strong>Data</strong>: 03/11/2008</li>
	<li><strong>Participantes</strong>: R, Leo, Breno, Jac, Mari, Marcelo, Gola, Lameiro, Thiago, Pedro, André, RIcardo, Bani, Juca, Hugo</li>
	<li><strong>Problema</strong>: <a href="http://rubyquiz.com/quiz2.html">Amigo secreto sem sorteios na mesma família</a>, em Python</li>
	<li><strong>Código</strong>: http://github.com/dojosp/participant-s-projects/tree/master/57-secret-santa<a href="http://github.com/dojosp/participant-s-projects/tree/master"></a></li>
</ul>
Puxa, tinha realmente muitas pessoas nesse Dojo! Começamos com sugestões de três problemas interessantes, mas por votação descartamos "Corrida de vetores" e "Números espaçados" para fazer o <a href="http://rubyquiz.com/quiz2.html">amigo secreto sem sorteios na mesma família</a>. O Natal se aproxima!

Votamos pela linguagem também, e no final Python ganhou de Haskell por 1 voto.<!--more-->
<h3>O Problema</h3>
Recebemos uma lista de pessoas no formato &lt;nome&gt; &lt;sobrenome&gt; &lt;email&gt;, e devemos sortear o amigo secreto para que uma pessoa não sorteie outra que seja da sua família (mesmo sobrenome).

Decidimos também que se não for possível fazer o sorteio respeitando a regra de não ter amigos da mesma família, então sorteia-se quebrando a regra, pois é mais importante ter o amigo secreto do que respeitar a regra!

Mas nem avançamos tanto assim no problema...
<h3>Codando</h3>
O primeiro teste foi fácil e direto ao ponto: quando temos duas pessoas apenas, uma tira a outra e pronto. Partimos então para ver como sorteia para três pessoas de famílias diferentes. Os problemas começaram por aqui, apesar que demoramos para perceber... passos grandes demais, e no fim vimos também que tinha mais de uma resposta possível e precisávamos levar isso em conta nos testes. Factível.

Quando chegamos no teste para quatro pessoas... foi aí que paramos de avançar no código. Por que com quatro pessoas existem várias respostas possíveis, e na tentativa de enumerar todas a gente não tinha certeza que alguma possibilidade não tinha escapado. Sugeriu-se então testar propriedades da resposta produzida, mas tais testes eram complexos e sugeriu-se portanto criar métodos de teste auxiliares, testando-os com TDD. Estranho... mas foi isso que fizemos até o fim da sessão de código.
<h3>Retrospectiva</h3>
Primeiro as coisas boas:
<ul>
	<li>Tinha muita gente (quase batemos nosso recorde de 16 pessoas) e tinha gente nova também</li>
	<li>Logo, tinha muito post-it e muita pizza :-D</li>
	<li>Pessoal gostou de Python, alguns aprenderam um pouco, outros lembraram</li>
	<li>Os commits não atrapalham o andar da sessão</li>
	<li>Foi muito divertido, e o problema era bem interessante</li>
	<li>Aprendemos que <code>pessoas[:-1]</code> pega todos os elementos menos o último do vetor de nomes</li>
	<li>E aprendemos que <code>enumerate(pessoas)</code> permite iterar em pares <code>(i, nome)</code> de índices e valores no vetor <code>pessoas</code></li>
</ul>
Por outro lado:
<ul>
	<li>Talvez por que tinha muita gente, experimentamos um burburinho no vermelho que não tinha faz um tempo, com direito a platéia usando computador e tudo o mais. Não aguentamos ficar quietos!</li>
	<li>Relacionado a isso, alguns sentiram falta das conversas do <a href="http://www.dojosp.org/?p=31">Uber Dojo</a>.</li>
	<li>Ainda por conta do número de pessoas, nem todo mundo pode codar. 7 minutos parece muito tempo em um grupo maior.</li>
	<li>Python de novo?</li>
	<li>Pequenas dificuldades com a linguagem atrapalham (discutimos isso também no Parking Lot)</li>
	<li>Quem já sabe python bate o olho na mensagem de erro e entende, sem dar tempo para todos lerem.</li>
	<li>Não ficamos convencidos de que todos os participantes entendiam o que estava acontecendo a todo momento.</li>
	<li>Talvez com razão, pois alguns não entenderam o motivo do método auxiliar para testes.</li>
	<li>Começamos com atraso.</li>
	<li>Tivemos alguns passos "gigantes" tanto no começo quanto no fim. Faltou lembrar de simplicidade e baby steps.</li>
	<li>O problema era "ruim" por envolver um sorteio e exigir assim que houvessem várias respostas possíveis. Na verdade o ruim foi que não percebemos isso no começo, o que nos pegou totalmente desprevinidos no meio da sessão. Teria sido um bom dia para experimentar a "pausa no meio", mas não fizemos.</li>
	<li>Os testes eram muito trabalhosos, tão complexos que a gente nem chegou no problema.</li>
</ul>
No Parking Lot, discutimos:
<ul>
	<li>Dojo na Globalcode - um convite do pessoal da <a href="http://www.globalcode.com.br">Globalcode</a> de fazer uma sessão no auditório deles lá na av. Paulista.</li>
	<li>Distribuir post-its no começo, para preenchermos durante a sessão.</li>
	<li>Quando a dupla tem problemas com sintaxe... a platéia deve ficar calada mesmo assim? Deve esperar eles pedirem ajuda? Ou deve ajudar mesmo sem o pedido, mostrando a mensagem de erro e ensinando o que significa?</li>
	<li>Como testar algo com resultado "aleatório"?</li>
	<li>"Parece difícil demais? Não entendeu direito? Parece mais complicado do que deveria? Tá errado!" - se alguém se sentir assim durante o Dojo, tem algo de errado acontecendo, deveríamos parar e ir com mais calma.</li>
</ul>
Falamos também de uma "checklist" de coisas pro Dojo, mas não houve muita aprovação da idéia pois achamos que não seria seguida. Discutimos também a idéia de "Dojo smells", os maus cheiros do Dojo, que poderiam ajudar a gente, e outros, a identificar quando tem algo errado no ar. :-)

Ah, e queremos reciclar os copos!
<h3>A terceira cadeira</h3>
Pessoal, enquanto escrevia esse post fiquei pensando e tive uma idéia... queria saber o que vocês acham!

E se tivéssemos uma terceira cadeira lá na frente? A qualquer momento, alguém da platéia poderia vir e sentar nessa cadeira, dando uma força pra dupla que está codando. Ele adquiri temporariamente o "direito" de falar no vermelho. Ã‰ claro que essa pessoa não poderia codar e deveria sair logo da cadeira, mas seria uma maneira de organizar as sugestões que vem da platéia, principalmente no vermelho. Facilitaria também pra ajudar a dupla com problemas de sintaxe ou lembrar de dar um passo mais simples.

Pensei nisso pois tem um formato de open spaces que é parecido (uma roda de cadeiras, sempre deve ter uma vazia, só que em está sentado pode falar; se alguém senta na cadeira vazia, alguém que está sentado deve levantar). E também porque fazemos um pouco disso no Uber Dojo - ao longo da sessão, várias vezes acontece de alguém sentar com a dupla principal para ajudar ou simplesmente para olhar o que está acontecendo...

Ã‰ uma idéia que precisa ser refinada com certeza, mas talvez seja legal. O que vocês acham?
