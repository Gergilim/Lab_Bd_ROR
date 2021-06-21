# Laboratório de banco de dados aval final

Grupo : Fernando Araujo, Higor Dias, Matheus Roberto e Renato da Silva
Este é apenas um resumo rápido para dar uma ideia geral do que esperar de RoR, no fim deste readme eu vou linkar alguns recursos interessantes para uma leitura mais aprofundada caso você esteja interessado.

## O que é Ruby?

Ruby é uma linguagem de programação orientada a objetos interpretada desenvolvida por Yukihiro Matsumoto.

Esta foi desenvolvida com a mira de ser uma lingaguem altamente produtiva e intuitiva, tornando a vida do programador o mais fácil possível.

Hoje em dia seu maior uso é para desenvolvimento web em Ruby on Rails e scripting, mas esta foi feita pra ser uma lingaguem de uso geral(mais sobre isso depois).

Ruby segue a filosofia de orientação a objetos de maneira muito estrita, pode-se dizer inclusive que tudo em Ruby é um objeto(mais precisamente qualquer valor que pode ser dado para uma variável ou retornado por um método).

**Linguagem de uso geral? <br/>**
Sim, você pode fazer qualquer coisa com Ruby, porém não espere a performance de uma linguagem compilada como C.

## C e Ruby

Embora o programador de Ruby médio nunca tenha que escrever código em C ainda pode-se dizer que Ruby funciona muito perto desta.Isso porque as primeiras versões de Ruby passavam por um interpretador escrito em C, e hoje eu dia muitas bibliotecas(Gems) são feitas diretamente nesta linguagem, principalmente gems que precisam executar tarefas onde tempo é esencial (parsing, por exemplo).

## Ruby on Rails

Ruby on Rails é o principal framework web para Ruby, seguindo os mesmos princípios da linguagem base e assumindo que você está desenvolvendo em Linux(se você for fazer qualquer coisa em Ruby ter uma instalação de Linux, não importa a distro, é altamente recomendável, isso vai te economizar muita dor de cabeça).

Com RoR é muito fácil criar um website funcional apenas com features "out of the box"(inclusive Github e Shopify foram feitos em RoR).

Este framework ainda é altamente opinionado, ou seja, você não pode(e se pude-se, não deveria) sair dos moldes propostos pelos criadores deste, até porque as coisas aqui sempre são do jeito que são por um motivo, siga as regras e seja feliz com a alta produtividade e sintaxe enxuta, enquanto o que está por trás do capô faz todo o trabalho pesado por você.
A ideia principal deste é seguir o padrão MVC.

## SQLite

O RoR tem seu ORM(object-relational mapping, basicamente um jeito de escrever SQL com a sintaxe da linguaguem de sua escolha) default e assume que você sempre vai usar ele, mas como o foco deste trabalho é apresentar uma DB eu vou falar sobre o SQLite, que é a DB padrão do RoR.

**O que é SQLite? <br/>**
Como o nome já implica esté é um BD SQL, mas diferente da maioria de seus similares este não funciona nos moldes da interação Client - Server, mas sim "acoplado" na aplicação final, permitindo que esta opere apenas chamando funções da DB em um único processo, visando melhorar a performance.Além disso SQLite ainda segue ACID.

**SQLite vs as 3 outras BDs open-source mais famosas <br/>**
Quando estamos falando de SQLite, PostgreSQL e MySQL não temos uma escolha clara de qual é melhor, tudo depende do trabalho a ser realizado.
Alguns pontos importantes na hora de escolher a DB:
1. SQLite
    1. Perfomance muito boa
    2. Paralelismo comprometido por somento 1 processo poder alterar a BD ao mesmo tempo.
    3. Não aconselhado para uma aplicação multi-user devido a seu esquema de segurança de acesso a tables.
2. PostgreSQL
    1. Pra cada conexão o Postgre cria um novo processo, comprometendo o uso de memória.
    2. Menor suporte de ferramentas da comunidade quando comparado a MySQL e SQLite.
    3. Segue muito bem as propriedas ACID.
    4. Bom paralelismo com operações write.
3. MySQL
    1. Não tem 100% de compliance com SQL.
    2. Feito pra ser fácil de usar e rápido.

## Links úteis

* https://rspec.info
* https://github.com/faker-ruby/faker
* https://rubyonrails.org
* https://guides.rubyonrails.org/active_record_basics.html
* https://docs.ruby-lang.org/en/
* http://ruby-doc.com/docs/ProgrammingRuby/
* https://www.sqlite.org/docs.html
* https://www.sqlite.org/whentouse.html
* https://www.sqlite.org/different.html
* https://www.sqlite.org/testing.html