<h1 align="center">
  Rails WEB SCRAPPER YTS
</h1>

<!-- **Demo**: [heroku](https://teste.com) -->
## :clipboard: Descrição do projeto

> O WEB SCRAPER YTS é um projeto com a finalidade de extrair dados de filmes do site YIFY Torrents - YTS.

## :computer: Tecnologias

Esse projeto foi desenvolvido utilizando:
- [Ruby on Rails](https://rubyonrails.org/)

## :rocket: Como Iniciar

- Faça um `git clone` do repositório;
- Instale todas dependências rodando no terminal o comando `bundle install`;<br>
- Rode o comando comando no terminal `rails s`;<br>
- Agora é só se divertir! :smiley:

### :triangular_flag_on_post: Rotas

| Metodo   | Rota       | Descrição   |
| ---   | ---            | ---           |
| GET   | /api/search/{titulo_do_filme} | Retorna do YTS todos os filmes que correspondem ao título passado no parâmetro. |


### :gb: In English

## :clipboard: Project description

> WEB SCRAPPER YTS is a project with the purpose of extracting data from films from YIFY Torrents - YTS website.

## :computer: Technologies

This project was developed using:
- [Ruby on Rails](https://rubyonrails.org/)

## :rocket: Getting Started

- Make a `git clone` of the repository;
- Install all dependencies by running the command `bundle install` on the terminal;<br>
- Run the command command in the `rails s` on the terminal;<br>
- Now just have fun! :smiley:

### :triangular_flag_on_post: Endpoints

| Method   | Endpoint       | Description   |
| ---   | ---            | ---           |
| GET   | /api/search/{title_of_movie} | It returns from YTS all movies that match with title passed on parameter. |

## Contributing

1. Fork this repository;
2. Create a branch: `git checkout -b <branch_name>`;
3. Make your changes and commit them: `git commit -m '<commit_message>'`;
4. Push to the original branch: `git push origin <project_name>/<location>`;
5. Create the pull request.