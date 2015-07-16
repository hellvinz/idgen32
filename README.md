# Idgen32

[![Build Status](https://travis-ci.org/hellvinz/idgen32.png)](https://travis-ci.org/hellvinz/idgen32)

Idgen32 functions provide a facility to generate a stream of 32-bit
numbers that are strongly unpredictable and have a repetition cycle close
to 2^32.  Such numbers are useful as protocol identifiers where there are
negative consequences to reusing an ID within a short time period, as may
happen if they are simply assigned at random.

Note that this function will never return 0 as it often has a special 
meaning in network protocols.

## DEPENDENCIES

Require a compiler and the standard C library. arc4random on linux is needed (provided via libbsd-dev on ubuntu/debian)

If you want to run the tests you'll need to have the following dependencies installed:

* minitest

## USAGE

```
require 'idgen32'

Idgen32.instance.generate
```

## LICENSE:

Copyright (c) 2008 Vincent Hellot

Parts of the C extension are borrowed from the OpenBsd project.
crypto/idgen.h
crypto/idgen.c

Copyright (c) 2008 Damien Miller <djm@mindrot.org>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

IDGEN32: non-repeating ID generation covering an almost maximal
32 bit range.
Based on public domain SKIP32 by Greg Rose.
