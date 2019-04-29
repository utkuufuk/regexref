# RegEx Reference
 1. [Tools](#tools)
 2. [Cheatsheet](#cheatsheet)
 3. [Examples](#examples)
 4. [Programming Languages](#programming-languages)

## Tools
 1. [Online Tool](https://regex101.com/)
 2. `grep -P "<regex>" <path>`
 3. `sag "<regex>" <path>`
 4. VS Code: `Ctrl+F > Alt+R`

## Cheatsheet
### Common
| RegEx | Description                           |
|:------|:--------------------------------------|
|  .    | Any Character Except New Line         |
|  \d   | Digit (0-9)                           |
|  \D   | Not a Digit (0-9)                     |
|  \w   | Word Character (a-z, A-Z, 0-9, _)     |
|  \W   | Not a Word Character                  |
|  \s   | Whitespace (space, tab, newline)      |
|  \S   | Not Whitespace (space, tab, newline)  |
|  \b   | Word Boundary                         |
|  \B   | Not a Word Boundary                   |
|  ^    | Beginning of a String                 |
|  $    | End of a String                       |
|  []   | Matches Characters in brackets        |
|  [^ ] | Matches Characters NOT in brackets    |
|  ( )  | Either Or Group                       |

### Quantifiers
 | RegEx  | Description                         |    
 |:-------|:------------------------------------|  
 |  *     | 0 or More                           |
 |  +     | 1 or More                           |
 |  ?     | 0 or One                            |
 |  {3}   | Exact Number                        |
 |  {3,4} | Range of Numbers (Minimum, Maximum) |

## Examples
### Exact Match
```sh
ninja       # 'ninja'
^ninja$     # exactly 'ninja' and nothing else
```

### Character Set
``` sh
[ng]inja    # 'ninja' or 'ginja'
ninja[1-9]  # 'ninja1' to 'ninja9'
[^n]inja    # every '_inja' except 'ninja'
```

### Multiple Characters
``` sh
[0-9]+          # multiple digits
a{3}            # 3 'a's
[a-zA-Z]{5,8}   # 5 to 8 characters
```

### Optional/Alternate Matches
``` sh
(cat|dog|bird)  # 'cat' or 'dog' or 'bird'
M(r|s|rs)\.?    # 'Mr/Mr./Ms/Ms./Mrs/Mrs.'
```

### Matching Results Using Groups
``` sh
# TODO: add regex
https://www.google.com
http://coreyms.com
https://youtube.com
https://www.nasa.gov
```

## Programming Languages
### JavaScript
``` javascript
// these two are equivalent
const reg1 = /[a-z]/i
const reg2 = new RegExp(/[a-z]/, 'i')

reg1.test("b")  // true
reg2.test("3")  // false
```
