InputSourceSelector
===================

A utility program to manipulate Input Sources on Mac OS X.
This program is a thin wrapper for [Text Input Sources Services API](https://developer.apple.com/library/mac/documentation/TextFonts/Reference/TextInputSourcesReference/).

Install
=======

Typing
```
$ make
```
on the terminal should generate `InputSourceSelector` executable in the current directory.
Then copy it to somewhere on `$PATH`.

Usage
=====

```
$ InputSourceSelector [command]
```

`[command]` is described below.

Commands
========

* `list` Lists currently installed input sources.
* `list-enabled` Lists currently enabled input sources.
* `current` Prints currently selected input source.
* `current-layout` Prints currently used keyboard layout.
* `enable [input source ID]` Enables specified input source.
* `disable [input source ID]` Disables specified input source.
* `select [input source ID]` Selects specified input source.
* `deselect [input source ID]` Deselects specified input source.

`[input source ID]` is one of the input source IDs printed by `list`,`list-enabled`,`current`,`current-layout` commands,
such as `com.apple.keylayout.US` or `com.apple.inputmethod.Kotoeri.Japanese`.

Examples
========

* List all input sources installed on the system:
```
$ InputSourceSelector list
com.apple.keylayout.Czech-QWERTY (Czech - QWERTY)
com.apple.keylayout.Czech (Czech)
...
com.apple.inputmethod.VietnameseIM.VietnameseVIQR (VIQR)
com.apple.inputmethod.VietnameseIM.VietnameseTelex (Telex)
```

* List currently enabled input sources on the system:
```
$ InputSourceSelector list-enabled
com.apple.keylayout.Dvorak (Dvorak)
com.apple.keylayout.US (U.S.)
...
com.apple.KeyboardViewer (Keyboard Viewer)
com.apple.keylayout.UnicodeHexInput (Unicode Hex Input)
```

* Print the current input source:
```
$ InputSourceSelector current
com.apple.inputmethod.Kotoeri.Roman (Romaji)
```

* Print the current keyboard layout:
```
$ InputSourceSelector current-layout
com.apple.keylayout.Dvorak (Dvorak)
```
