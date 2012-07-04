--- 
wordpress_id: 42
layout: post
title: Dojo 56 - (Testes do) Amigo Secreto... em Python
date: 2008-11-13 08:33:50 -02:00
wordpress_url: http://www.dojosp.org/?p=42
---
<ul>
	<li><strong>Data</strong>: 03/11/2008</li>
	<li><strong>Participantes</strong>: R, Leo, Breno, Jac, Mari, Marcelo, Gola, Lameiro, Thiago, Pedro, AndrÃ©, RIcardo, Bani, Juca, Hugo</li>
	<li><strong>Problema</strong>: <a href="http://rubyquiz.com/quiz2.html">Amigo secreto sem sorteios na mesma famÃ­lia</a>, em Python</li>
	<li><strong>CÃ³digo</strong>: http://github.com/dojosp/participant-s-projects/tree/master/57-secret-santa<a href="http://github.com/dojosp/participant-s-projects/tree/master"></a></li>
</ul>
Puxa, tinha realmente muitas pessoas nesse Dojo! ComeÃ§amos com sugestÃµes de trÃªs problemas interessantes, mas por votaÃ§Ã£o descartamos "Corrida de vetores" e "NÃºmeros espaÃ§ados" para fazer o <a href="http://rubyquiz.com/quiz2.html">amigo secreto sem sorteios na mesma famÃ­lia</a>. O Natal se aproxima!

Votamos pela linguagem tambÃ©m, e no final Python ganhou de Haskell por 1 voto.<!--more-->
<h3>O Problema</h3>
Recebemos uma lista de pessoas no formato &lt;nome&gt; &lt;sobrenome&gt; &lt;email&gt;, e devemos sortear o amigo secreto para que uma pessoa nÃ£o sorteie outra que seja da sua famÃ­lia (mesmo sobrenome).

Decidimos tambÃ©m que se nÃ£o for possÃ­vel fazer o sorteio respeitando a regra de nÃ£o ter amigos da mesma famÃ­lia, entÃ£o sorteia-se quebrando a regra, pois Ã© mais importante ter o amigo secreto do que respeitar a regra!

Mas nem avanÃ§amos tanto assim no problema...
<h3>Codando</h3>
O primeiro teste foi fÃ¡cil e direto ao ponto: quando temos duas pessoas apenas, uma tira a outra e pronto. Partimos entÃ£o para ver como sorteia para trÃªs pessoas de famÃ­lias diferentes. Os problemas comeÃ§aram por aqui, apesar que demoramos para perceber... passos grandes demais, e no fim vimos tambÃ©m que tinha mais de uma resposta possÃ­vel e precisÃ¡vamos levar isso em conta nos testes. FactÃ­vel.

Quando chegamos no teste para quatro pessoas... foi aÃ­ que paramos de avanÃ§ar no cÃ³digo. Por que com quatro pessoas existem vÃ¡rias respostas possÃ­veis, e na tentativa de enumerar todas a gente nÃ£o tinha certeza que alguma possibilidade nÃ£o tinha escapado. Sugeriu-se entÃ£o testar propriedades da resposta produzida, mas tais testes eram complexos e sugeriu-se portanto criar mÃ©todos de teste auxiliares, testando-os com TDD. Estranho... mas foi isso que fizemos atÃ© o fim da sessÃ£o de cÃ³digo.
<h3>Retrospectiva</h3>
Primeiro as coisas boas:
<ul>
	<li>Tinha muita gente (quase batemos nosso recorde de 16 pessoas) e tinha gente nova tambÃ©m</li>
	<li>Logo, tinha muito post-it e muita pizza :-D</li>
	<li>Pessoal gostou de Python, alguns aprenderam um pouco, outros lembraram</li>
	<li>Os commits nÃ£o atrapalham o andar da sessÃ£o</li>
	<li>Foi muito divertido, e o problema era bem interessante</li>
	<li>Aprendemos que <code>pessoas[:-1]</code> pega todos os elementos menos o Ãºltimo do vetor de nomes</li>
	<li>E aprendemos que <code>enumerate(pessoas)</code> permite iterar em pares <code>(i, nome)</code> de Ã­ndices e valores no vetor <code>pessoas</code></li>
</ul>
Por outro lado:
<ul>
	<li>Talvez por que tinha muita gente, experimentamos um burburinho no vermelho que nÃ£o tinha faz um tempo, com direito a platÃ©ia usando computador e tudo o mais. NÃ£o aguentamos ficar quietos!</li>
	<li>Relacionado a isso, alguns sentiram falta das conversas do <a href="http://www.dojosp.org/?p=31">Uber Dojo</a>.</li>
	<li>Ainda por conta do nÃºmero de pessoas, nem todo mundo pode codar. 7 minutos parece muito tempo em um grupo maior.</li>
	<li>Python de novo?</li>
	<li>Pequenas dificuldades com a linguagem atrapalham (discutimos isso tambÃ©m no Parking Lot)</li>
	<li>Quem jÃ¡ sabe python bate o olho na mensagem de erro e entende, sem dar tempo para todos lerem.</li>
	<li>NÃ£o ficamos convencidos de que todos os participantes entendiam o que estava acontecendo a todo momento.</li>
	<li>Talvez com razÃ£o, pois alguns nÃ£o entenderam o motivo do mÃ©todo auxiliar para testes.</li>
	<li>ComeÃ§amos com atraso.</li>
	<li>Tivemos alguns passos "gigantes" tanto no comeÃ§o quanto no fim. Faltou lembrar de simplicidade e baby steps.</li>
	<li>O problema era "ruim" por envolver um sorteio e exigir assim que houvessem vÃ¡rias respostas possÃ­veis. Na verdade o ruim foi que nÃ£o percebemos isso no comeÃ§o, o que nos pegou totalmente desprevinidos no meio da sessÃ£o. Teria sido um bom dia para experimentar a "pausa no meio", mas nÃ£o fizemos.</li>
	<li>Os testes eram muito trabalhosos, tÃ£o complexos que a gente nem chegou no problema.</li>
</ul>
No Parking Lot, discutimos:
<ul>
	<li>Dojo na Globalcode - um convite do pessoal da <a href="http://www.globalcode.com.br">Globalcode</a> de fazer uma sessÃ£o no auditÃ³rio deles lÃ¡ na av. Paulista.</li>
	<li>Distribuir post-its no comeÃ§o, para preenchermos durante a sessÃ£o.</li>
	<li>Quando a dupla tem problemas com sintaxe... a platÃ©ia deve ficar calada mesmo assim? Deve esperar eles pedirem ajuda? Ou deve ajudar mesmo sem o pedido, mostrando a mensagem de erro e ensinando o que significa?</li>
	<li>Como testar algo com resultado "aleatÃ³rio"?</li>
	<li>"Parece difÃ­cil demais? NÃ£o entendeu direito? Parece mais complicado do que deveria? TÃ¡ errado!" - se alguÃ©m se sentir assim durante o Dojo, tem algo de errado acontecendo, deverÃ­amos parar e ir com mais calma.</li>
</ul>
Falamos tambÃ©m de uma "checklist" de coisas pro Dojo, mas nÃ£o houve muita aprovaÃ§Ã£o da idÃ©ia pois achamos que nÃ£o seria seguida. Discutimos tambÃ©m a idÃ©ia de "Dojo smells", os maus cheiros do Dojo, que poderiam ajudar a gente, e outros, a identificar quando tem algo errado no ar. :-)

Ah, e queremos reciclar os copos!
<h3>A terceira cadeira</h3>
Pessoal, enquanto escrevia esse post fiquei pensando e tive uma idÃ©ia... queria saber o que vocÃªs acham!

E se tivÃ©ssemos uma terceira cadeira lÃ¡ na frente? A qualquer momento, alguÃ©m da platÃ©ia poderia vir e sentar nessa cadeira, dando uma forÃ§a pra dupla que estÃ¡ codando. Ele adquiri temporariamente o "direito" de falar no vermelho. Ã‰ claro que essa pessoa nÃ£o poderia codar e deveria sair logo da cadeira, mas seria uma maneira de organizar as sugestÃµes que vem da platÃ©ia, principalmente no vermelho. Facilitaria tambÃ©m pra ajudar a dupla com problemas de sintaxe ou lembrar de dar um passo mais simples.

Pensei nisso pois tem um formato de open spaces que Ã© parecido (uma roda de cadeiras, sempre deve ter uma vazia, sÃ³ que em estÃ¡ sentado pode falar; se alguÃ©m senta na cadeira vazia, alguÃ©m que estÃ¡ sentado deve levantar). E tambÃ©m porque fazemos um pouco disso no Uber Dojo - ao longo da sessÃ£o, vÃ¡rias vezes acontece de alguÃ©m sentar com a dupla principal para ajudar ou simplesmente para olhar o que estÃ¡ acontecendo...

Ã‰ uma idÃ©ia que precisa ser refinada com certeza, mas talvez seja legal. O que vocÃªs acham?
