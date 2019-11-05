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

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/SantiagoGuerra/tic-tac-toe">
    <img src="img/mLogo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Tic tac toe</h3>

  <p align="center">
    This project is part of the Microverse Ruby curriculum!
    <br />
    <a href="https://github.com/SantiagoGuerra/tic-tac-toe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@MariaEugeniaEu2/tic-tac-toe">View Demo</a>
    ·
    <a href="https://github.com/SantiagoGuerra/tic-tac-toe/issues">Report Bug</a>
    ·
    <a href="https://github.com/SantiagoGuerra/tic-tac-toe/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Live Version](#live-version)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://repl.it/@MariaEugeniaEu2/tic-tac-toe)

This is the fifth project of the Microverse Ruby Section

This is also the first project of the Odin project (Ruby Project [Programing: OOP](https://www.theodinproject.com/courses/ruby-programming/lessons/oop))

<!-- ABOUT THE PROJECT -->
## Installation

If you want to install and play the game you need: 
* ruby installed in your computer
* [download](https://github.com/SantiagoGuerra/tic-tac-toe/archive/master.zip) or [clone](https://github.com/SantiagoGuerra/tic-tac-toe.git) this repo.
* and execute bin/main.rb file 

## Game Rules

1. The game is played on a grid that's 3 squares by 3 squares.
```
       1 | 2 | 3
	   - + - + -
	   4 | 5 | 6
	   - + - + -
	   7 | 8 | 9

```

2. You can either be X or O, your friend would be the one you don't choose by default (if you choose X your friend will be O). Players take turns putting their marks in empty squares.

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

### Built With
This project was built using these technologies.
* Ruby
* Rubocop
* VsCode
* Notepad++

<!-- LIVE VERSION -->
## Live version

You can see it working [here](https://repl.it/@MariaEugeniaEu2/tic-tac-toe)

<!-- CONTACT -->
## Contact

Santiago Guerra - [@santi_gueam](https://twitter.com/santi_gueam)  - [@SantiagoGuerra](https://github.com/SantiagoGuerra) - guerrasantiago19@gmail.com
<br />
<br />
María Eugenia Quemé - [@MaruKK](https://twitter.com/MaruKK) - [@euqueme](https://github.com/euqueme) - euqueme@gmail.com

Project Link: [https://github.com/SantiagoGuerra/tic-tac-toe)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
* [tic-tac-toe](https://www.exploratorium.edu/brain_explorer/tictactoe.html)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/SantiagoGuerra/tic-tac-toe.svg?style=flat-square
[contributors-url]: https://github.com/SantiagoGuerra/tic-tac-toe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/SantiagoGuerra/tic-tac-toe.svg?style=flat-square
[forks-url]: https://github.com/SantiagoGuerra/tic-tac-toe/network/members
[stars-shield]: https://img.shields.io/github/stars/SantiagoGuerra/tic-tac-toe.svg?style=flat-square
[stars-url]: https://github.com/SantiagoGuerra/tic-tac-toe/stargazers
[issues-shield]: https://img.shields.io/github/issues/SantiagoGuerra/tic-tac-toe.svg?style=flat-square
[issues-url]: https://github.com/SantiagoGuerra/tic-tac-toe/issues
[product-screenshot]: img/screenshot.PNG
