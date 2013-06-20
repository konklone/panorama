# Panorama - A New Kind of Visual Debugger for Ruby

*Note: This code is still at the remarkably bare-bones proof-of-concept stage, and shouldn't be considered usable for any kind of actual real debugging yet. But if you're interested in helping with a new kind of debugger, I'd love some help.*

Panorama is a web-based visual debugger that's different from most. It's primarily inspired by the ideas of Bret Victor, especially those he presented in his essay [Learnable Programming](http://worrydream.com/#!/LearnableProgramming). It exists thanks to Ruby 2.0's new [TracePoint API](http://ruby-doc.org/core-2.0/TracePoint.html). I introduced it during my talk ["Programming is Debugging, So Debug Better"](https://speakerdeck.com/yozlet/programming-is-debugging-so-debug-better) at [Open Source Bridge 2013](http://opensourcebridge.org/).

Rather than stepping through your code in progress, it gathers all the data it can and presents it after execution has finished. It shows you:
* every invocation of a Ruby method, whether in your code or someone else's
* the arguments and return value of each method invocation
* which lines were executed during that invocation
* the values of each local variable at that line

## Panorama's Actual Primary Aim

To be the debugging tool you use instead of adding `puts` statements all over your code.

This sounds like an easy goal. However, *all* the top Ruby coders I've interviewed about this (at least four of them - [see my slides](https://speakerdeck.com/yozlet/programming-is-debugging-so-debug-better)) use `puts` as their first resort when debugging. So, can we make a better replacement?

## Current Status

Laughably poor. There's so much to be done:

* Gem packaging
* Actual tests
* Actual documentation
* Proper Sinatra app setup (using Vegas?)
* Colour the run lines properly
* Macros to invoke from within editors
* Link to a test runner, so the code can be re-run continually
* Bret-tastic loop value display
* Can it work using Ruby 1.9's set_trace_func() ?
* A billion other things

## A Very Poor Screenshot

![I did warn you.](http://yozlet.github.io/panorama/img/screenie1.png)