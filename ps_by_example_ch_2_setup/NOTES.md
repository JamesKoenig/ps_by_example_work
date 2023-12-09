when you try to run ``pulp browserify`` you get this

```
* This code path implicitly uses `purs bundle` or CommonsJS modules, both of which are no longer supported in PureScript v0.15.0. You are using PureScript 0.15.13. See https://github.com/purescript/documentation/blob/master/migration-guides/0.15-Migration-Guide.md
* Code path reason: browserify only works on CommonJS modules
* ERROR: Your version of PureScript cannot use `purs bundle` or CommonJS modules. Please use another bundler (e.g. esbuild) instead.
``` 

so I'm going to read the above linked migration guide and then probably try the
  above mentioned build alternatives

I'm going to have to hit up the purescript documentation for their environment
    setup tutorials.  webpack is probably going to be the best bet for me for
    live development and testing out environments.

I really hope at some point there's an adendum to the book because it seems well
    intended.
