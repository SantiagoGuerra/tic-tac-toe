<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
![Hireable](https://cdn.rawgit.com/hiendv/hireable/master/styles/default/yes.svg)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/euqueme/tic-tac-toe">
    <img src="img/mLogo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Tic tac toe</h3>

  <p align="center">
    This project is part of the Microverse Ruby curriculum!
    <br />
    <a href="https://github.com/euqueme/tic-tac-toe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@MariaEugeniaEu2/tic-tac-toe">View Demo</a>
    ·
    <a href="https://github.com/euqueme/tic-tac-toe/issues">Report Bug</a>
    ·
    <a href="https://github.com/euqueme/tic-tac-toe/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Live Version](#live-version)
  * [Usage](#usage)
  * [Automated Test](#automated-test)
* [Game Rules](#game-rules)
* [Author](#author)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://tic-tac-toe.mariaeugeniaeu2.repl.run/)

This is the fifth project of the Microverse Ruby Section

This is also the first project of the Odin project (Ruby Project [Programing: OOP](https://www.theodinproject.com/courses/ruby-programming/lessons/oop))

### Built With
This project was built using these technologies.
* Ruby
* Rspec
* Rubocop
* VsCode
* Notepad++

<!-- LIVE VERSION -->
### Live Version

You can see it working [here](https://tic-tac-toe.mariaeugeniaeu2.repl.run/)

### Usage

If you want to install and play the game you need: 
* ruby installed in your computer
* [download](https://github.com/euqueme/tic-tac-toe/archive/development.zip) or clone this repo
  - Clone over HTTPS:
  ```
   $ git clone https://github.com/euqueme/tic-tac-toe.git
  ```
  - Clone over SSH:
  ```
   $ git clone ssh://git@github.com:euqueme/tic-tac-toe.git
  ```
* and execute bin/main.rb file 

<!-- AUTOMATED TEST -->
### Automated Test

To run the test you need to cd into the tic-tac-toe diretory and run:

```rspec spec/```

## Game Rules

1. The game is played on a grid that's 3 squares by 3 squares.
```
           1 | 2 | 3
	   - + - + -
	   4 | 5 | 6
	   - + - + -
	   7 | 8 | 9

```

2. You can either be X or O; your friend will take the opposing sign by default (in other words, if you choose X, your friend will be O). Players take turns placing their marks in empty squares.

```
Your turn
           X | 2 | 3
	   - + - + -
	   4 | 5 | 6
	   - + - + -
	   7 | 8 | 9

Your friends' turn

           X | 2 | 3
	   - + - + -
	   4 | O | 6
	   - + - + -
	   7 | 8 | 9

```

3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.

```
Winning combinations (W is equal to X or O)

   W | W | W       1 | 2 | 3	   1 | 2 | 3       W | 2 | 3       1 | W | 3	   1 | 2 | W       W | 2 | 3	   1 | 2 | W
   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -
   4 | 5 | 6	   W | W | W	   4 | 5 | 6	   W | 5 | 6	   4 | W | 6	   4 | 5 | W	   4 | W | 6	   4 | W | 6
   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -	   - + - + -
   7 | 8 | 9	   7 | 8 | 9	   W | W | W	   W | 8 | 9	   7 | W | 9	   7 | 8 | W	   7 | 8 | W	   W | 8 | 9

```

4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends and nobody wins

```
for example: nobody wins

           X | X | O
	   - + - + -
	   O | O | X
	   - + - + -
	   X | O | O

```
<!-- CONTACT -->
## Author
👤 **María Eugenia Quemé** 

- Twitter: [@MaruKK](https://twitter.com/MaruKK) 
- Github: [@euqueme](https://github.com/euqueme) 
- Gmail: euqueme@gmail.com

👤 **Santiago Guerra** 
- Twitter: [@santi_gueam](https://twitter.com/santi_gueam) 
- Github: [@SantiagoGuerra](https://github.com/SantiagoGuerra) 
- Gmail: guerrasantiago19@gmail.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/euqueme/tic-tac-toe/issues).

## Show your support

Give a ⭐️ if you like this project!

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
* [tic-tac-toe](https://www.exploratorium.edu/brain_explorer/tictactoe.html)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/euqueme/tic-tac-toe.svg?style=flat-square
[contributors-url]: https://github.com/euqueme/tic-tac-toe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/euqueme/tic-tac-toe.svg?style=flat-square
[forks-url]: https://github.com/euqueme/tic-tac-toe/network/members
[stars-shield]: https://img.shields.io/github/stars/euqueme/tic-tac-toe.svg?style=flat-square
[stars-url]: https://github.com/euqueme/tic-tac-toe/stargazers
[issues-shield]: https://img.shields.io/github/issues/euqueme/tic-tac-toe.svg?style=flat-square
[issues-url]: https://github.com/euqueme/tic-tac-toe/issues
[product-screenshot]: img/screenshot.PNG
