# `../MiniLangCompilerML/std/time.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.time`](Package-std-time-1528865365.md)

Reachable from entry: **yes**

## Imports

- `std/fmt.ml` as `fmt` → [../MiniLangCompilerML/std/fmt.ml](File-minilangcompilerml-std-fmt-ml-1077296850.md)
- `std/string.ml` as `s` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)

## Declarations

<a id="function-function-std-time-decodesystemtime-function-decodesystemtime-buf-minilangcompilerml-std-time-ml-1897428566"></a>
### _decodeSystemTime

```ml
function _decodeSystemTime(buf)
```

Convert a 16-byte SYSTEMTIME buffer into a managed value.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:69`

<a id="function-function-std-time-idiv-function-idiv-a-b-minilangcompilerml-std-time-ml-43036790"></a>
### _idiv

```ml
function _idiv(a, b)
```

Integer division that truncates toward zero.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:344`

<a id="function-function-std-time-nativelocaltime-function-nativelocaltime-minilangcompilerml-std-time-ml-2094873965"></a>
### _nativeLocalTime

```ml
function _nativeLocalTime()
```


Source: `../MiniLangCompilerML/std/time.ml:149`

<a id="function-function-std-time-nativeticks-function-nativeticks-minilangcompilerml-std-time-ml-1993110377"></a>
### _nativeTicks

```ml
function _nativeTicks()
```


Source: `../MiniLangCompilerML/std/time.ml:145`

<a id="function-function-std-time-nativeutctime-function-nativeutctime-minilangcompilerml-std-time-ml-2044378053"></a>
### _nativeUtcTime

```ml
function _nativeUtcTime()
```


Source: `../MiniLangCompilerML/std/time.ml:153`

<a id="function-function-std-time-pad2-function-pad2-n-minilangcompilerml-std-time-ml-5482537"></a>
### _pad2

```ml
function _pad2(n)
```

format an int as two digits (zero padded) input: int n returns: string text

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:365`

<a id="function-function-std-time-pad3-function-pad3-n-minilangcompilerml-std-time-ml-1897625787"></a>
### _pad3

```ml
function _pad3(n)
```

format an int as three digits (zero padded) input: int n returns: string text

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:374`

<a id="function-function-std-time-pad4-function-pad4-n-minilangcompilerml-std-time-ml-952497653"></a>
### _pad4

```ml
function _pad4(n)
```

format an int as four digits (zero padded) input: int n returns: string text

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:383`

<a id="function-function-std-time-timeerr-function-timeerr-msg-minilangcompilerml-std-time-ml-1017085800"></a>
### _timeErr

```ml
function _timeErr(msg)
```

Construct a consistent date/time validation error.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `msg` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:27`

<a id="function-function-std-time-toint-function-toint-x-minilangcompilerml-std-time-ml-1390767583"></a>
### _toInt

```ml
function _toInt(x)
```

Normalize integer-like values for calendar arithmetic.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:324`

<a id="function-function-std-time-u16le-function-u16le-b-off-minilangcompilerml-std-time-ml-1355278948"></a>
### _u16le

```ml
function _u16le(b, off)
```

Decode one little-endian 16-bit field from a native structure buffer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `b` | `dynamic` | — |  |
| `off` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:59`

<a id="namespace-namespace-std-time-clock-namespace-clock-minilangcompilerml-std-time-ml-483360280"></a>
### clock

```ml
namespace clock
```

Time-of-day construction, formatting and arithmetic.


Source: `../MiniLangCompilerML/std/time.ml:660`

<a id="function-function-std-time-clock-addmillis-function-addmillis-t-delta-minilangcompilerml-std-time-ml-471761129"></a>
### addMillis

```ml
function addMillis(t, delta)
```

add milliseconds to a time (wraps within 24h) input: Time t, int deltaMs returns: Time newTime (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `t` | `dynamic` | — |  |
| `delta` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:743`

<a id="function-function-std-time-clock-compare-function-compare-a-b-minilangcompilerml-std-time-ml-250550154"></a>
### compare

```ml
function compare(a, b)
```

compare two times input: Time a, Time b returns: int (-1, 0, 1)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:691`

<a id="function-function-std-time-clock-frommillis-function-frommillis-ms-minilangcompilerml-std-time-ml-543993765"></a>
### fromMillis

```ml
function fromMillis(ms)
```

convert milliseconds since 00:00 into a Time input: int msOfDay (0..86399999) returns: Time value (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ms` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:720`

<a id="function-function-std-time-clock-isvalid-function-isvalid-t-minilangcompilerml-std-time-ml-2118723667"></a>
### isValid

```ml
function isValid(t)
```

validate a Time struct input: Time t returns: bool valid

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:682`

<a id="function-function-std-time-clock-isvalidhmsm-function-isvalidhmsm-h-m-s0-ms-minilangcompilerml-std-time-ml-1145352059"></a>
### isValidHMSM

```ml
function isValidHMSM(h, m, s0, ms)
```

validate a time quadruple (hour, minute, second, millisecond) input: int hour, int minute, int second, int millisecond returns: bool valid

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `dynamic` | — |  |
| `m` | `dynamic` | — |  |
| `s0` | `dynamic` | — |  |
| `ms` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:666`

<a id="function-function-std-time-clock-parse-function-parse-text-minilangcompilerml-std-time-ml-135447770"></a>
### parse

```ml
function parse(text)
```

parse time in the form HH:MM or HH:MM:SS[.mmm] input: string text returns: Time OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:778`

<a id="function-function-std-time-clock-tomillis-function-tomillis-t-minilangcompilerml-std-time-ml-1635903055"></a>
### toMillis

```ml
function toMillis(t)
```

convert a Time into milliseconds since 00:00:00.000 input: Time t returns: int msOfDay (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:708`

<a id="function-function-std-time-clock-tostring-function-tostring-t-minilangcompilerml-std-time-ml-1865877363"></a>
### toString

```ml
function toString(t)
```

format time as HH:MM:SS.mmm input: Time t returns: string (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:766`

<a id="function-function-std-time-clocktostring-function-clocktostring-t-minilangcompilerml-std-time-ml-158455251"></a>
### clockToString

```ml
function clockToString(t)
```

format a Time as a string (HH:MM:SS.mmm) input: Time t returns: string text (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1145`

<a id="namespace-namespace-std-time-date-namespace-date-minilangcompilerml-std-time-ml-2141948406"></a>
### date

```ml
namespace date
```

Calendar-date construction, validation and arithmetic.


Source: `../MiniLangCompilerML/std/time.ml:388`

- [std.time.Date](Type-std-time-date-1789990781.md) — struct
<a id="function-function-std-time-date-adddays-function-adddays-d-delta-minilangcompilerml-std-time-ml-42299291"></a>
### addDays

```ml
function addDays(d, delta)
```

add days to a date input: Date d, int deltaDays returns: Date newDate (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |
| `delta` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:574`

<a id="function-function-std-time-date-compare-function-compare-a-b-minilangcompilerml-std-time-ml-860239502"></a>
### compare

```ml
function compare(a, b)
```

compare two dates input: Date a, Date b returns: int (-1, 0, 1)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:559`

<a id="function-function-std-time-date-dayofweek-function-dayofweek-d-minilangcompilerml-std-time-ml-1550618869"></a>
### dayOfWeek

```ml
function dayOfWeek(d)
```

compute day of week for a date input: Date d returns: int (Monday=1 .. Sunday=7) (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:604`

<a id="function-function-std-time-date-daysinmonth-function-daysinmonth-year-month-minilangcompilerml-std-time-ml-268049504"></a>
### daysInMonth

```ml
function daysInMonth(year, month)
```

number of days in a month for a given year input: int year, int month (1..12) returns: int days (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `year` | `dynamic` | — |  |
| `month` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:412`

<a id="function-function-std-time-date-diffdays-function-diffdays-a-b-minilangcompilerml-std-time-ml-1389316528"></a>
### diffDays

```ml
function diffDays(a, b)
```

difference in days between two dates input: Date a, Date b returns: int (b - a) in days (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:590`

<a id="function-function-std-time-date-fromordinal-function-fromordinal-days-minilangcompilerml-std-time-ml-1390044414"></a>
### fromOrdinal

```ml
function fromOrdinal(days)
```

inverse of toOrdinal input: int daysSince00010101 returns: Date value (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `days` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:502`

<a id="function-function-std-time-date-isleapyear-function-isleapyear-year-minilangcompilerml-std-time-ml-1635428622"></a>
### isLeapYear

```ml
function isLeapYear(year)
```

check if a year is a leap year (Gregorian rules) input: int year returns: bool isLeap

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `year` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:394`

<a id="function-function-std-time-date-isvalid-function-isvalid-d-minilangcompilerml-std-time-ml-1035872367"></a>
### isValid

```ml
function isValid(d)
```

validate a Date struct input: Date d returns: bool valid

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:463`

<a id="function-function-std-time-date-isvalidymd-function-isvalidymd-year-month-day-minilangcompilerml-std-time-ml-502957386"></a>
### isValidYMD

```ml
function isValidYMD(year, month, day)
```

validate a date triple (year, month, day) input: int year, int month, int day returns: bool valid

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `year` | `dynamic` | — |  |
| `month` | `dynamic` | — |  |
| `day` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:442`

<a id="function-function-std-time-date-parse-function-parse-text-minilangcompilerml-std-time-ml-1240605886"></a>
### parse

```ml
function parse(text)
```

parse a date in the form YYYY-MM-DD input: string text returns: Date OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:631`

<a id="function-function-std-time-date-toordinal-function-toordinal-d-minilangcompilerml-std-time-ml-760801671"></a>
### toOrdinal

```ml
function toOrdinal(d)
```

convert a Date to an ordinal day count input: Date d returns: int daysSince00010101 (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:472`

<a id="function-function-std-time-date-tostring-function-tostring-d-minilangcompilerml-std-time-ml-1743710703"></a>
### toString

```ml
function toString(d)
```

format date as YYYY-MM-DD input: Date d returns: string (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:619`

<a id="namespace-namespace-std-time-datetime-namespace-datetime-minilangcompilerml-std-time-ml-121219492"></a>
### datetime

```ml
namespace datetime
```

Combined local/UTC date-time conversion and arithmetic.


Source: `../MiniLangCompilerML/std/time.ml:831`

- [std.time.DateTime](Type-std-time-datetime-1990581564.md) — struct
<a id="function-function-std-time-datetime-adddays-function-adddays-dt-deltadays-minilangcompilerml-std-time-ml-1420972769"></a>
### addDays

```ml
function addDays(dt, deltaDays)
```

add whole days to a DateTime (keeps clock time) input: DateTime dt, int deltaDays returns: DateTime newDateTime (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |
| `deltaDays` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:916`

<a id="function-function-std-time-datetime-addmillis-function-addmillis-dt-delta-minilangcompilerml-std-time-ml-633442390"></a>
### addMillis

```ml
function addMillis(dt, delta)
```

add milliseconds to a DateTime input: DateTime dt, int deltaMs returns: DateTime newDateTime (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |
| `delta` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:880`

<a id="function-function-std-time-datetime-compare-function-compare-a-b-minilangcompilerml-std-time-ml-1330917893"></a>
### compare

```ml
function compare(a, b)
```

compare two date-times input: DateTime a, DateTime b returns: int (-1, 0, 1)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:846`

<a id="function-function-std-time-datetime-fromsystemtime-function-fromsystemtime-st-minilangcompilerml-std-time-ml-278482471"></a>
### fromSystemTime

```ml
function fromSystemTime(st)
```

convert a native SystemTime value to a DateTime input: SystemTime st returns: DateTime (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `st` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:984`

<a id="function-function-std-time-datetime-fromunixmillis-function-fromunixmillis-unixms-minilangcompilerml-std-time-ml-580485424"></a>
### fromUnixMillis

```ml
function fromUnixMillis(unixMs)
```

convert Unix milliseconds since 1970 - 01 - 01T00:00:00Z to a DateTime input: int unixMs returns: DateTime (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `unixMs` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1053`

<a id="function-function-std-time-datetime-isvalid-function-isvalid-dt-minilangcompilerml-std-time-ml-293124426"></a>
### isValid

```ml
function isValid(dt)
```

validate a DateTime struct input: DateTime dt returns: bool valid

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:837`

<a id="function-function-std-time-datetime-nowlocal-function-nowlocal-minilangcompilerml-std-time-ml-352806034"></a>
### nowLocal

```ml
function nowLocal()
```

current local wall-clock DateTime input: none returns: DateTime (or void on failure)


Source: `../MiniLangCompilerML/std/time.ml:1020`

<a id="function-function-std-time-datetime-nowunixmillisutc-function-nowunixmillisutc-minilangcompilerml-std-time-ml-1601186218"></a>
### nowUnixMillisUtc

```ml
function nowUnixMillisUtc()
```

current Unix milliseconds based on UTC time input: none returns: int unixMs (or void on failure)


Source: `../MiniLangCompilerML/std/time.ml:1084`

<a id="function-function-std-time-datetime-nowutc-function-nowutc-minilangcompilerml-std-time-ml-90088042"></a>
### nowUtc

```ml
function nowUtc()
```

current UTC wall-clock DateTime input: none returns: DateTime (or void on failure)


Source: `../MiniLangCompilerML/std/time.ml:1030`

<a id="function-function-std-time-datetime-parse-function-parse-text-minilangcompilerml-std-time-ml-1708308425"></a>
### parse

```ml
function parse(text)
```

parse a DateTime in the form "YYYY-MM-DD HH:MM:SS[.mmm]" (also accepts 'T') input: string text returns: DateTime OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:947`

<a id="function-function-std-time-datetime-tomillis-function-tomillis-dt-minilangcompilerml-std-time-ml-195432390"></a>
### toMillis

```ml
function toMillis(dt)
```

convert a DateTime to milliseconds since 0001 - 01 - 01 00:00:00.000 input: DateTime dt returns: int ms (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:859`

<a id="function-function-std-time-datetime-tostring-function-tostring-dt-minilangcompilerml-std-time-ml-26783178"></a>
### toString

```ml
function toString(dt)
```

format a DateTime as "YYYY-MM-DD HH:MM:SS.mmm" input: DateTime dt returns: string (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:935`

<a id="function-function-std-time-datetime-tounixmillis-function-tounixmillis-dt-minilangcompilerml-std-time-ml-2102126778"></a>
### toUnixMillis

```ml
function toUnixMillis(dt)
```

convert a DateTime to Unix milliseconds since 1970 - 01 - 01T00:00:00Z input: DateTime dt returns: int unixMs (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1040`

<a id="function-function-std-time-datetimetostring-function-datetimetostring-dt-minilangcompilerml-std-time-ml-873420281"></a>
### datetimeToString

```ml
function datetimeToString(dt)
```

format a DateTime as a string (YYYY-MM-DD HH:MM:SS.mmm) input: DateTime dt returns: string text (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dt` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1154`

<a id="function-function-std-time-datetostring-function-datetostring-d-minilangcompilerml-std-time-ml-1136579799"></a>
### dateToString

```ml
function dateToString(d)
```

format a Date as a string (YYYY-MM-DD) input: Date d returns: string text (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `d` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1136`

<a id="function-function-std-time-elapsed-function-elapsed-start-time-end-time-minilangcompilerml-std-time-ml-491473312"></a>
### elapsed

```ml
function elapsed(start_time, end_time)
```

compute elapsed milliseconds between two tick readings input: int start_time, int end_time returns: int elapsedMs (or void on invalid input)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_time` | `dynamic` | — |  |
| `end_time` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:284`

<a id="function-function-std-time-formatduration-function-formatduration-ms-minilangcompilerml-std-time-ml-1786244325"></a>
### formatDuration

```ml
function formatDuration(ms)
```

format a duration in milliseconds into a readable string input: int ms returns: string text (e.g., "3s 120ms", "2m 05s", "1h 02m 03s")

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ms` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:1098`

<a id="constant-constant-std-time-max-portable-sleep-ms-const-max-portable-sleep-ms-2147483647-minilangcompilerml-std-time-ml-1292063654"></a>
### MAX_PORTABLE_SLEEP_MS

```ml
const MAX_PORTABLE_SLEEP_MS = 2147483647
```


Source: `../MiniLangCompilerML/std/time.ml:24`

<a id="function-function-std-time-sleep-function-sleep-ms-minilangcompilerml-std-time-ml-1900161135"></a>
### sleep

```ml
function sleep(ms)
```

sleep for a number of milliseconds input: int ms returns: void

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ms` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:254`

- [std.time.SystemTime](Type-std-time-systemtime-224467961.md) — struct
<a id="constant-constant-std-time-systemtime-size-const-systemtime-size-16-minilangcompilerml-std-time-ml-432064205"></a>
### SYSTEMTIME_SIZE

```ml
const SYSTEMTIME_SIZE = 16
```

------------------------------------------------------------ SYSTEMTIME decoding helpers (used for WinAPI GetLocalTime/GetSystemTime) ------------------------------------------------------------


Source: `../MiniLangCompilerML/std/time.ml:44`

<a id="function-function-std-time-ticks-function-ticks-minilangcompilerml-std-time-ml-1785995465"></a>
### ticks

```ml
function ticks()
```

read monotonic milliseconds since system start (no wall-clock) input: none returns: int milliseconds (u64)


Source: `../MiniLangCompilerML/std/time.ml:244`

- [std.time.Time](Type-std-time-time-366461368.md) — struct
<a id="constant-constant-std-time-time-err-const-time-err-300-minilangcompilerml-std-time-ml-2137575273"></a>
### TIME_ERR

```ml
const TIME_ERR = 300
```

Monotonic timing, durations and calendar conversion on Windows and Linux.


Source: `../MiniLangCompilerML/std/time.ml:23`

<a id="constant-constant-std-time-unix-epoch-ordinal-const-unix-epoch-ordinal-719162-minilangcompilerml-std-time-ml-1206958414"></a>
### UNIX_EPOCH_ORDINAL

```ml
const UNIX_EPOCH_ORDINAL = 719162
```

Ordinal day count for 1970-01-01, with 0001-01-01 as day 0.


Source: `../MiniLangCompilerML/std/time.ml:321`

<a id="namespace-namespace-std-time-win32-namespace-win32-minilangcompilerml-std-time-ml-1747380136"></a>
### win32

```ml
namespace win32
```

------------------------------------------------------------ Platform-native time helpers. ------------------------------------------------------------


Source: `../MiniLangCompilerML/std/time.ml:99`

<a id="extern_function-extern-function-std-time-win32-getlocaltime-extern-function-getlocaltime-outbuf-as-bytes-from-kernel32-dll-symbol-getlocaltime-returns-void-minilangcompilerml-std-time-ml-491555754"></a>
### _GetLocalTime

```ml
extern function _GetLocalTime(outBuf as bytes) from "kernel32.dll" symbol "GetLocalTime" returns void
```

Wall-clock (local / UTC) WinAPI uses an out-pointer. The MiniLang stdlib provides 0-arg wrappers that return a decoded std.time.SystemTime value.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `outBuf` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:119`

<a id="extern_function-extern-function-std-time-win32-getsystemtime-extern-function-getsystemtime-outbuf-as-bytes-from-kernel32-dll-symbol-getsystemtime-returns-void-minilangcompilerml-std-time-ml-441075898"></a>
### _GetSystemTime

```ml
extern function _GetSystemTime(outBuf as bytes) from "kernel32.dll" symbol "GetSystemTime" returns void
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `outBuf` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:120`

<a id="function-function-std-time-win32-getlocaltime-function-getlocaltime-minilangcompilerml-std-time-ml-1299716862"></a>
### GetLocalTime

```ml
function GetLocalTime()
```

get local wall-clock time via Win32 GetLocalTime input: none returns: SystemTime value (or void on failure)


Source: `../MiniLangCompilerML/std/time.ml:127`

<a id="function-function-std-time-win32-getsystemtime-function-getsystemtime-minilangcompilerml-std-time-ml-1765549426"></a>
### GetSystemTime

```ml
function GetSystemTime()
```

get UTC wall-clock time via Win32 GetSystemTime input: none returns: SystemTime value (or void on failure)


Source: `../MiniLangCompilerML/std/time.ml:138`

<a id="extern_function-extern-function-std-time-win32-gettickcount64-extern-function-gettickcount64-from-kernel32-dll-returns-u64-minilangcompilerml-std-time-ml-1930869739"></a>
### GetTickCount64

```ml
extern function GetTickCount64() from "kernel32.dll" returns u64
```

Use the 64-bit tick counter to avoid 32-bit wrap-around.


Source: `../MiniLangCompilerML/std/time.ml:113`

<a id="extern_function-extern-function-std-time-win32-sleep-extern-function-sleep-dwmilliseconds-as-u32-from-kernel32-dll-returns-void-minilangcompilerml-std-time-ml-1004104139"></a>
### Sleep

```ml
extern function Sleep(dwMilliseconds as u32) from "kernel32.dll" returns void
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `dwMilliseconds` | `u32` | — |  |


Source: `../MiniLangCompilerML/std/time.ml:114`

- [std.time.win32.SYSTEMTIME](Type-std-time-win32-systemtime-704459330.md) — extern_struct
