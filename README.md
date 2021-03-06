
<!-- README.md is generated from README.Rmd. Please edit that file -->

## NOTES 

All these functions has moved to [{golem}](https://github.com/ThinkR-open/golem).

# brighter

{brighter} is a toolbox of random functions for easier shiny
development.

``` r
library(brighter)
```

## Installation

You can install the dev version of brighter from GitHub with:

``` r
remotes::install_github("Thinkr-open/brighter")
```

## List of functions

### `with_red_star`

Adds a red star at the end of the text (for example for indicating
mandatory fields).

    with_red_star("Plop")
    <span>Plop<span style="color:red">*</span></span>

### `enurl`

Takes an url and a text and create a link:

    enurl("https://www.thinkr.fr", "ThinkR")
    <a href="https://www.thinkr.fr">ThinkR</a>

### `rep_br`

Repeat a `tags$br` n times

    rep_br(times = 3)
    <br/> <br/> <br/>

### `list_to_li` & `list_to_p`

Turns an R list to an HTML list or into paragraphs.

    list_to_li(c("a","b"))
    <li>a</li>
    <li>b</li>

You can add a class to each with the class parameters.

    list_to_p(c("One","Two"), class = "pouet")
    <p class="pouet">One</p>
    <p class="pouet">Two</p>

### `named_to_li`

Turn a named vector into a named html list:

    pouet <- c("One", "two", "three")
    names(pouet) <- c("a", "b", "c")
    
    named_to_li(pouet)
    <li><b>a:</b> One</li>
    <li><b>b:</b> two</li>
    <li><b>c:</b> three</li>

You can also pass a class:

    named_to_li(pouet, class = "this")
    <li class="this"><b>a:</b> One</li>
    <li class="this"><b>b:</b> two</li>
    <li class="this"><b>c:</b> three</li>

### `tagRemoveAttributes`

Does the opposite of tagAppendAttributes

    a <- tags$p(src = "plop", style = "this", "pouet")
    
    a
    <p src="plop" style="this">pouet</p>
    
    tagRemoveAttributes(a, "src")
    <p style="this">pouet</p>
    
    tagRemoveAttributes(a, "src", "style")
    <p>pouet</p>

### `display` and `undisplay`

Put and remove a div to and from a `<span style="display: none;">`.
Allow to dynamically show and hide content.

    a <- shiny::tagAppendAttributes(
      shiny::tags$a("pouet"), 
      style = "align: center;")
    b <- undisplay(a)
    b
    <span style="display: none;">
      <a style="align: center;">pouet</a>
    </span>
      
    display(b)
    <a style="align: center;">pouet</a>

Please note that the ‘brighter’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
