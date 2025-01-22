### Table of Contents

-   [Foreword](http://openresty.org/download/agentzh-nginx-tutorials-en.html#00-foreword01)
-   [Writing Plan for the Tutorials](http://openresty.org/download/agentzh-nginx-tutorials-en.html#00-foreword02)
-   [Nginx Variables (01)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables01)
-   [Nginx Variables (02)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables02)
-   [Nginx Variables (03)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables03)
-   [Nginx Variables (04)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables04)
-   [Nginx Variables (05)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables05)
-   [Nginx Variables (06)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables06)
-   [Nginx Variables (07)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables07)
-   [Nginx Variables (08)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables08)
-   [Nginx Directive Execution Order (01)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder01)
-   [Nginx Directive Execution Order (02)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder02)
-   [Nginx Directive Execution Order (03)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder03)
-   [Nginx Directive Execution Order (04)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder04)
-   [Nginx Directive Execution Order (05)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder05)
-   [Nginx Directive Execution Order (06)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder06)
-   [Nginx Directive Execution Order (07)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder07)
-   [Nginx Directive Execution Order (08)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder08)
-   [Nginx Directive Execution Order (09)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder09)
-   [Nginx Directive Execution Order (10)](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder10)

I've been doing a lot of work in the Nginx world over the last few years and I've also been thinking about writing a series of tutorial-like articles to explain to more people what I've done and what I've learned in this area. Now I have finally decided to post serial articles to the Sina Blog [http://blog.sina.com.cn/openresty](http://blog.sina.com.cn/openresty) in Chinese. Every article will roughly cover a single topic and will be in a rather casual style. But at some point in the future I may restructure the articles and their style in order to turn them into a "real" book.

The articles are divided into series. For example, the first series is "Nginx Variables". Each series can be thought of as mapping to a chapter in the Nginx book that I may publish in the future.

The articles are intended for Nginx users of all experience levels, including users with extensive Apache and Lighttpd experience who may have never used Nginx before.

The examples in the articles are at least compatible with Nginx `0.8.54`. Do not try the examples with older versions of Nginx. The latest stable version of Nginx as of this writing is `1.7.9`.

All of the Nginx modules referenced in the articles are production-ready. I will not be covering any Nginx core modules that are either experimental or buggy. Additionally, I will be making extensive use of 3rd-party Nginx modules in the examples. If it's inconvenient for you to download and install the individual modules one at a time then I highly recommend that you download and install the `ngx_openresty` software bundle that I maintain.

[http://openresty.org/](http://openresty.org/)

All of the modules referenced in the articles, including the core Nginx modules that are new (but stable), are included in the OpenResty bundle.

A principle that I will be trying to adhere to is to use small concise examples to explain and validate the concepts and behaviors being described. My hope is that it will help the reader to develop the good habit of not accepting others' viewpoints or statements at face value without testing them first. This approach may have something to do with my QA background. In fact, I keep tweaking and correcting the articles based on the results of running the examples while writing.

The examples in the articles fall into one of two categories, good and problematic. The purpose of the problematic examples is to highlight potential pitfalls and other areas where Nginx or its modules behave in ways that readers may not expect. Problematic examples are easy to identify because each line of text in the example will be prefixed with a question mark, i.e., "`?`". Here is an example:

`? server {  
?     listen 8080;  
?  
?     location /bad {  
?         echo $foo;  
?     }  
? }  
`

Do not reproduce these articles without explicit permissions from us. Copyright reserved.

I encourage readers to send feedback (`agentzh@gmail.com`), especially constructive criticism.

The source for all the articles is on GitHub:

[http://github.com/agentzh/nginx-tutorials/](http://github.com/agentzh/nginx-tutorials/)

The source files are under the `en/` directory. I am using a little markup language that is a mixture of `Wiki` and `POD` to write these articles. They are the `.tut` files. You are welcome to create forks and/or provide patches.

The e-books files that are suitable for cellphones, Kindle, iPad/iPhone, Sony Readers, and other devices can be downloaded from here:

[http://openresty.org/#eBooks](http://openresty.org/#eBooks)

Special thanks go to Kai Wu (kai10k) who kindly translates these articles to English.

agentzh at home in the Fuzhou city

October 30, 2011

Here lists the tutorial series that have already been published or to be published.

-   Getting Started with Nginx
-   How Nginx Matches URIs
-   [Nginx Variables](http://openresty.org/download/agentzh-nginx-tutorials-en.html#01-nginxvariables01)
-   [Nginx Directive Execution Order](http://openresty.org/download/agentzh-nginx-tutorials-en.html#02-nginxdirectiveexecorder01)
-   Nginx's if is Evil
-   Nginx Subrequests
-   Nginx Static File Services
-   Nginx Log Services
-   Application Gateways based on Nginx
-   Reverse-Proxies based on Nginx
-   Nginx and Memcached
-   Nginx and Redis
-   Nginx and MySQL
-   Nginx and PostgreSQL
-   Application caching Based on Nginx
-   Security and Access Control in Nginx
-   Web Services Based on Nginx
-   AJAX Applications Driven by Nginx
-   Performance Testing for Nginx and its Applications
-   Strength of the Nginx Community

The series names can roughly correspond to the chapter names in my final Nginx book, but they are unlikely to stay exactly the same. The actual series names may change and the relative order of the series may change as well.

The list above will be constantly updated to always reflect the latest plan.

## Variables as Value Containers [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variables-as-value-containers)

Nginx's configuration files use a micro programming language. Many real-world Nginx configuration files are essentially small programs. This language's design is heavily influenced by Perl and Bourne Shell as far as I can see, despite the fact that it might not be Turing-Complete and it is declarative in many places. This is a distinguishing feature of Nginx, as compared to other web servers like Apache or Lighttpd. Being a programming language, "variables" are thus a natural part of it (exceptions do exist, of course, as in pure functional languages like Haskell).

![](http://openresty.org/download/image/value-container.jpg)

Variables are value containers

Variables are just containers holding various values in imperative languages like Perl, Bourne Shell, and C/C++. And "values" can be numbers like `3.14`, strings like `hello world`, or even complicated things like references to arrays or hash tables in those languages. For the Nginx configuration language, however, variables can hold only one type of values, that is, strings (there is an interesting exception: the 3rd-party module [ngx\_array\_var](http://wiki.nginx.org/HttpArrayVarModule) extends Nginx variables to hold arrays, but it is implemented by encoding a C pointer as a binary string value behind the scene).

## Variable Syntax and Interpolation [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-syntax-and-interpolation)

Let's say our `nginx.conf` configuration file has the following line:

`set $a "hello world";  
`

We assign a value to the variable `$a` via the [set](http://wiki.nginx.org/HttpRewriteModule#set) configuration directive coming from the standard [ngx\_rewrite](http://wiki.nginx.org/HttpRewriteModule) module. In particular, we assign the string value `hello world` to `$a`.

We can see that the Nginx variable name takes a dollar sign (`$`) in front of it. This is required by the language syntax: whenever we want to reference an Nginx variable in the configuration file, we must add a `$` prefix. This looks very familiar to those Perl and PHP programmers.

Such variable prefix modifiers may discomfort some Java and C# programmers, this notation does have an obvious advantage though, that is, variables can be embedded directly into a string literal:

`set $a hello;  
set $b "$a, $a";  
`

Here we use the value of the existing Nginx variable `$a` to construct the value for the variable `$b`. So after these two directives complete execution, the value of `$a` is `hello`, and `$b` is `hello, hello`. This technique is called "variable interpolation" in the Perl world, which makes ad-hoc string concatenation operators no longer that necessary. Let's use the same term for the Nginx world from now on.

Let's see another complete example:

`server {  
    listen 8080;

    location /test {  
        set $foo hello;  
        echo "foo: $foo";  
    }  
}

`

This example omits the `http` directive and `events` configuration blocks in the outer-most scope for brevity. To request this `/test` interface via `curl`, an HTTP client utility, on the command line, we get

`$ curl 'http://localhost:8080/test'  
foo: hello  
`

Here we use the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive of the 3rd party module [ngx\_echo](http://wiki.nginx.org/HttpEchoModule) to print out the value of the `$foo` variable as the HTTP response.

Apparently the arguments of the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive does support "variable interpolation", but we can not take it for granted for other directives. Because not all the configuration directives support "variable interpolation" and it is in fact up to the implementation of the directive in that module. Always look up the documentation to be sure.

### Escaping "$" [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-escaping-dollar)

We've already learned that the `$` character is special and it serves as the variable name prefix, but now consider that we want to output a literal `$` character via the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive. The following naive example does not work at all:

`? :nginx  
? location /t {  
?     echo "$";  
? }  
`

We will get the following error message while loading this configuration:

`[emerg] invalid variable name in ...  
`

Obviously Nginx tries to parse `$"` as a variable name. Is there a way to escape `$` in the string literal? The answer is "no" (it is still the case in the latest Nginx stable release `1.2.7`) and I have been hoping that we could write something like `$$` to obtain a literal `$`.

Luckily, workarounds do exist and here is one proposed by Maxim Dounin: first we assign to a variable a literal string containing a dollar sign character via a configuration directive that does _not_ support "variable interpolation" (remember that not all the directives support "variable interpolation"?), and then reference this variable later whenever we need a dollar sign. Here is such an example to demonstrate the idea:

`geo $dollar {  
    default "$";  
}

server {  
    listen 8080;

    location /test {  
        echo "This is a dollar sign: $dollar";  
    }  
}

`

Let's test it out:

`$ curl 'http://localhost:8080/test'  
This is a dollar sign: $  
`

Here we make use of the [geo](http://wiki.nginx.org/HttpGeoModule#geo) directive of the standard module [ngx\_geo](http://wiki.nginx.org/HttpGeoModule) to initialize the `$dollar` variable with the string `"$"`, thereafter variable `$dollar` can be used in places that require a dollar sign. This works because the [geo](http://wiki.nginx.org/HttpGeoModule#geo) directive does not support "variable interpolation" at all. However, the [ngx\_geo](http://wiki.nginx.org/HttpGeoModule) module is originally designed to set a Nginx variable to different values according to the remote client address, and in this example, we just abuse it to initialize the `$dollar` variable with the string `"$"` unconditionally.

### Disambiguating Variable Names [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-disambiguating-variable-names)

There is a special case for "variable interpolation", that is, when the variable name is followed directly by characters allowed in variable names (like letters, digits, and underscores). In such cases, we can use a special notation to disambiguate the variable name from the subsequent literal characters, for instance,

`server {  
    listen 8080;

    location /test {  
        set $first "hello ";  
        echo "${first}world";  
    }  
}

`

Here the variable `$first` is concatenated with the literal string `world`. If it were written directly as `"$firstworld"`, Nginx's "variable interpolation" engine (also known as the "script engine") would try to access the variable `$firstworld` instead of `$first`. To resolve the ambiguity here, curly braces must be used around the variable name (excluding the `$` prefix), as in `${first}`. Let's test this sample:

`$ curl 'http://localhost:8080/test'  
hello world  
`

## Variable Declaration and Creation [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-declaration-and-creation)

In languages like C/C++, variables must be declared (or created) before they can be used so that the compiler can allocate storage and perform type checking at compile-time. Similarly, Nginx creates all the Nginx variables while loading the configuration file (or in other words, at "configuration time"), therefore Nginx variables are also required to be declared somehow.

Fortunately the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive and the [geo](http://wiki.nginx.org/HttpGeoModule#geo) directive mentioned above do have the side effect of declaring or creating Nginx variables that they will assign values to later at "request time". If we do not declare a variable this way and use it directly in, say, the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive, we will get an error. For example,

`? server {  
?     listen 8080;  
?  
?     location /bad {  
?         echo $foo;  
?     }  
? }  
`

Here we do not declare the `$foo` variable and access its value directly in [echo](http://wiki.nginx.org/HttpEchoModule#echo). Nginx will just refuse loading this configuration:

`[emerg] unknown "foo" variable  
`

Yes, we cannot even start the server!

Nginx variable creation and assignment happen at completely different phases along the time-line. Variable creation only occurs when Nginx loads its configuration. On the other hand, variable assignment occurs when requests are actually being served. This also means that we can never create new Nginx variables at "request time".

## Variable Scope [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-scope)

Once an Nginx variable is created, it is visible to the entire configuration, even across different virtual server configuration blocks, regardless of the places it is declared at. Here is an example:

`server {  
    listen 8080;

    location /foo {  
        echo "foo = [$foo]";  
    }

    location /bar {  
        set $foo 32;  
        echo "foo = [$foo]";  
    }  
}

`

Here the variable `$foo` is created by the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive within `location /bar`, and this variable is visible to the entire configuration, therefore we can reference it in `location /foo` without worries. Below is the result of testing these two interfaces via the `curl` tool.

`$ curl 'http://localhost:8080/foo'  
foo = []

$ curl 'http://localhost:8080/bar'  
foo = [32]

$ curl 'http://localhost:8080/foo'  
foo = []

`

We can see that the assignment operation is only performed in requests that access `location /bar`, since the corresponding [set](http://wiki.nginx.org/HttpRewriteModule#set) directive is only used in that location. When requesting the `/foo` interface, we always get an empty value for the `$foo` variable because that is what we get when accessing an uninitialized variable.

Another important characteristic that we can observe from this example is that even though the scope of Nginx variables is the entire configuration, each request does have its own version of all those variables' containers. Requests do not interfere with each other even if they are referencing a variable with the same name. This is very much like local variables in C/C++ function bodies. Each invocation of the C/C++ function does use its own version of those local variables (on the stack).

For instance, in this sample, we request `/bar` and the variable `$foo` gets the value `32`, which does not affect the value of `$foo` in subsequent requests to `/foo` (it is still uninitialized!), because they correspond to different value containers.

One common mistake for Nginx newcomers is to regard Nginx variables as something shared among all the requests. Even though the scope of Nginx variable _names_ go across configuration blocks at "configuration time", its _value container_'s scope never goes beyond request boundaries at "request time". Essentially here we do have two different kinds of scope here.

## Variable Lifetime & Internal Redirection [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-lifetime-and-internal-redirection)

We already know that Nginx variables are bound to each request handled by Nginx, for this reason they have exactly the same lifetime as the corresponding request.

There is another common misunderstanding here though: some newcomers tend to assume that the lifetime of Nginx variables is bound to the `location` configuration block. Let's consider the following counterexample:

`server {  
    listen 8080;

    location /foo {  
        set $a hello;  
        echo_exec /bar;  
    }

    location /bar {  
        echo "a = [$a]";  
    }  
}

`

Here in `location /foo` we use the [echo\_exec](http://wiki.nginx.org/HttpEchoModule#echo_exec) directive (provided by the 3rd-party module [ngx\_echo](http://wiki.nginx.org/HttpEchoModule)) to initiate an "internal redirection" to `location /bar`. The "internal redirection" is an operation that makes Nginx jump from one `location` to another while processing a request. This "jumping" happens completely within the server itself. This is different from those "external redirections" based on the HTTP `301` and `302` responses because the latter is collaborated externally, by the HTTP clients. Also, in case of "external redirections", the end user could usually observe the change of the URL in her web browser's address bar while this is not the case for internal ones. "Internal redirections" are very similar to the `exec` command in Bourne Shell; it is a "one way trip" and never returns. Another similar example is the `goto` statement in the C language.

Being an "internal redirection", the request after the redirection remains the original one. It is just the current `location` that is changed, so we are still using the original copy of the Nginx variable containers. Back to our example, the whole process looks like this: Nginx first assigns to the `$a` variable the string value `hello` via the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive in `location /foo`, and then it issues an internal redirection via the [echo\_exec](http://wiki.nginx.org/HttpEchoModule#echo_exec) directive, thus leaving `location /foo` and entering `location /bar`, and finally it outputs the value of `$a`. Because the value container of `$a` remains untouched, we can expect the response output to be `hello`. The test result confirms this:

`$ curl localhost:8080/foo  
a = [hello]  
`

But when accessing `/bar` directly from the client side, we will get an empty value for the `$a` variable, since this variable relies on `location /foo` to get initialized.

It can be observed that during a request's lifetime, the copy of Nginx variable containers does not change at all even when Nginx goes across different `location` configuration blocks. Here we also encounter the concept of "internal redirections" for the first time and it's worth mentioning that the [rewrite](http://wiki.nginx.org/HttpRewriteModule#rewrite) directive of the [ngx\_rewrite](http://wiki.nginx.org/HttpRewriteModule) module can also be used to initiate "internal redirections". For instance, we can rewrite the example above with the [rewrite](http://wiki.nginx.org/HttpRewriteModule#rewrite) directive as follows:

`server {  
    listen 8080;

    location /foo {  
        set $a hello;  
        rewrite ^ /bar;  
    }

    location /bar {  
        echo "a = [$a]";  
    }  
}

`

It's functionally equivalent to [echo\_exec](http://wiki.nginx.org/HttpEchoModule#echo_exec). We will discuss the [rewrite](http://wiki.nginx.org/HttpRewriteModule#rewrite) directive in more depth in later chapters, like initiating "external redirections" like `301` and `302`.

To conclude, the lifetime of Nginx variable containers is indeed bound to the request being processed, and is irrelevant to `location`.

## Nginx Built-in Variables [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-nginx-built-in-variables)

The Nginx variables we have seen so far are all (implicitly) created by directives like [set](http://wiki.nginx.org/HttpRewiteModule#set). We usually call such variables "user-defined varaibles", or simply "user variables". There is also another kind of Nginx variables that are _pre-defined_ by either the Nginx core or Nginx modules. Let's call this kind of variables "built-in variables".

### $uri & $request\_uri [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-dollar-uri-and-dollar-request_uri)

One common use of Nginx built-in variables is to retrieve various types of information about the current request or response. For instance, the built-in variable [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) provided by [ngx\_http\_core](http://nginx.org/en/docs/http/ngx_http_core_module.html) is used to fetch the (decoded) URI of the current request, excluding any query string arguments. Another example is the [$request\_uri](http://wiki.nginx.org/HttpCoreModule#.24request_uri) variable provided by the same module, which is used to fetch the raw, non-decoded form of the URI, including any query string. Let's look at the following example.

`location /test {  
    echo "uri = $uri";  
    echo "request_uri = $request_uri";  
}  
`

We omit the `server` configuration block here for brevity. Just as all those samples above, we still listen to the `8080` local port. In this example, we output both the [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) and [$request\_uri](http://wiki.nginx.org/HttpCoreModule#.24request_uri) into the response body. Below is the result of testing this `/test` interface with different requests:

`$ curl 'http://localhost:8080/test'  
uri = /test  
request_uri = /test

$ curl 'http://localhost:8080/test?a=3&b=4'  
uri = /test  
request_uri = /test?a=3&b=4

$ curl 'http://localhost:8080/test/hello%20world?a=3&b=4'  
uri = /test/hello world  
request_uri = /test/hello%20world?a=3&b=4

`

### Variables with Infinite Names [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variables-with-infinite-names)

There is another very common built-in variable that does not have a fixed variable name. Instead, It has _infinite_ variations. That is, all those variables whose names have the prefix `arg_`, like `$arg_foo` and `$arg_bar`. Let's just call it the [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) "variable group". For example, the `$arg_name` variable is evaluated to the value of the `name` URI argument for the current request. Also, the URI argument's value obtained here is not decoded yet, potentially containing the `%XX` sequences. Let's check out a complete example:

`location /test {  
    echo "name: $arg_name";  
    echo "class: $arg_class";  
}  
`

Then we test this interface with various different URI argument combinations:

`$ curl 'http://localhost:8080/test'  
name:  
class:

$ curl 'http://localhost:8080/test?name=Tom&class=3'  
name: Tom  
class: 3

$ curl 'http://localhost:8080/test?name=hello%20world&class=9'  
name: hello%20world  
class: 9

`

In fact, `$arg_name` does not only match the `name` argument name, but also `NAME` or even `Name`. That is, the letter case does not matter here:

`$ curl 'http://localhost:8080/test?NAME=Marry'  
name: Marry  
class:

$ curl 'http://localhost:8080/test?Name=Jimmy'  
name: Jimmy  
class:

`

Behind the scene, Nginx just converts the URI argument names into the pure lower-case form before matching against the name specified by [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER).

If you want to decode the special sequences like `%20` in the URI argument values, then you could use the [set\_unescape\_uri](http://wiki.nginx.org/HttpSetMiscModule#set_unescape_uri) directive provided by the 3rd-party module [ngx\_set\_misc](http://wiki.nginx.org/HttpSetMiscModule).

`location /test {  
    set_unescape_uri $name $arg_name;  
    set_unescape_uri $class $arg_class;

    echo "name: $name";  
    echo "class: $class";  
}

`

Let's check out the actual effect:

`$ curl 'http://localhost:8080/test?name=hello%20world&class=9'  
name: hello world  
class: 9  
`

The space has indeed been decoded!

Another thing that we can observe from this example is that the [set\_unescape\_uri](http://wiki.nginx.org/HttpSetMiscModule#set_unescape_uri) directive can also implicitly create Nginx user-defined variables, just like the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive. We will discuss the [ngx\_set\_misc](http://wiki.nginx.org/HttpSetMiscModule) module in more detail in future chapters.

This type of variables like [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) possesses infinite number of possible names, so they do not correspond to any value containers. Furthermore, such variables are handled in a very specific way within the Nginx core. It is thus not possible for 3rd-party modules to introduce such magical built-in variables of their own.

The Nginx core offers a lot of such built-in variables in addition to [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER), like the [$cookie\_XXX](http://wiki.nginx.org/HttpCoreModule#.24cookie_COOKIE) variable group for fetching HTTP cookie values, the [$http\_XXX](http://wiki.nginx.org/HttpCoreModule#.24http_HEADER) variable group for fetching request headers, as well as the [$sent\_http\_XXX](http://wiki.nginx.org/HttpCoreModule#.24sent_http_HEADER) variable group for retrieving response headers. We will not go into the details for each of them here. Interested readers can refer to the official documentation for the [ngx\_http\_core](http://nginx.org/en/docs/http/ngx_http_core_module.html) module.

### Read-only Built-in Variables [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-read-only-built-in-variables)

All the user-defined variables are writable. Actually the way that we declare or create such variables so far is to use a configure directive, like [set](http://wiki.nginx.org/HttpRewriteModule#set), that performs value assignment at request time. But it is _not_ necessarily the case for built-in variables.

Most of the built-in variables are effectively _read-only_, like the [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) and [$request\_uri](http://wiki.nginx.org/HttpCoreModule#.24request_uri) variables that we just introduced earlier. Assignments to such read-only variables must always be avoided. Otherwise it will lead to unexpected consequences, for example,

`? location /bad {  
?     set $uri /blah;  
?     echo $uri;  
? }  
`

This problematic configuration just triggers a confusing error message when Nginx is started:

`[emerg] the duplicate "uri" variable in ...  
`

Attempts of writing to some other read-only built-in variables like [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) will just lead to server crashes in some particular Nginx versions.

### Writable Built-in Variable $args [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-writable-built-in-variable-dollar-args)

Some built-in variables are writable as well. For instance, when reading the built-in variable [$args](http://wiki.nginx.org/HttpCoreModule#.24args), we get the URL query string of the current request, but when writing to it, we are effectively modifying the query string. Here is such an example:

`location /test {  
    set $orig_args $args;  
    set $args "a=3&b=4";

    echo "original args: $orig_args";  
    echo "args: $args";  
}

`

Here we first save the original URL query string into our own variable `$orig_args`, then modify the current query string by overriding the [$args](http://wiki.nginx.org/HttpCoreModule#.24args) variable, and finally output the variables `$orig_args` and [$args](http://wiki.nginx.org/HttpCoreModule#.24args), respectively, with the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive. Let's test it like this:

`$ curl 'http://localhost:8080/test'  
original args:  
args: a=3&b=4

$ curl 'http://localhost:8080/test?a=0&b=1&c=2'  
original args: a=0&b=1&c=2  
args: a=3&b=4

`

In the first test, we did not provide any URL query string, hence the empty output for the `$orig_args` variable. And in both tests, the current query string was forcibly overridden to the new value `a=3&b=4`, regardless of the presence of a query string in the original request.

It should be noted that the [$args](http://wiki.nginx.org/HttpCoreModule#.24args) variable here no longer owns a value container as user variables, just like [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER). When reading [$args](http://wiki.nginx.org/HttpCoreModule#.24args), Nginx will execute a special piece of code, fetching data from a particular place where the Nginx core stores the URL query string for the current request. On the other hand, when we overwrite [$args](http://wiki.nginx.org/HttpCoreModule#.24args), Nginx will execute another special piece of code, storing new value into the same place in the core. Other parts of Nginx also read the same place whenever the query string is needed, so our modification to [$args](http://wiki.nginx.org/HttpCoreModule#.24args) will immediately affect all the other parts' functionality later on. Let's see an example for this:

`location /test {  
    set $orig_a $arg_a;  
    set $args "a=5";  
    echo "original a: $orig_a";  
    echo "a: $arg_a";  
}  
`

Here we first save the value of the built-in varaible `$arg_a`, the value of the original request's URL argument `a`, into our user variable `$orig_a`, then change the URL query string to `a=5` by assigning the new value to the built-in variable [$args](http://wiki.nginx.org/HttpCoreModule#.24args), and finally output the variables `$orig_a` and `$arg_a`, respectively. Because modifications to [$args](http://wiki.nginx.org/HttpCoreModule#.24args) effectively change the URL query string of the current request for the whole server, the value of the built-in variable [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) should also change accordingly. The test result verifies this:

`$ curl 'http://localhost:8080/test?a=3'  
original a: 3  
a: 5  
`

We can see that the initial value of `$arg_a` is `3` since the URL query string of the original request is `a=3`. But the final value of `$arg_a` automatically becomes `5` after we modify [$args](http://wiki.nginx.org/HttpCoreModule#.24args) with the value `a=5`.

Below is another example to demonstrate that assignments to `$args` also affect the HTTP proxy module [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule).

`server {  
    listen 8080;

    location /test {  
        set $args "foo=1&bar=2";  
        proxy_pass http://127.0.0.1:8081/args;  
    }  
}

server {  
    listen 8081;

    location /args {  
        echo "args: $args";  
    }  
}

`

Two virtual servers are defined here in the `http` configuration block (omitted for brevity).

The first virtual server is listening at the local port 8080. Its `/test` location first updates the current URL query string to the value `foo=1&bar=2` by writing to [$args](http://wiki.nginx.org/HttpCoreModule#.24args), then sets up an HTTP reverse proxy via the [proxy\_pass](http://wiki.nginx.org/HttpProxyModule#proxy_pass) directive of the [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule) module, targeting the HTTP service `/args` on the local port 8081. By default the [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule) module automatically forwards the current URL query string to the remote HTTP service.

The "remote HTTP service" on the local port 8081 is provided by the second virtual server defined by ourselves, where we output the current URL query string via the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive in `location /args`. By doing this, we can investigate the actual URL query string forwarded by the [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule) module from the first virtual server.

Let's access the `/test` interface exposed by the first virtual server.

`$ curl 'http://localhost:8080/test?blah=7'  
args: foo=1&bar=2  
`

We can see that the URL query string is first rewritten to `foo=1&bar=2` even though the original request takes the value `blah=7`, then it is forwarded to the `/args` interface of the second virtual server via the [proxy\_pass](http://wiki.nginx.org/HttpProxyModule#proxy_pass) directive, and finally its value is output to the client.

To summarize, the assignment to [$args](http://wiki.nginx.org/HttpCoreModule#.24args) also successfully influences the behavior of the [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule) module.

## Variable "Get Handlers" and "Set Handlers" [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-get-handlers-and-set-handlers)

We have already learned in previous sections that when reading the built-in variable [$args](http://wiki.nginx.org/HttpCoreModule#.24args), Nginx executes a special piece of code to obtain a value on-the-fly and when writing to this variable, Nginx executes another special piece of code to propagate the change. In Nginx's terminology, the special code executed for reading the variable is called "get handler" and the code for writing to the variable is called "set handler". Different Nginx modules usually prepare different "get handlers" and "set handlers" for their own variables, which effectively put magic into these variables' behavior.

Such techniques are not uncommon in the computing world. For example, in object-oriented programming (OOP), the class designer usually does not expose the member variable of the class directly to the user programmer, but instead provides two methods for reading from and writing to the member variable, respectively. Such class methods are often called "accessors". Below is an example in the C++ programming language:

`#include <string>  
using namespace std;

class Person {  
public:  
    const string get_name() {  
        return m_name;  
    }

    void set_name(const string name) {  
        m_name = name;  
    }

private:  
    string m_name;  
};

`

In this C++ class `Person`, we provide two public methods, `get_name` and `set_name`, to serve as the "accessors" for the private member variable `m_name`.

The benefits of such design are obvious. The class designer can execute arbitrary code in the "accessors", to implement any extra business logic or useful side effects, like automatically updating other member variables depending on the current member, or updating the corresponding field in a database associated with the current object. For the latter case, it is possible that the member variable does not exist at all, or that the member variable just serves as a data cache to mitigate the pressure on the back-end database.

Corresponding to the concept of "accessors" in OOP, Nginx variables also support binding custom "get handlers" and "set handlers". Additionally, not all Nginx variables own a container to hold values. Some variables without a container just behave like a magical container by means of its fancy "get handler" and "set handler". In fact, when a variable is being created at "configure time", the creating Nginx module must make a decision on whether to allocate a value container for it and whether to attach a custom "get handler" and/or a "set handler" to it.

Those variables owning a value container are called "indexed variables" in Nginx's terminology. Otherwise, they are said to be not indexed.

We already know that the "variable groups" like [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) discussed in earlier sections do not have a value container and thus are not indexed. When reading [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER), it is its "get handler" at work, that is, its "get handler" scans the current URL query string on-the-fly, extracting the value of the specified URL argument. Many beginners misunderstand the way [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) is implemented; they assume that Nginx will parse all the URL arguments in advance and prepare the values for all those non-empty [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) variables before they are actually read. This is not true, however. Nginx never tries to parse all the URL arguments beforehand, but rather scans the whole URL query string for a particular argument in a "get handler" every time that argument is requested by reading the corresponding [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) variable. Similarly, when reading the built-in variable [$cookie\_XXX](http://wiki.nginx.org/HttpCoreModule#.24cookie_COOKIE), its "get handler" just scans the `Cookie` request headers for the cookie name specified.

## Value Containers for Caching & ngx\_map [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-value-containers-for-caching-and-ngx_map)

Some Nginx variables choose to use their value containers as a data cache when the "get handler" is configured. In this setting, the "get handler" is run only once, i.e., at the first time the variable is read, which reduces overhead when the variable is read multiple times during its lifetime. Let's see an example for this.

`map $args $foo {  
    default     0;  
    debug       1;  
}

server {  
    listen 8080;

    location /test {  
        set $orig_foo $foo;  
        set $args debug;

        echo "original foo: $orig_foo";  
        echo "foo: $foo";  
    }  
}

`

Here we use the [map](http://wiki.nginx.org/HttpMapModule#map) directive from the standard module [ngx\_map](http://wiki.nginx.org/HttpMapModule) for the first time, which deserves some introduction. The word `map` here means mapping or correspondence. For example, functions in Maths are a kind of "mapping". And Nginx's [map](http://wiki.nginx.org/HttpMapModule#map) directive is used to define a "mapping" relationship between two Nginx variables, or in other words, "function relationship". Back to this example, we use the [map](http://wiki.nginx.org/HttpMapModule#map) directive to define the "mapping" relationship between user variable `$foo` and built-in variable [$args](http://wiki.nginx.org/HttpCoreModule#.24args). When using the Math function notation, `y = f(x)`, our `$args` variable is effectively the "independent variable", `x`, while `$foo` is the "dependent variable", `y`. That is, the value of `$foo` depends on the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args), or rather, we _map_ the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) onto the `$foo` variable (in some way).

Now let's look at the exact mapping rule defined by the [map](http://wiki.nginx.org/HttpMapModule#map) directive in this example.

`map $args $foo {  
    default     0;  
    debug       1;  
}  
`

The first line within the curly braces is a special rule condition, that is, this condition holds if and only if other conditions all fail. When this "default" condition holds, the "dependent variable" `$foo` is assigned by the value `0`. The second line within the curly braces means that the "dependent variable" `$foo` is assigned by the value `1` if the "independent variable" `$args` matches the string value `debug`. Combining these two lines, we obtain the following complete mapping rule: if the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) is `debug`, variable `$foo` gets the value `1`; otherwise `$foo` gets the value `0`. So essentially, this is a conditional assignment to the variable `$foo`.

Now that we understand what the [map](http://wiki.nginx.org/HttpMapModule#map) directive does, let's look at the definition of `location /test`. We first save the value of `$foo` into another user variable `$orig_foo`, then overwrite the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) to `debug`, and finally output the values of `$orig_foo` and `$foo`, respectively.

Intuitively, after we overwrite the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) to `debug`, the value of `$foo` should automatically get adjusted to `1` according to the mapping rule defined earlier, regardless of the original value of `$foo`. But the test result suggests the other way around.

`$ curl 'http://localhost:8080/test'  
original foo: 0  
foo: 0  
`

The first output line indicates that the value of `$orig_foo` is `0`, which is exactly what we expected: the original request does not take a URL query string, so the initial value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) is empty, leading to the `0` initial value of `$foo`, according to the "default" condition in our mapping rule.

But surprisingly, the second output line indicates that the final value of `$foo` is still `0`, even after we overwrite [$args](http://wiki.nginx.org/HttpCoreModule#.24args) to the value `debug`. This apparently violates our mapping rule because when [$args](http://wiki.nginx.org/HttpCoreModule#.24args) takes the value `debug`, the value of `$foo` should really be `1`. So what is happening here?

Actually the reason is pretty simple: when the first time variable `$foo` is read, its value computed by [ngx\_map](http://wiki.nginx.org/HttpMapModule)'s "get handler" is cached in its value container. We already learned earlier that Nginx modules may choose to use the value container of the variable created by themselves as a data cache for its "get handler". Obviously, the [ngx\_map](http://wiki.nginx.org/HttpMapModule) module considers the mapping computation between variables expensive enough and caches the result automatically, so that the next time the same variable is read within the lifetime of the current request, Nginx can just return the cached result without invoking the "get handler" again.

To verify this further, we can try specifying the URL query string as `debug` in the original request.

`$ curl 'http://localhost:8080/test?debug'  
original foo: 1  
foo: 1  
`

It can be seen that the value of `$orig_foo` becomes `1`, complying with our mapping rule. And subsequent readings of `$foo` always yield the same cached result, `1`, regardless of the new value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) later on.

The [map](http://wiki.nginx.org/HttpMapModule#map) directive is actually a unique example, because it not only registers a "get handler" for the user variable, but also allows the user to define the computing rule in the "get handler" directly in the Nginx configuration file. Of course, the rule that can be defined here is limited to simple mapping relations with another variable. Meanwhile, it must be made clear that not all the variables using a "get handler" will cache the result. For instance, we have already seen earlier that the [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) variable does not use its value container at all.

Similar to the [ngx\_map](http://wiki.nginx.org/HttpMapModule) module, the standard module [ngx\_geo](http://wiki.nginx.org/HttpGeoModule) that we encountered earlier also enables value caching for the variables created by its [geo](http://wiki.nginx.org/HttpGeoModule#geo) directive.

### A Side Note for Use Contexts of Directives [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-a-side-note-for-use-contexts-of-directives)

In the previous example, we should also note that the [map](http://wiki.nginx.org/HttpMapModule#map) directive is put outside the `server` configuration block, that is, it is defined directly within the outermost `http` configuration block. Some readers may be curious about this setting, since we only use it in `location /test` after all. If we try putting the [map](http://wiki.nginx.org/HttpMapModule#map) statement within the `location` block, however, we will get the following error while starting Nginx:

`[emerg] "map" directive is not allowed here in ...  
`

So it is explicitly prohibited. In fact, it is only allowed to use the [map](http://wiki.nginx.org/HttpMapModule#map) directive in the `http` block. Every configure directive does have a pre-defined set of use contexts in the configuration file. When in doubt, always refer to the corresponding documentation for the exact use contexts of a particular directive.

## Lazy Evaluation of Variable Values [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-lazy-evaluation-of-variable-values)

Many Nginx freshmen would worry that the use of the [map](http://wiki.nginx.org/HttpMapModule#map) directive within the global scope (i.e., the `http` block) will lead to unnecessary variable value computation and assignment for all the `location`s in all the virtual servers even if only one `location` block actually uses it. Fortunately, this is _not_ what is happening here. We have already learned how the [map](http://wiki.nginx.org/HttpMapModule#map) directive works. It is the "get handler" (registered by the [ngx\_map](http://wiki.nginx.org/HttpMapModule) module) that performs the value computation and related assignment. And the "get handler" will not run at all unless the corresponding user variable is actually being read. Therefore, for those requests that never access that variable, there cannot be any (useless) computation involved.

The technique that postpones the value computation off to the point where the value is actually needed is called "lazy evaluation" in the computing world. Programming languages natively offering "lazy evaluation" is not very common though. The most famous example is the Haskell programming language, where lazy evaluation is the default semantics. In contrast with "lazy evaluation", it is much more common to see "eager evaluation". We are lucky to see examples of lazy evaluation here in the [ngx\_map](http://wiki.nginx.org/HttpMapModule) module, but the "eager evaluation" semantics is also much more common in the Nginx world. Consider the following [set](http://wiki.nginx.org/HttpRewriteModule#set) statement that cannot be simpler:

`set $b "$a,$a";  
`

When running the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive, Nginx eagerly computes and assigns the new value for the variable `$b` without postponing to the point when `$b` is actually read later on. Similarly, the [set\_unescape\_uri](http://wiki.nginx.org/HttpSetMiscModule#set_unescape_uri) directive also evaluates eagerly.

## Variables in Subrequests [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variables-in-subrequests)

### A Detour to Subrequests [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-a-detour-to-subrequests)

We have seen earlier that the lifetime of variable containers is bound to the request, but I owe you a formal definition of "requests" there. You might have assumed that the "requests" in that context are just those HTTP requests initiated from the client side. In fact, there are two kinds of "requests" in the Nginx world. One is called "main requests", and the other is called "subrequests".

Main requests are those initiated externally by HTTP clients. All the examples that we have seen so far involve main requests only, including those doing "internal redirections" via the [echo\_exec](http://wiki.nginx.org/HttpEchoModule#echo_exec) or [rewrite](http://wiki.nginx.org/HttpRewriteModule#rewrite) directive.

Whereas subrequests are a special kind of requests initiated from within the Nginx core. But please do not confuse subrequests with those HTTP requests created by the [ngx\_proxy](http://wiki.nginx.org/HttpProxyModule) modules! Subrequests may look very much like an HTTP request in appearance, their implementation, however, has nothing to do with neither the HTTP protocol nor any kind of socket communication. A subrequest is an abstract invocation for decomposing the task of the main request into smaller "internal requests" that can be served independently by multiple different `location` blocks, either in series or in parallel. "Subrequests" can also be recursive: any subrequest can initiate more sub-subrequests, targeting other `location` blocks or even the current `location` itself. According to Nginx's terminology, if request A initiates a subrequest B, then A is called the "parent request" of B. It is worth mentioning that the Apache web server also has the concept of subrequests for long, so readers coming from that world should be no stranger to this.

Let's check out an example using subrequests:

`location /main {  
    echo_location /foo;  
    echo_location /bar;  
}

location /foo {  
    echo foo;  
}

location /bar {  
    echo bar;  
}

`

Here in `location /main`, we use the [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) directive from the [ngx\_echo](http://wiki.nginx.org/HttpEchoModule) module to initiate two `GET`\-typed subrequests targeting `/foo` and `/bar`, respectively. The subrequests initiated by [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) are always running sequentially according to their literal order in the configuration file. Therefore, the second `/bar` request will not be fired until the first `/foo` request completes processing. The response body of these two subrequests get concatenated together according to their running order, to form the final response body of their parent request (for `/main`):

`$ curl 'http://localhost:8080/main'  
foo  
bar  
`

It should be noted that the communication of `location` blocks via subrequests is limited within the same `server` block (i.e., the same virtual server configuration), so when the Nginx core processes a subrequest, it just calls a few C functions behind the scene, without doing any kind of network or UNIX domain socket communication. For this reason, subrequests are extremely efficient.

### Independent Variable Containers in Subrequests [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-independent-variable-containers-in-subrequests)

Back to our earlier discussion for the lifetime of Nginx variable containers, now we can still state that the lifetime is bound to the current request, and every request does have its own copy of all the variable containers. It is just that the "request" here can be either a main request, or a subrequest. Variables with the same name between a parent request and a subrequest will generally not interfere with each other. Let's do a small experiment to confirm this:

`location /main {  
    set $var main;

    echo_location /foo;  
    echo_location /bar;

    echo "main: $var";  
}

location /foo {  
    set $var foo;  
    echo "foo: $var";  
}

location /bar {  
    set $var bar;  
    echo "bar: $var";  
}

`

In this sample, we assign different values to the variable `$var` in three `location` blocks, `/main`, `/foo`, and `/bar`, and output the value of `$var` in all these locations. In particular, we intentionally output the value of `$var` in `location /main` _after_ calling the two subrequests, so if value changes of `$var` in the subrequests can affect their parent request, we should see a new value output in location `/main`. The result of requesting `/main` is as follows:

`$ curl 'http://localhost:8080/main'  
foo: foo  
bar: bar  
main: main  
`

Apparently, the assignments to variable `$var` in those two subrequests do not affect the main request `/main` at all. This successfully verifies that both the main request and its subrequests do own different copies of variable containers.

### Shared Variable Containers among Requests [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-shared-variable-containers-among-requests)

Unfortunately, subrequests initiated by certain Nginx modules do share variable containers with their parent requests, like those initiated by the 3rd-party module [ngx\_auth\_request](http://mdounin.ru/hg/ngx_http_auth_request_module/). Below is such an example:

`location /main {  
    set $var main;  
    auth_request /sub;  
    echo "main: $var";  
}

location /sub {  
    set $var sub;  
    echo "sub: $var";  
}

`

Here in `location /main`, we first assign the initial value `main` to variable `$var`, then fire a subrequest to `/sub` via the `auth_request` directive from the [ngx\_auth\_request](http://mdounin.ru/hg/ngx_http_auth_request_module/) module, and finally output the value of `$var`. Note that in `location /sub` we intentionally overwrite the value of `$var` to `sub`. When accessing `/main`, we get

`$ curl 'http://localhost:8080/main'  
main: sub  
`

Obviously, the value change of `$var` in the subrequest to `/sub` does affect the main request to `/main`. Thus the variable container of `$var` is indeed shared between the main request and the subrequest created by the [ngx\_auth\_request](http://mdounin.ru/hg/ngx_http_auth_request_module/) module.

For the previous example, some readers might ask: "why doesn't the response body of the subrequest appear in the final output?" The answer is simple: it is just because the `auth_request` directive discards the response body of the subrequest it manages, and only checks the response status code of the subrequest. When the status code looks good, like `200`, `auth_request` will just allow Nginx continue processing the main request; otherwise it will immediately abort the main request by returning a `403` error page, for example. In our example, the subrequest to `/sub` just return a `200` response implicitly created by the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive in `location /sub`.

Even though sharing variable containers among the main request and all its subrequests could make bidirectional data exchange easier, it could also lead to unexpected subtle issues that are hard to debug in real-world configurations. Because users often forget that a variable with the same name is actually used in some deeply embedded subrequest and just use it for something else in the main request, this variable could get unexpectedly modified during processing. Such bad side effects make many 3rd-party modules like [ngx\_echo](http://wiki.nginx.org/HttpEchoModule), [ngx\_lua](http://wiki.nginx.org/HttpLuaModule) and [ngx\_srcache](http://wiki.nginx.org/HttpSRCacheModule) choose to disable the variable sharing behavior for subrequests by default.

## Built-in Variables in Subrequests [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-built-in-variables-in-subrequests)

There are some subtleties involved in using Nginx built-in variables in the context of a subrequest. We will discuss the details in this section.

### Built-in Variables Sensitive to the Subrequest Context [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-built-in-variables-sensitive-to-the-subrequest-context)

We already know that most built-in variables are not simple value containers. They behave differently than user variables by registering "get handlers" and/or "set handlers". Even when they do own a value container, they usually just use the container as a result cache for their "get handlers". The [$args](http://wiki.nginx.org/HttpCoreModule#.24args) variable we discussed earlier, for example, just uses its "get handler" to return the URL query string for the current request. The current request here can also be a subrequest, so when reading [$args](http://wiki.nginx.org/HttpCoreModule#.24args) in a subrequest, its "get handler" should naturally return the query string for the subrequest. Let's see such an example:

`location /main {  
    echo "main args: $args";  
    echo_location /sub "a=1&b=2";  
}

location /sub {  
    echo "sub args: $args";  
}

`

Here in the `/main` interface, we first echo out the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) for the current request, and then use [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) to initiate a subrequest to `/sub`. It should be noted that here we give a second argument to the [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) directive, to specify the URL query string for the subrequest being fired (the first argument is the URI for the subrequest, as we already know). Finally, we define the `/sub` interface and print out the value of [$args](http://wiki.nginx.org/HttpCoreModule#.24args) in there. Querying the `/main` interface gives

`$ curl 'http://localhost:8080/main?c=3'  
main args: c=3  
sub args: a=1&b=2  
`

It is clear that when [$args](http://wiki.nginx.org/HttpCoreModule#.24args) is read in the main request (to `/main`), its value is the URL query string of the main request; whereas when in the subrequest (to `/foo`), it is the query string of the subrequest, `a=1&b=2`. This behavior indeed matches our intuition.

Just like [$args](http://wiki.nginx.org/HttpCoreModule#.24args), when the built-in variable [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) is used in a subrequest, its "get handler" also returns the (decoded) URI of the current subrequest:

`location /main {  
    echo "main uri: $uri";  
    echo_location /sub;  
}

location /sub {  
    echo "sub uri: $uri";  
}

`

Below is the result of querying `/main`:

`$ curl 'http://localhost:8080/main'  
main uri: /main  
sub uri: /sub  
`

The output is what we would expect.

### Built-in Variables for Main Requests Only [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-built-in-variables-for-main-requests-only)

Unfortunately, not all built-in variables are sensitive to the context of subrequests. Several built-in variables always act on the main request even when they are used in a subrequest. The built-in variable [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) is such an exception.

Whenever [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) is read, we always get the request method name (such as `GET` and `POST`) for the main request, no matter whether the current request is a subrequest or not. Let's test it out:

`location /main {  
    echo "main method: $request_method";  
    echo_location /sub;  
}

location /sub {  
    echo "sub method: $request_method";  
}

`

In this example, the `/main` and `/sub` interfaces both output the value of [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method). Meanwhile, we initiate a `GET` subrequest to `/sub` via the [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) directive in `/main`. Now let's do a `POST` request to `/main`:

`$ curl --data hello 'http://localhost:8080/main'  
main method: POST  
sub method: POST  
`

Here we use the `--data` option of the `curl` utility to specify our POST request body, also this option makes `curl` use the `POST` method for the request. The test result turns out as we predicted: the variable [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) is evaluated to the main request's method name, `POST`, despite its use in a `GET` subrequest.

Some readers might challenge our conclusion here by pointing out that we did not rule out the possibility that the value of [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) got cached at its first reading in the main request and what we were seeing in the subrequest was actually the cached value that was evaluated earlier in the main request. This concern is unnecessary, however, because we have also learned that the variable container required by data caching (if any) is always bound to the current request, also the subrequests initiated by the [ngx\_echo](http://wiki.nginx.org/HttpEchoModule) module always disable variable container sharing with their parent requests. Back to the previous example, even if the built-in variable [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) in the main request used the value container as the data cache (actually it does not), it cannot affect the subrequest by any means.

To further address the concern of these readers, let's slightly modify the previous example by putting the [echo](http://wiki.nginx.org/HttpEchoModule#echo) statement for [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) in `/main` _after_ the [echo\_location](http://wiki.nginx.org/HttpEchoModule#echo_location) directive that runs the subrequest:

`location /main {  
    echo_location /sub;  
    echo "main method: $request_method";  
}

location /sub {  
    echo "sub method: $request_method";  
}

`

Let's test it again:

`$ curl --data hello 'http://localhost:8080/main'  
sub method: POST  
main method: POST  
`

No change in the output can be observed, except that the two output lines reversed the order (since we exchange the order of those two [ngx\_echo](http://wiki.nginx.org/HttpEchoModule) module's directives).

Consequently, we cannot obtain the method name of a subrequest by reading the [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method) variable. This is a common pitfall for freshmen when dealing with method names of subrequests. To overcome this limitation, we need to turn to the built-in variable [$echo\_request\_method](http://wiki.nginx.org/HttpEchoModule#.24echo_request_method) provided by the [ngx\_echo](http://wiki.nginx.org/HttpEchoModule) module:

`location /main {  
    echo "main method: $echo_request_method";  
    echo_location /sub;  
}

location /sub {  
    echo "sub method: $echo_request_method";  
}

`

We are finally getting what we want:

`$ curl --data hello 'http://localhost:8080/main'  
main method: POST  
sub method: GET  
`

Now within the subrequest, we get its own method name, `GET`, as expected, and the main request method remains `POST`.

Similar to [$request\_method](http://wiki.nginx.org/HttpCoreModule#.24request_method), the built-in variable [$request\_uri](http://wiki.nginx.org/HttpCoreModule#.24request_uri) also always returns the (non-decoded) URL for the main request. This is more understandable, however, because subrequests are essentially faked requests inside Nginx, which do not really take a non-decoded raw URL.

### Variable Container Sharing and Value Caching Together [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-variable-container-sharing-and-value-caching-together)

In the previous section, some of the readers were worried about the case that variable container sharing in subrequests and value caching for variable's "get handlers" were working together. If it were indeed the case, then it would be a nightmare because it would be really really hard to predict what is going on by just looking at the configuration file. In previous sections, we already learned that the subrequests initiated by the [ngx\_auth\_request](http://mdounin.ru/hg/ngx_http_auth_request_module/) module are sharing the same variable containers with their parents, so we can maliciously construct such a horrible example:

`map $uri $tag {  
    default     0;  
    /main       1;  
    /sub        2;  
}

server {  
    listen 8080;

    location /main {  
        auth_request /sub;  
        echo "main tag: $tag";  
    }

    location /sub {  
        echo "sub tag: $tag";  
    }  
}

`

Here we use our old friend, the [map](http://wiki.nginx.org/HttpMapModule#map) directive, to map the value of the built-in variable [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) to our user variable `$tag`. When [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) takes the value `/main`, the value `1` is assigned to `$tag`; when [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) takes the value `/sub`, the value `2` is assigned instead to `$tag`; under all the other conditions, `0` is assigned. Next, in `/main`, we first initiate a subrequest to `/sub` by using the `auth_request` directive, and then output the value of `$tag`. And within `/sub`, we directly output the value of `$tag`. Guess what we will get when we access `/main`?

`$ curl 'http://localhost:8080/main'  
main tag: 2  
`

Ouch! Didn't we map the value `/main` to `1`? Why the actual output for `/main` is the value, `2`, for `/sub`? What is going on here?

Actually it worked like this: our `$tag` variable was first read in the subrequest to `/sub`, and the "get handler" registered by [map](http://wiki.nginx.org/HttpMapModule#map) computed the value `2` for `$tag` in that context (because [$uri](http://wiki.nginx.org/HttpCoreModule#.24uri) was `/sub` in the subrequest) and the value `2` got cached in the value container of `$tag` from then on. Because the parent request shared the same container as the subrequest created by `auth_request`, when the parent request read `$tag` later (after the subrequest was finished), the cached value `2` was directly returned! Such results can indeed be very surprising at first glance.

From this example, we can conclude again that it can hardly be a good idea to enable variable container sharing in subrequests.

## Special Value "Invalid" and "Not Found" [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-special-value-invalid-and-not-found)

We have mentioned that the values of Nginx variables can only be of one single type, that is, the string type, but variables could also have no meaningful values at all. Variables without any meaningful values still take a special value though. There are two possible special values: "invalid" and "not found".

For example, when a user variable `$foo` is created but not assigned yet, `$foo` takes the special value of "invalid". And when the current URL query string does not have the `XXX` argument at all, the built-in variable [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) takes the special value of "not found".

Both "invalid" and "not found" are special values, completely different from an empty string value (`""`). This is very similar to those distinct special values in some dynamic programing languages, like `undef` in Perl, `nil` in Lua, and `null` in JavaScript.

We have seen earlier that an uninitialized variable is evaluated to an empty string when used in an interpolated string, its real value, however, is not an empty string at all. It is the "get handler" registered by the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive that automatically converts the "invalid" special value into an empty string. To verify this, let's return to the example we have discussed before:

`location /foo {  
    echo "foo = [$foo]";  
}

location /bar {  
    set $foo 32;  
    echo "foo = [$foo]";  
}

`

When accessing `/foo`, the user variable `$foo` is uninitialized when used in the interpolated string for the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive. The output shows that the variable is evaluated to an empty string:

`$ curl 'http://localhost:8080/foo'  
foo = []  
`

From the output, the uninitialized `$foo` variable behaves just like taking an empty string value. But careful readers should have already noticed that, for the request above, there is a warning in the Nginx error log file (which is `logs/error.log` by default):

`[warn] 5765#0: *1 using uninitialized "foo" variable, ...  
`

Who on earth generates this warning? The answer is the "get handler" of `$foo`, registered by the [set](http://wiki.nginx.org/HttpRewriteModule#set) directive. When `$foo` is read, Nginx first checks the value in its container but sees the "invalid" special value, then Nginx decides to continue running `$foo`'s "get handler", which first prints the warning (as shown above) and then returns an empty string value, which thereafter gets cached in `$foo`'s value container.

Careful readers should have identified that this process for user variables is exactly the same as the mechanism we discussed earlier for built-in variables involving "get handlers" and result caching in value containers. Yes, it is the same mechanism in action. It is also worth noting that only the "invalid" special value will trigger the "get handler" invocation in the Nginx core while "not found" will not.

The warning message above usually indicates a typo in the variable name or misuse of uninitialized variables, not necessarily in the context of an interpolated string. Because of the existence of value caching in the variable container, this warning will not get printed multiple times in the lifetime of the current request. Also, the [ngx\_rewrite](http://wiki.nginx.org/HttpRewriteModule) module provides the [uninitialized\_variable\_warn](http://wiki.nginx.org/HttpRewriteModule#uninitialized_variable_warn) directive for disabling this warning altogether.

### Testing Special Values of Nginx Variables in Lua [](http://openresty.org/download/agentzh-nginx-tutorials-en.html#nginx-variables-testing-special-values-of-nginx-variables-in-lua)

As we have just mentioned, the built-in variable [$arg\_XXX](http://wiki.nginx.org/HttpCoreModule#.24arg_PARAMETER) takes the special value "not found" when the URL argument `XXX` does not exist, but unfortunately, it is not easy to distinguish it from the empty string value directly in the Nginx configuration file, for example:

`location /test {  
    echo "name: [$arg_name]";  
}  
`

Here we intentionally omit the URL argument `name` in our request:

`$ curl 'http://localhost:8080/test'  
name: []  
`

We can see that we are still getting an empty string value, because this time it is the Nginx "script engine" that automatically converts the "not found" special value to an empty string when performing variable interpolation.

Then how can we test the special value "not found"? Or in other words, how can we distinguish it from normal empty string values? Obviously, in the following example, the URL argument `name` does take an ordinary value, which is a true empty string:

`$ curl 'http://localhost:8080/test?name='  
name: []  
`

But we cannot really differentiate this from the earlier case that does not mention the `name` argument at all.

Luckily, we can easily achieve this in Lua by means of the 3rd-party module [ngx\_lua](http://wiki.nginx.org/HttpLuaModule). Please look at the following example:

`location /test {  
    content_by_lua '  
        if ngx.var.arg_name == nil then  
            ngx.say("name: missing")  
        else  
            ngx.say("name: [", ngx.var.arg_name, "]")  
        end  
    ';  
}  
`

This example is very close to the previous one in terms of functionality. We use the [content\_by\_lua](http://wiki.nginx.org/HttpLuaModule#content_by_lua) directive from the [ngx\_lua](http://wiki.nginx.org/HttpLuaModule) module to embed a small piece of our own Lua code to test against the special value of the Nginx variable `$arg_name`. When `$arg_name` takes a special value (either "not found" or "invalid"), we will get the following output when requesting `/foo`:

`$ curl 'http://localhost:8080/test'  
name: missing  
`

This is our first time meeting the [ngx\_lua](http://wiki.nginx.org/HttpLuaModule) module, which deserves a brief introduction. This module embeds the Lua language interpreter (or LuaJIT's Just-in-Time compiler) into the Nginx core, to allow Nginx users directly run their own Lua programs inside the server. The user can choose to insert her Lua code into different running phases of the server, to fulfill different requirements. Such Lua code are either specified directly as literal strings in the Nginx configuration file, or reside in external `.lua` source files (or Lua binary bytecode files) whose paths are specified in the Nginx configuration.

Back to our example, we cannot directly write something like `$arg_name` in our Lua code. Instead, we reference Nginx variables in Lua by means of the `ngx.var` API provided by the [ngx\_lua](http://wiki.nginx.org/HttpLuaModule) module. For example, to reference the Nginx variable `$VARIABLE` in Lua, we just write [ngx.var.VARIABLE](http://wiki.nginx.org/HttpLuuaModule#ngx.var.VARIABLE). When the Nginx variable `$arg_name` takes the special value "not found" (or "invalid"), `ngx.var.arg_name` is evaluated to the `nil` value in the Lua world. It should also be noting that we use the Lua function [ngx.say](http://wiki.nginx.org/HttpLuaModule#ngx.say) to print out the response body contents, which is functionally equivalent to the [echo](http://wiki.nginx.org/HttpEchoModule#echo) directive we are already very familiar with.

If we provide a `name` URI argument that takes an empty value in the request, the output is now very different:

`$ curl 'http://localhost:8080/test?name='  
name: []  
`

In this test, the value of the Nginx variable `$arg_name` is a true empty string, neither "not found" nor "invalid". So in Lua, the expression `ngx.var.arg_name` evaluates to the Lua empty string (`""`), clearly distinguished from the Lua `nil` value in the previous test.

This 
