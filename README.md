# What it is

`sqlite-reverse-string` is a [SQLite runtime loadable extension](https://www.sqlite.org/loadext.html)
that provides a `REVERSE_STRING` function for reversing strings.

    sqlite> .load libsqlite_reverse_string
    sqlite> SELECT REVERSE_STRING("abc");
    cba

The extension fully supports Unicode.

## Why?

Why should one wish to reverse strings? The plugin was developed for implementing of a
full text search using the excellent [FTS](https://sqlite.org/fts5.html) extension.
As of itself, partial matches in FTS will only work if the match is aligned at the
beginning of a string. However, suffix matches can be implemented by adding and
searching reversed versions of the original columns.

This extension allows you to do the necessary string processing directly within
SQLite.

# How to compile?

On Linux, you can simply do `make` to build the extension and `make install` to
install it. Depending on the details of your installation, you might want to set
the `PREFIX` and `CFLAGS` variables to reflect the destination SQLite include and
installation paths.

    make install PREFIX=/usr/local CFGLAGS="-O2 -I/usr/local/include"

The default `PREFIX` is `/usr`.

# OSX

A separate Makefile is provided for OSX users.

# Windows

The extension should compile fine on Windows. Check the
[instructions](https://www.sqlite.org/loadext.html) on the SQLite page for details.

# License

This code is available under the conditions of the MIT license. If you use this
extension in a project, it would be awesome if you told us about it.
