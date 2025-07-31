## 1.1 Introdução ao Desafio, negócio e Contexto

O projeto **TodoList** surgiu como resposta a um desafio técnico proposto pelo Grupo Visagio, cujo objetivo é avaliar a capacidade de um desenvolvedor em construir uma aplicação funcional que permita organizar tarefas de forma eficiente. O desafio central propõe a criação de um sistema onde o usuário possa cadastrar múltiplas listas e, dentro de cada lista, adicionar várias tarefas.

Esse cenário reflete uma necessidade comum no cotidiano de estudantes, profissionais e equipes organizacionais que buscam aumentar sua produtividade através do planejamento e acompanhamento de atividades. A proposta também incentiva a criatividade e autonomia do candidato, permitindo a implementação de funcionalidades adicionais que agreguem valor à experiência do usuário.

A aplicação foi desenvolvida com foco na stack **Ruby on Rails**, conforme exigido pela empresa, e contempla tanto o front-end quanto o back-end, com persistência de dados e autenticação. Além dos requisitos obrigatórios, o projeto adota boas práticas de engenharia de software e organização de backlog.

---

## 1.2 Identificação da Oportunidade ou Problema

O problema identificado está relacionado à ausência de uma ferramenta simples e eficaz para gerenciamento pessoal de tarefas, que seja acessível, responsiva e intuitiva. Muitos usuários enfrentam dificuldade em manter o foco e a organização de suas rotinas, o que afeta diretamente a produtividade.

A oportunidade está em fornecer uma solução que permita:

- Organizar tarefas em listas distintas (por área, projeto, objetivo);
- Acompanhar prazos e status das tarefas;
- Manter o histórico de atividades realizadas;
- Facilitar o acesso por autenticação individualizada.

A aplicação também permite exploração de recursos extras, como visualização de tarefas do dia, marcação de tarefas como concluídas e categorizadas por listas.

---

## 1.3 Desafios do Projeto

Os principais desafios enfrentados no desenvolvimento do TodoList foram:

- Implementar uma estrutura robusta com autenticação segura de usuários e armazenamento de senha com hash;
- Modelar corretamente o relacionamento entre listas e tarefas (1:N);
- Criar uma interface clara e intuitiva, sem distrações, com foco na produtividade;
- Permitir CRUD completo para listas e tarefas, com feedbacks visuais adequados;
- Garantir responsividade e acessibilidade do sistema em navegadores modernos;
- Organizar o backlog utilizando técnicas como MoSCoW, DoR, DoD, INVEST e DEEP.

Além disso, o projeto foi pensado para ser expandido, possibilitando a futura inclusão de filtros avançados, rankings de produtividade e gamificação leve.

---

## 1.4 Segmentação de Clientes

O público-alvo do TodoList inclui:

- Estudantes universitários e de concursos que precisam manter o controle de estudos e prazos;
- Jovens profissionais que lidam com múltiplas tarefas e projetos simultâneos;
- Autodidatas e freelancers que trabalham com organização pessoal intensa;
- Qualquer usuário que deseje uma solução simples, funcional e responsiva para organizar seu dia a dia.

O perfil desses usuários geralmente envolve familiaridade com sistemas digitais, alta autonomia e foco em praticidade e objetividade. Eles valorizam ferramentas que não sejam sobrecarregadas de recursos, mas que executem bem o que se propõem a fazer.
