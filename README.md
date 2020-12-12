# Sublime PureBasic

    PureBasic 5.73 | Sublime Text 3 Dev Build 3210

[Sublime Text 3] syntax support for [PureBasic].

- https://github.com/tajmone/sublime-purebasic

> __WIP ALPHA__ — This package is still in early Alpha development, but it's already usable (although its features are still limited). Contributions are welcome.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About This Project](#about-this-project)
    - [Turnip Blood Issues](#turnip-blood-issues)
- [Requirements](#requirements)
- [Installation](#installation)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# About This Project

I've been working on-and-off at this package in my (very little) spare time.
I didn't set off with the intention of creating a full-blown package to be distributed on Package Control, rather I wanted to be able to use Sublime Text along with PureBasic's native IDE to speed up those code editing operations that on PB's IDE tend to be tedious and lengthy (PB IDE doesn't even allow you to move lines of code around, let alone enjoy multi-cursors).

Currently this package allows working with PureBasic source files in a fairly decent way, even though the syntax definition is far for complete.
I've nevertheless decided that it's mature enough for public sharing, and open the doors to contributors and feedback.

Some aspects of PB's native IDE would be hard to incorporate in a ST package — all the debugging and profiling tools, the visual forms-editor, etc. — so chances are that this package will never get beyond offering syntax highlighting for PureBasic, symbols indexing, autocompletions and a few useful snippets.

Besides, keeping any PureBasic syntax up to date with the latest PB release is an intrinsically difficult task, for a number of reasons which I've come to label as «Turnip Blood Issues».


## Turnip Blood Issues

There is a saying, "_You can't squeeze blood from a turnip._"

If you've ever tried to create a syntax highlighter definition for the PureBasic syntax then you'll know what that saying is all about.
Obtaining the full list of PureBasic keywords and constants is a much harder task than it might seem at first.
I've banged my head against it when I started to work on PureBasic definitions for [highlight.js][PB HLjs] and [Highlight][PB HL].

When creating a syntax for an editor, you wish to include only the keywords of the latest PB release, but for syntax highlighters you wish to add up the keywords from every version as the end user might be highlighting new and old code alike.


For some unfathomable reasons, this information is not publicly available.
[Long users discussions have taken place] in order to come to grips with ways to access the full list of keywords, constants and commands (for all OSs), but there seems no easy way as these are not documented, and querying the PB compiler for the list of procedures and constants only produces the tokens supported by the OS the compiler is running on (which makes it difficult to create a cross platform package capable of covering Windows, macOS and Linux).

Ultimately, I had to resort to rather hackish ways to extract the full list of keywords from each PureBasic edition: the Windows distribution of PureBasic contains a precompiled (and closed source) DLL for syntax highlighting PB code, and the CHM Help file contains a list (incomplete) of PB commands.
With the help of user [Marc56us], I've managed to create a set of tools to extract the the list of commands form the CHM Help file and to parse the DLL and extract the keywords list.
I then use the extracted lists from the different PB releases and diff them, to see if new keywords were introduced and/or old one dropped. (see [Syntax Highlighting Guidelines] at [PureBasic Archives]).

If this might sound to you a rather tedious task, well ... _it is_ — as I said, it's like trying to squeeze blood out of a turnip.

> __UPDATE__ — Some time after this project was created, the full source code of PureBasic's IDE was publicly released on GitHub, which also includes the full list of PureBasic keywords:
>
> - https://github.com/fantaisie-software/purebasic
>
> So it's finally possible to get hold of the keywords list of the latest PB version from the [`KeywordsData.pbi`][KeywordsData.pbi] source file! I still need to come up with some PB code to extract the keywords and export them, and then find a way to track how to update the ST syntax definition; but their availability is surely great news when it comes to maintaining this project updated.

[KeywordsData.pbi]: https://github.com/fantaisie-software/purebasic/blob/devel/PureBasicIDE/KeywordsData.pbi

For the above reasons, trying to keep alive any project related to PureBasic syntax is destined to be a daunting task, and needlessly cumbersome one too — I don't quite understand how the fact that PureBasic is a closed source commercial project justifies not publishing such data; after all one might (reasonably so) argue that the proliferation of third party syntax highlighters for PureBasic would contribute to the language's echosystem and its growth, which in turn should have positive effects on its sales.
Or that enabling syntax highlighting on PB's forums would be an enhacement of its users' experience (following the example of portals like [Rosetta Code], [Developpez.com] and others which syntax highlight PB code); but the official PB website seems adamant in its resolution to not highlight the source code of its own product.

[Rosetta Code]: https://rosettacode.org/wiki/Category:PureBasic "Visit Rosetta Code"
[Developpez.com]: https://purebasic.developpez.com/ "Visit Developpez.com"

Unfortunately, with all things PureBasic there are many turnips to deal with, and every drop of blood has to be squeezed out of them by traversing hardship (even obtaining the version number of a third party library shipped with PureBasic is not always an easy task, if indeed a possible one at all).

If it wasn't for the deep love I have for this language, I would have given up on the task ages ago; instead, I think it's worth (and fun) investing in this beautiful (yet neglegted) language which is now in its 18th birthday, and approaching its sixth incarnation.
Having said that, I can't make any promises that this package will ever reach completion — either due to my own patience encountering its limits turnips-wise, or due to unsolvable knots in the realm of PureBasic unknowns.


# Requirements

- Minum requirement: __Sublime Text 3__ BUILD `>=3170` (uses new `.sublime-color-scheme` format).
- Recomended: bleeding-edge __Sublime Text 3__ [Dev BUILD][ST3 Dev Builds].

Sublime Text 3 has now reached its end-of-life, since Sublime Text 4 is going to be released soon. Therefore, the distinction between stable and dev builds is no longer meaningful, since ST3 won't be further updated except for security patches.


[ST3 Dev Builds]: https://www.sublimetext.com/3dev "Visit Sublime Text 3 Dev Builds page"
[ST3 Stable Builds]: https://www.sublimetext.com/3 "Visit Sublime Text 3 Stable Builds page"

# Installation

Create a "`PureBasic`" folder inside "`<data_path>/Packages/`", open a shell inside "`<data_path>/Packages/PureBasic/`" and type:

```
git clone https://github.com/tajmone/sublime-purebasic .
```

Don't forget the "`.`" after the repository URL! it's needed in order to clone the repository contents directly into the current folder, without creating a "`sublime-purebasic`" container folder.


# License

- [`LICENSE`](./LICENSE)

```
MIT License

Copyright (c) 2018 Tristano Ajmone
https://github.com/tajmone/sublime-purebasic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Sublime Text 3]: https://www.sublimetext.com/ "Visit Sublime Text website"
[Package Control]: https://packagecontrol.io/

[PureBasic]: https://www.purebasic.com/ "Visit PureBasic website"
[PureBasic on Wikipedia]: https://en.wikipedia.org/wiki/PureBasic

[PureBasic Archives]: https://github.com/tajmone/purebasic-archives

<!-- PB Forum Links -->

[Long users discussions have taken place]: https://www.purebasic.fr/english/viewtopic.php?&p=506269 "View PB Forum thread 'Need The Full List of PureBASIC Keywords'"

<!-- PB Syntax Highlighting -->

[PB HLjs]: https://github.com/highlightjs/highlight.js/blob/master/src/languages/purebasic.js "View the PureBasic syntax for highlight.js"
[PB HL]: https://gitlab.com/saalen/highlight/blob/master/langDefs/purebasic.lang "View the PureBasic syntax for Highlight"

[Marc56us]: https://www.purebasic.fr/english/memberlist.php?mode=viewprofile&u=11155

[Syntax Highlighting Guidelines]: https://github.com/tajmone/purebasic-archives/tree/master/syntax-highlighting/guidelines

<!-- EOF -->
