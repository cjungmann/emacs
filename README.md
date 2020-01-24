# EMACS Help

This project/document will not replace a proper EMACS document, but I intend
to use it to save useful information that I have difficulty finding when I
need it.

You should know that I use EMACS in *nox* mode, that is, in a console, and
my interest in documenting solutions targets that environment.

## Files

Actually, there is only one file besides this README.  This number may grow,
or have grown between the time I wrote this and you read it.

- **init.el** is a LISP file that sets the EMACS environment to my
  preferences.

  This file should go in your personal EMACS directory, `~/.emacs.d`.

## How To Do Stuff

### Changing Colors

I don't like some of the default syntax-highlighting color choices.  In
particular, **function names** are too dark a blue to easily read on my laptop
screen. and **region highlighting** does not have enough contrast.

Change default colors by invoking **M-x** `list-faces-display`

I changed
- **font-lock-function-name-face**, whose blue is too dark to read on the
  black console, I changed the foreground color to *blue*.
- **minibuffer-prompt**, with the same original blue, I changed to the
  same *blue*
- **region**, whose yellow background doesn't contrast much with white
  text, I changed the background color to *brightblack*.

