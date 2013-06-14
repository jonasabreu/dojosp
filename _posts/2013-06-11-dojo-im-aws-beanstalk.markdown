--- 
layout: post
title: "Coding Dojo AWS Elastic Beanstalk @ iMasters"
date: 2013-06-11 19:00:00 -03:00
author: ale_borba
---
+ **Data:** 11/06/2013
+ **Horário:** 19:30
+ **Tecnologia:** [AWS Elastic Beanstalk](http://aws.amazon.com/pt/elasticbeanstalk/)
+ **Problema:** Colocar o [Postmon](http://www.postmon.com.br) para funcionar no Beanstalk
+ **Formato:** [PreparedKata](http://codingdojo.org/cgi-bin/wiki.pl?PreparedKata)
+ **Código:** Em breve :)

Este nosso Coding Dojo foi marcado por um novo formato. Desta vez fizemos usando o formato **_PreparedKata_**, que tem as seguintes características:

+ Defini-se um limite de tempo.
+ A solução é iniciada do zero.
+ Usar TDD e BabySteps.
+ Todo passo deve ser explicado para que todos consigam acompanhar.
+ As pessoas só devem interromper se não estiverem entendendo algo.

É claro que nem todos esses passos foram seguidos a risca, mas na medida do possível todos foram cumpridos.

Tivemos a presença de 13 pessoas bastante concentradas e interessadas, dessa forma, não aconteceram dispersões graves e o fluxo do Coding Dojo seguiu (quase) como o programado.

No início eu, Alê Borba, fiz uma [rápida apresentação](http://www.slideshare.net/aleborba/elastic-beanstalk-ptbr) sobre o ecosistema da Amazon Web Services e sobre como é e para que serve o Elastic Beanstalk. Essa apresentação serviu para deixar todos alinhados com o assunto do Dojo e dar um ponta pé inicial sobre o que seria o Coding Dojo.

O problema que escolhi para este Kata foi colocar o Postmon funcionando no ecosistema do Elastic Beanstalk, com deploy via [Git](http://www.git-scm.com/), monitoramento, escalabilidade, conexões externas e tals. E no final, fazer um teste de stress na aplicação para ver a coisa escalar. :)

Para todos entenderem o desafio, vou explicar um pouco sobre como o Postmon funciona hoje e quais eram os principais desafios em colocá-lo no Elastic Beanstalk:

O Postmon, hoje, roda em um único servidor, que serve como servidor de banco de dados e servidor de aplicação, este era o primeiro desafio, separar o servidor [MongoDB](http://www.mongodb.org) do servidor onde estava rodando a aplicação. Este ponto foi fácil, subimos uma instância EC2 e cofiguramos nela o MongoDB. Uma outra especificidade do Postmon é ele rodar utilizando o Bottle e o lxml como dependências, ai neste ponto algumas pessoas acham que isso não é um problema, basta colocar no _requirements.txt_ e está tudo certo. Não, errado! Por algum motivo, o [PIP](https://pypi.python.org/pypi/pip) utilizado pelos servidores do Elastic Beanstalk não possuem, nos seus mirros, nem o Bottle e nem o lxml. Tivemos que fazer um hack simples para o Bottle e um hack bastante bizarro para o lxml (quem já teve que compilá-lo sabe o quão chato ele é para isso.)

Como o tempo acabou ficando curto, não conseguimos resolver o problema totalmente. Mas combinamos de marcar um dia para revisitarmos o problema, já com uma "pré" solução e fazermos os tão sonhados e queridos pelos presentes, testes de stress! o/


**Retrospectiva:**

+ _Pontos Positivos:_
    
    + Boas e muitas dicas
    + Pizza, muita pizza
    + Apresentação
    + Não teve dispersão
    + Formato
    + Não funcionou
    + lxml

+ _Pontos Negativos:_
    
    + Não funcionou
    + Não escalou
    + Demora dos testes
    + Falta de atenção
    + lxml

Let's Hack The Planet!