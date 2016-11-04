# storyboard-reference-demo

## Requirements

* Xcode 8.0+
* LLVM 8.0+
* Swift 3
* Carthage 0.18+

## Setup

Before proceeding make sure that you have an up-to-date [git ignore](https://gist.github.com/bojan/8706331) file.

Bootstrap fresh clones using:

    carthage bootstrap --use-submodules --use-ssh --platform ios

When you need to update the dependencies run:

    carthage update --use-submodules --use-ssh --platform ios

Or this, when you need just to rebuild them:

    carthage build --platform ios --no-skip-current
    
**Note:** The use of submodules and SSH is mandatory.

## About

This is a demo project to show a few useful cases for the use of storyboard references. The following 3 scenarios are covered:

* Referencing a scene within a storyboard.
* Referencing a scene in a separate storyboard within the project.
* Referencing a scene in an external framework.
