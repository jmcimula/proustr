
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/proustr)](https://cran.r-project.org/package=proustr)

`proustr` is now on [CRAN](https://cran.r-project.org/web/packages/proustr/index.html).

Tools for Doing Natural Language Processing with Proust's Novels
----------------------------------------------------------------

<p align="center">
<img src="https://github.com/ColinFay/proustr/blob/master/proustr_hex.png?raw=true" width = "250">
</p>
This package gives you access to tools designed to do NLP on the books from Marcel Proust "À la recherche du temps perdu" collection. Of course, these tools can be expanded to almost all french texts.

Here is a list of all the books contained in this pacakage :

-   Du côté de chez Swann (1913): `ducotedechezswann`.
-   À l'ombre des jeunes filles en fleurs (1919): `alombredesjeunesfillesenfleurs`.
-   Le Côté de Guermantes (1921): `lecotedeguermantes`.
-   Sodome et Gomorrhe (1922) : `sodomeetgomorrhe`.
-   La Prisonnière (1923) :`laprisonniere`.
-   Albertine disparue (1925, also know as : La Fugitive) : `albertinedisparue`.
-   Le Temps retrouvé (1927) : `letempretrouve`.

Find your way into {proustr}
----------------------------

{proustr} is divided into two type of functions :

-   `proust_*()` functions return data objects (books, characters, stop words...)

-   `pr_*()` functions perform actions on the data. `pr` is short for p(roust)r, pr(oust), (natural )p(rocess for f(r)ench, or anything you can think of :). This shortcode refers to functions like `pr_clean_punc()`.

`proust_*()` functions
----------------------

### Books

``` r
library(proustr)
books <- proust_books()
```

### A tibble of characters

`proust_char` gives a tibble with each characters and how many time they appeared in each book.

``` r
characters <- proust_characters()
characters
#> # A tibble: 461 x 1
#>              perso
#>  *           <chr>
#>  1            A.J.
#>  2    Académicien 
#>  3        Adolphe 
#>  4      Agrigente 
#>  5      Agrigente 
#>  6            Aimé
#>  7 Albaret Céleste
#>  8          Albert
#>  9       Albertine
#> 10           Albon
#> # ... with 451 more rows
```

Get random sentences
--------------------

Create your own Proust text with the proust\_random() function :

``` r
proust_random()
[1] "Cette voix était restée la même, inutilement chaude, prenante, avec un rien d’accent anglais."

purrr::map(1:5, proust_random)

[[1]]
[1] "Du reste cette réaction des matériaux locaux sur le génie qui les utilise et à qui elle donne plus de verdeur ne rend pas l’œuvre moins individuelle, et que ce soit celle d’un architecte, d’un ébéniste, ou d’un musicien, elle ne reflète pas moins minutieusement les traits les plus subtils de la personnalité de l’artiste, parce qu’il a été forcé de travailler dans la pierre meulière de Senlis ou le grès rouge de Strasbourg, qu’il a respecté les nœuds particuliers au frêne, qu’il a tenu compte dans son écriture des ressources et des limites, de la sonorité, des possibilités, de la flûte ou de l’alto."

[[2]]
[1] "Aussi bien, pas plus que les saisons à ses bras de mer infleurissables, les modernes années n’apportent de changement à la cité gothique ; je le savais, je ne pouvais l’imaginer, mais voilà ce que je voulais contempler, de ce même désir qui jadis, quand j’étais enfant, dans l’ardeur même du départ, avait brisé en moi la force de partir ; je voulais me trouver face à face avec mes imaginations vénitiennes ; voir comment cette mer divisée enserrait de ses méandres, comme les replis du fleuve Océan, une civilisation urbaine et raffinée, mais qui, isolée par leur ceinture azurée, s’était développée à part, avait eu à part ses écoles de peinture et d’architecture ; admirer ce jardin fabuleux de fruits et d’oiseaux de pierre de couleur, fleuri au milieu de la mer, qui venait le rafraîchir, frappait de son flux le fût des colonnes et, sur le puissant relief des chapiteaux, comme un regard de sombre azur qui veille dans l’ombre, posait par taches et fait remuer perpétuellement la lumière. Ne doutant pas que ce fût pour montrer qu’ils n’étaient pas intimidés par les titres, elle souhaitait d’imiter leur fierté, mais n’avait pas bien saisi par quelle forme grammaticale elle se traduisait."

[[3]]
[1] "Legrandin qui, retenu à Paris par sa profession d’ingénieur, ne pouvait, en dehors des grandes vacances, venir à sa propriété de Combray que du samedi soir au lundi matin. » Il avait bien pensé dans sa tendresse paternelle et pour émouvoir son fils à faire venir  l’instrument. Il me parla de la grande chaleur qu’il faisait ces jours-ci, mais, bien qu’il fût lettré et eût pu s’exprimer en bon français, il me dit : « Vous ne souffrez pas de cette hyperthermie ?"

[[4]]
[1] "À côté de leur immensité, je trouvai qu’un coup de chapeau serait mesquin et pourrait faire supposer à mon oncle que je ne me croyais pas tenu envers lui à plus qu’à une banale politesse. Comme ce n’était pas un lundi, nous ne savions pas si nous trouverions Mme Verdurin, car sauf ce jour-là, où elle recevait, il était imprudent d’aller la voir à l’improviste. Les mêmes noms de lieux, si troublants pour moi jadis que le simple Annuaire des Châteaux, feuilleté au chapitre du département de la Manche, me causait autant d’émotion que l’Indicateur des chemins de fer, m’étaient devenus si familiers que cet indicateur même, j’aurais pu le consulter, à la page Balbec-Douville par Doncières, avec la même heureuse tranquillité qu’un dictionnaire d’adresses. » Et elle dit à son institutrice de se dépêcher. — Mais, lui dis-je, est-ce que cela n’ennuie pas votre père ? — Pas le moins du monde. — Cependant, il avait peur que cela ne semble bizarre à cause de cet anniversaire. — Qu’est-ce que cela peut me faire ce que les autres pensent ?"

[[5]]
[1] "Tout d’un coup, sur le sable de l’allée, tardive, alentie et luxuriante comme la plus belle fleur et qui ne s’ouvrirait qu’à midi, Mme Swann apparaissait, épanouissant autour d’elle une toilette toujours différente mais que je me rappelle surtout mauve ; puis elle hissait et déployait sur un long pédoncule, au moment de sa plus complète irradiation, le pavillon de soie d’une large ombrelle de la même nuance que l’effeuillaison des pétales de sa robe. Comment ? Derrière la barrière parfumée que lui faisait la beauté choisie, il était isolé au milieu d’un salon comme au milieu d’une salle de spectacle dans une loge et, quand on venait le saluer, au travers pour ainsi dire de la beauté de sa compagne, il était excusable de répondre fort brièvement et sans s’interrompre de parler à une femme. Elle et son mari furent, d’ailleurs, ainsi que le prince d’Agrigente, invités à ce dîner, que Mme Bontemps et Cottard eurent deux manières de raconter, selon les personnes à qui ils s’adressaient. Huit jours avant les Rogations !"
```

### NLP data tools

You can get a tibble of stopwords with:

``` r
proust_stopwords()
```

Sentiments lexicon is launched with :

``` r
proust_sentiments()
#> # A tibble: 14,127 x 2
#>               word polarity
#>              <chr>    <chr>
#>  1 à ce endroit là positive
#>  2       à le hâte negative
#>  3          à part negative
#>  4           à pic negative
#>  5      à rallonge negative
#>  6      abasourdir negative
#>  7        ablation negative
#>  8      abominable negative
#>  9          abrupt negative
#> 10          absent negative
#> # ... with 14,117 more rows
```

You can chose between polarity (positive or negative — default behavior, or a score on six sentiments (joy, fear, sadness, anger, surprise, disgust) with `type = "score"`.

Install proustr
---------------

Install this package directly in R :

``` r
install.packages("proustr")
```

From Github :

``` r
devtools::install_github("ColinFay/proustr")
```

### Contact

Questions and feedbacks [welcome](mailto:contact@colinfay.me) !
