# Learning Elm The Hard Way

Hi, this is my personal repository in which I will put all of the code that I write in my goal to learn the programming language Elm.

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
---

## My approach

As I'm starting out, the consensus on the interwebs seems to be that starting with the offical Elm Tutorial is the way to go. So that's where I'll be spending my time from the get go. As I progress, I'll try and post links to resources as they come in and if I manage to "complete" one, I'll provide a summary review.

## My setup
To make matters potentially more difficult for myself I tend to be OS agnostic. I code mostly on Mac but I also have a PC at home running Windows 10 that I do end up spending a large amount of time coding on as well. I'll try and post updates on what problems I run into here as well.

## How to run this
Start by following the installation guide over at https://guide.elm-lang.org/install.html. Once you've gone through that you can run the different projects in here with the commands below:

- To run the `basics` project, simply `cd basics && elm-reactor`
- To run the `intermediate` project:
  ```sh
  elm-app start
    Starts the development server.

  elm-app build
    Bundles the app into static files for production.

  elm-app test
    Starts the test runner.

  elm-app eject
    Removes this tool and copies build dependencies, configuration files
    and scripts into the app directory. If you do this, you can’t go back!

  We suggest that you begin by typing:

  cd intermediate
  elm-app start
  ```

## The project setup
Inside this project are a number of folders, and to make life easier