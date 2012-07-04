--- 
wordpress_id: 19
layout: post
title: "Dojo S\xC3\x83\xC2\xA1bado 02 - Produto Escalar de Vetores"
date: 2008-06-22 23:37:03 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=16
---
<ul>
	<li><span style="#000000;"><strong>Data:</strong></span> 14/06/2008</li>
	<li><span style="#000000;"><strong>Participantes:</strong></span> Suelen, Fabs e Adolfo</li>
	<li><strong><span style="#000000;">Randori:</span></strong> Produto escalar entre 2 vetores, em <a href="http://www.erlang.org" target="_self">Erlang</a> com <a href="http://svn.process-one.net/contribs/trunk/eunit/doc/overview-summary.html" target="_self">Eunit</a></li>
	<li><strong>CÃ³digo fonte:</strong> <a href="http://dojo_sp.googlegroups.com/web/02SAB-ProdutoEscalarChain.tar.gz" target="_self">http://dojo_sp.googlegroups.com/web/02SAB-ProdutoEscalarChain.tar.gz</a></li>
	<li><strong>Fotos</strong>: <a href="http://picasaweb.google.com/fabriciosn/DojoSabado1406" target="_blank">http://picasaweb.google.com/fabriciosn/DojoSabado1406</a></li>
</ul>
<span style="small;">Como tÃ­nhamos uma nova participante, a sessÃ£o comeÃ§ou com a apresentaÃ§Ã£o do Dojo. Logo depois, o Fabs deu uma introduÃ§Ã£o sobre Erlang, a linguagem com a qual estamos realizando os Dojos de sÃ¡bado. Em seguida, sorteamos a <a href="http://www.creativethink.com/whack/" target="_self">carta da criatividade</a> e deu â€œPut a lion in your heartâ€.</span> <span style="small;">Passadas as formalidades iniciais, escolhemos um problema: calcular o produto escalar entre 2 vetores. Ã‰ um problema simples, porÃ©m foi muito bom para praticarmos a linguagem ainda nova para nÃ³s, TDD, passos de bebÃª e outras coisas legais que fazemos no Dojo.</span>
<span style="small;">Vamos ao problema: dados dois vetores (V1 e V2), deverÃ­amos calcular o produto escalar entre eles, ou seja:
</span>

<span style="small;">V1 = (a, b, c)</span>
<span style="small;">V2 = (aÂ´, bÂ´, cÂ´)</span>
<span style="small;">V1 . V2 = a . aÂ´ + b . bÂ´ + c . cÂ´</span>

<span style="small;">Discutimos um pouco e fomos logo Ã  prÃ¡tica. Durante a sessÃ£o, as interrupÃ§Ãµes no vermelho foram freqÃ¼entes e bem-vindas. Precisamos disso para que o Fabs, quando estivesse na platÃ©ia, pudesse tirar as nossas dÃºvidas a respeito da linguagem. A sessÃ£o fluiu muito bem assim, atÃ© que chegamos a um cÃ³digo que resolvia o nosso problema. Ficamos tÃ£o empolgados que passamos a brincar de escrever testes com vetores diferentes sÃ³ pra ver passar.</span>

<span style="small;">Com uns 30 minutos para a chegada da retrospectiva, resolvemos mudar a implementaÃ§Ã£o para fazer os cÃ¡lculos de forma distribuÃ­da. A nossa intenÃ§Ã£o era criar uma </span><span style="small;">Ã¡rvore binÃ¡ria, de modo que as folhas realizassem a multiplicaÃ§Ã£o de 2 elementos dos vetores de entrada, a raiz de cada subÃ¡rvore fizesse a soma das suas folhas e a raiz da Ã¡rvore somasse os seus filhos. Acho que uma imagem pode ajudar:</span>
<p style="center;"><a href="http://www.dojosp.org/wp-content/uploads/2008/06/produto_escalar_tree.png"><img class="size-medium wp-image-17 aligncenter" style="middle;" src="http://www.dojosp.org/wp-content/uploads/2008/06/produto_escalar_tree.png" alt="Ãrvore binÃ¡ria" width="227" height="251" /></a></p>
<p style="center;"><img class="aligncenter" style="middle;" src="http://picasaweb.google.com/adolfosousa/Dojo/photo#5214854325348520642" alt="" /></p>
<p style="center;"><img class="aligncenter" style="middle;" src="/home/adolfo/Documents/dojo/produto_escalar_tree.png" alt="" /></p>
<span style="small;">Desta forma, as multiplicaÃ§Ãµes das folhas da Ã¡rvore poderiam ser feitas por processos diferentes e, enfim, testarÃ­amos o processamento distribuÃ­do, caracterÃ­stico de Erlang. ComeÃ§amos o trabalho mas nÃ£o fomos muito longe pois era hora da retrospectiva.</span>
<h3>Retrospectiva</h3>
<h4><span style="#008000;"><span style="#008000;"><span style="#579d1c;">Coisas Legais:</span></span></span></h4>
<ol>
	<li><span style="#000000;">Atingimos mais do que o esperado. O nosso cÃ³digo <a href="http://dojo_sp.googlegroups.com/web/02SAB-ProdutoEscalarChain.tar.gz?hl=pt-BR&amp;gda=7uolK1EAAAAkUPO-dlXqR8qrHoOGUqYHnOZusgwlzrl63KgCNhEUw2G1qiJ7UbTIup-M2XPURDQlkp_tOjnHtapX3bMtqqW8deh06yGVRyQmaGQGDzp0RBwRHAC5L6ES4dYN7mtEMNg" target="_self">"ProdutoEscalarChain"</a> resolveu o problema
</span></li>
	<li><span style="#000000;">Codamos bastante (estÃ¡vamos em 3 pessoas somente)
</span></li>
	<li><span style="#000000;">O problema simples permitiu que aprendessemos bastantes coisas de Erlang
</span></li>
	<li><span style="#000000;">Gente nova no Dojo</span></li>
	<li><span style="#000000;">O bloco "receive ... end" do Erlang</span></li>
	<li><span style="#000000;">A analogia que o Fabs fez entre Classes e Mensagens</span></li>
	<li><span style="#000000;">O Fabs explica bem :D
</span></li>
</ol>
<h4><span style="#ff0000;"><span style="#ff0000;"><span style="#c5000b;">Coisas nÃ£o legais:</span></span></span></h4>
<ol>
	<li>Pouca gente nesta sessÃ£o</li>
	<li>Erlang tem uma sintaxe estranha</li>
	<li>Ter que fazer vÃ¡rios "receive ... end" para receber o retorno de mais de 1 spawn (pode ser que a linguagem permita manipular o retorno de mais de 1 spawn em um Ãºnico "receive ... end". Precisamos estudar mais a linguagem para utilizar melhor os seus recursos)</li>
	<li>A letra do Fabs Ã© feia (ele mesmo quem escreveu isso)</li>
</ol>
Ainda deu tempo de discutirmos um pouco do porquÃª do Dojo ter fluido tÃ£o bem neste sÃ¡bado. Com certeza, o nÃºmero reduzido de pessoas ajudou. Ã‰ um desafio nosso encontrar uma maneira de manter a fluidez e produtividade em sessÃµes com mais gente.

Por fim, o Fabs ficou de disponibilizar o <a title="Erlang Book" href="http://dojo_sp.googlegroups.com/web/erlang-book-part1.pdf?hl=pt-BR&amp;gda=UwDLm0YAAAAkUPO-dlXqR8qrHoOGUqYHnOZusgwlzrl63KgCNhEUw2G1qiJ7UbTIup-M2XPURDRfIx9PpdItKYAf88T-Uk--1hAkfpDQq8XHWqpTLnoQpg" target="_self">PDF</a> da primeira parte do livro de Erlang, o que ele jÃ¡ fez. O <a title="Erlang Book" href="http://dojo_sp.googlegroups.com/web/erlang-book-part1.pdf?hl=pt-BR&amp;gda=UwDLm0YAAAAkUPO-dlXqR8qrHoOGUqYHnOZusgwlzrl63KgCNhEUw2G1qiJ7UbTIup-M2XPURDRfIx9PpdItKYAf88T-Uk--1hAkfpDQq8XHWqpTLnoQpg" target="_self">arquivo</a> pode ser baixado do grupo ou diretamente de <a title="Erlang Book Part 1" href="http://www.erlang.org/download/erlang-book-part1.pdf" target="_blank">http://www.erlang.org/download/erlang-book-part1.pdf</a>
