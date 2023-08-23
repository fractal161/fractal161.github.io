---
layout: post
title:  "Welcome to Jekyll!"
date:   2023-08-21 14:22:45 -0500
categories: jekyll update
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

Jekyll requires blog post files to be named according to the following format:

`YEAR-MONTH-DAY-title.MARKUP`

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, and `MARKUP` is the file extension representing the format used in the file. After that, include the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight 6502 %}

9C84: A5 55 LDA score+2
9C86: 29 F0 AND #$F0
9C88: C9 A0 CMP #$A0
9C8A: 90 08 BCC @noMaxout
9C8C: A9 99 LDA #$99
9C8E: 85 53 STA score+0
9C90: 85 54 STA score+1
9C92: 85 55 STA score+2
@noMaxout:
9C94: C6 A8 DEC generalCounter
9C96: D0 9F BNE @addPointsLoop

{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
