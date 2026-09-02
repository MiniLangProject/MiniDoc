# `../MiniLangCompilerML/std/math.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.math`](Package-std-math-653491218.md)

Reachable from entry: **yes**

## Declarations

<a id="function-function-std-math-wrappi-function-wrappi-x-minilangcompilerml-std-math-ml-1843607905"></a>
### _wrapPi

```ml
function _wrapPi(x)
```

internal: range reduce to (-pi, pi] input: float x returns: float y in (-pi, pi]

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:329`

<a id="function-function-std-math-abs-function-abs-x-minilangcompilerml-std-math-ml-1559033809"></a>
### abs

```ml
function abs(x)
```

absolute value input: int|float x returns: int|float absX (void on type mismatch)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:36`

<a id="function-function-std-math-acos-function-acos-x-minilangcompilerml-std-math-ml-62874913"></a>
### acos

```ml
function acos(x)
```

arccosine acos(x) input: int|float x (expected in [-1,1]) returns: float acos(x) (radians)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:702`

<a id="function-function-std-math-asin-function-asin-x-minilangcompilerml-std-math-ml-1368116781"></a>
### asin

```ml
function asin(x)
```

arcsine asin(x) input: int|float x (expected in [-1,1]) returns: float asin(x) (radians)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:692`

<a id="function-function-std-math-atan-function-atan-x-minilangcompilerml-std-math-ml-180469689"></a>
### atan

```ml
function atan(x)
```

arctangent (fast approximation) input: int|float x returns: float atan(x) (radians)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:426`

<a id="function-function-std-math-atan2-function-atan2-y-x-minilangcompilerml-std-math-ml-417050634"></a>
### atan2

```ml
function atan2(y, x)
```

arctangent with quadrant handling input: int|float y, int|float x returns: float atan2(y, x) (radians)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `y` | `dynamic` | — |  |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:453`

<a id="function-function-std-math-ceil-function-ceil-x-minilangcompilerml-std-math-ml-387577941"></a>
### ceil

```ml
function ceil(x)
```

ceil(x) -> integer-valued number input: int|float x returns: int if x is int, otherwise a float with an integer value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:131`

<a id="function-function-std-math-clamp-function-clamp-x-lo-hi-minilangcompilerml-std-math-ml-1235497713"></a>
### clamp

```ml
function clamp(x, lo, hi)
```

clamp a number to [lo, hi] input: int|float x, int|float lo, int|float hi returns: int|float clamped

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |
| `lo` | `dynamic` | — |  |
| `hi` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:69`

<a id="function-function-std-math-cos-function-cos-x-minilangcompilerml-std-math-ml-1771853619"></a>
### cos

```ml
function cos(x)
```

cosine (fast approximation) input: int|float x (radians) returns: float cos(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:378`

<a id="function-function-std-math-cosh-function-cosh-x-minilangcompilerml-std-math-ml-1047827673"></a>
### cosh

```ml
function cosh(x)
```

hyperbolic cosine cosh(x) input: int|float x returns: float cosh(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:723`

<a id="function-function-std-math-degtorad-function-degtorad-deg-minilangcompilerml-std-math-ml-1029649665"></a>
### degToRad

```ml
function degToRad(deg)
```

converts degrees to radians input: int|float deg returns: float rad

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `deg` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:196`

<a id="function-function-std-math-e-function-e-minilangcompilerml-std-math-ml-2050649547"></a>
### e

```ml
function e()
```

mathematical constant e input: none returns: float e


Source: `../MiniLangCompilerML/std/math.ml:491`

<a id="function-function-std-math-exp-function-exp-x-minilangcompilerml-std-math-ml-1357171067"></a>
### exp

```ml
function exp(x)
```

exponential function exp(x) input: int|float x returns: float expX

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:533`

<a id="function-function-std-math-expm1-function-expm1-x-minilangcompilerml-std-math-ml-987299511"></a>
### expm1

```ml
function expm1(x)
```

expm1(x) = exp(x) - 1, with good accuracy near 0 input: int|float x returns: float expXminus1

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:558`

<a id="function-function-std-math-floor-function-floor-x-minilangcompilerml-std-math-ml-1352412673"></a>
### floor

```ml
function floor(x)
```

floor(x) -> integer-valued number input: int|float x returns: int if x is int, otherwise a float with an integer value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:108`

<a id="function-function-std-math-fract-function-fract-x-minilangcompilerml-std-math-ml-982702181"></a>
### fract

```ml
function fract(x)
```

fractional part of x input: int|float x returns: float frac in [0,1) for x>=0, in (-1,0] for x<0

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:745`

<a id="function-function-std-math-gcd-function-gcd-a-b-minilangcompilerml-std-math-ml-1050735524"></a>
### gcd

```ml
function gcd(a, b)
```

greatest common divisor (Euclidean algorithm) input: int a, int b returns: int gcd (void on type mismatch)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:285`

<a id="function-function-std-math-hypot-function-hypot-x-y-minilangcompilerml-std-math-ml-233563048"></a>
### hypot

```ml
function hypot(x, y)
```

hypotenuse: sqrt(x*x + y*y) input: int|float x, int|float y returns: float hypot

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |
| `y` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:482`

<a id="function-function-std-math-invsqrt-function-invsqrt-x-minilangcompilerml-std-math-ml-363179931"></a>
### invSqrt

```ml
function invSqrt(x)
```

inverse square root 1/sqrt(x) input: int|float x returns: float invSqrt (0.0 for x<=0)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:679`

<a id="function-function-std-math-isintvalue-function-isintvalue-x-minilangcompilerml-std-math-ml-281497737"></a>
### isIntValue

```ml
function isIntValue(x)
```

checks whether a numeric value is an integer value input: int|float x returns: bool isIntegerValue

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:518`

<a id="function-function-std-math-isnumber-function-isnumber-x-minilangcompilerml-std-math-ml-2061649545"></a>
### isNumber

```ml
function isNumber(x)
```

checks whether a value is a numeric type input: any x returns: bool isNumber

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:26`

<a id="function-function-std-math-lcm-function-lcm-a-b-minilangcompilerml-std-math-ml-1377826712"></a>
### lcm

```ml
function lcm(a, b)
```

least common multiple input: int a, int b returns: int lcm (void on type mismatch)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:306`

<a id="function-function-std-math-lerp-function-lerp-a-b-t-minilangcompilerml-std-math-ml-1979694726"></a>
### lerp

```ml
function lerp(a, b, t)
```

linear interpolation input: int|float a, int|float b, float t returns: float lerpValue

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:754`

<a id="function-function-std-math-ln-function-ln-x-minilangcompilerml-std-math-ml-1153585033"></a>
### ln

```ml
function ln(x)
```

natural logarithm ln(x) input: int|float x returns: float lnX (void if x <= 0)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:574`

<a id="function-function-std-math-ln10-function-ln10-minilangcompilerml-std-math-ml-1663599153"></a>
### ln10

```ml
function ln10()
```

natural logarithm of 10 input: none returns: float ln10


Source: `../MiniLangCompilerML/std/math.ml:509`

<a id="function-function-std-math-ln1p-function-ln1p-x-minilangcompilerml-std-math-ml-17730877"></a>
### ln1p

```ml
function ln1p(x)
```

ln1p(x) = ln(1+x), with good accuracy near 0 input: int|float x returns: float ln1p

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:612`

<a id="function-function-std-math-ln2-function-ln2-minilangcompilerml-std-math-ml-172045213"></a>
### ln2

```ml
function ln2()
```

natural logarithm of 2 input: none returns: float ln2


Source: `../MiniLangCompilerML/std/math.ml:500`

<a id="function-function-std-math-log10-function-log10-x-minilangcompilerml-std-math-ml-1522210063"></a>
### log10

```ml
function log10(x)
```

base - 10 logarithm log10(x) input: int|float x returns: float log10X (void if x <= 0)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:628`

<a id="function-function-std-math-log2-function-log2-x-minilangcompilerml-std-math-ml-1336330297"></a>
### log2

```ml
function log2(x)
```

base - 2 logarithm log2(x) input: int|float x returns: float log2X (void if x <= 0)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:637`

<a id="function-function-std-math-max-function-max-a-b-minilangcompilerml-std-math-ml-817051324"></a>
### max

```ml
function max(a, b)
```

maximum of two values input: comparable a, comparable b returns: comparable maxValue

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:96`

<a id="function-function-std-math-min-function-min-a-b-minilangcompilerml-std-math-ml-846197672"></a>
### min

```ml
function min(a, b)
```

minimum of two values input: comparable a, comparable b returns: comparable minValue

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:84`

<a id="function-function-std-math-pi-function-pi-minilangcompilerml-std-math-ml-2098599705"></a>
### pi

```ml
function pi()
```

mathematical constant pi input: none returns: float pi


Source: `../MiniLangCompilerML/std/math.ml:178`

<a id="function-function-std-math-pow-function-pow-base-exponent-minilangcompilerml-std-math-ml-1444949983"></a>
### pow

```ml
function pow(base, exponent)
```

pow(base, exponent) input: int|float base, int|float exponent returns: float powResult (void for unsupported cases)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `base` | `dynamic` | — |  |
| `exponent` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:646`

<a id="function-function-std-math-powi-function-powi-base-exp-minilangcompilerml-std-math-ml-1463913133"></a>
### powi

```ml
function powi(base, exp)
```

integer power (exponentiation by squaring) input: int|float base, int exp returns: int|float base^exp (void on type mismatch)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `base` | `dynamic` | — |  |
| `exp` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:243`

<a id="function-function-std-math-radtodeg-function-radtodeg-rad-minilangcompilerml-std-math-ml-1667693108"></a>
### radToDeg

```ml
function radToDeg(rad)
```

converts radians to degrees input: int|float rad returns: float deg

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `rad` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:205`

<a id="function-function-std-math-round-function-round-x-minilangcompilerml-std-math-ml-848179333"></a>
### round

```ml
function round(x)
```

rounds to the nearest integer (half away from zero) input: int|float x returns: int if x is int, otherwise a float with an integer value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:163`

<a id="function-function-std-math-sign-function-sign-x-minilangcompilerml-std-math-ml-1342475801"></a>
### sign

```ml
function sign(x)
```

sign of a number input: int|float x returns: int sign (-1, 0, 1) (void on type mismatch)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:51`

<a id="function-function-std-math-sin-function-sin-x-minilangcompilerml-std-math-ml-1054457121"></a>
### sin

```ml
function sin(x)
```

sine (fast approximation) input: int|float x (radians) returns: float sin(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:346`

<a id="function-function-std-math-sinh-function-sinh-x-minilangcompilerml-std-math-ml-1344565409"></a>
### sinh

```ml
function sinh(x)
```

hyperbolic sine sinh(x) input: int|float x returns: float sinh(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:712`

<a id="function-function-std-math-smoothstep-function-smoothstep-edge0-edge1-x-minilangcompilerml-std-math-ml-1546199252"></a>
### smoothstep

```ml
function smoothstep(edge0, edge1, x)
```

smoothstep interpolation (Hermite) input: float edge0, float edge1, float x returns: float y in [0,1]

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `edge0` | `dynamic` | — |  |
| `edge1` | `dynamic` | — |  |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:763`

<a id="function-function-std-math-sqrt-function-sqrt-x-minilangcompilerml-std-math-ml-741044785"></a>
### sqrt

```ml
function sqrt(x)
```

square root (Newton iteration) input: int|float x returns: float sqrtX (0.0 for x<=0)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:214`

<a id="function-function-std-math-tan-function-tan-x-minilangcompilerml-std-math-ml-408556383"></a>
### tan

```ml
function tan(x)
```

tangent (sin/cos) input: int|float x (radians) returns: float tan(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:409`

<a id="function-function-std-math-tanh-function-tanh-x-minilangcompilerml-std-math-ml-433241853"></a>
### tanh

```ml
function tanh(x)
```

hyperbolic tangent tanh(x) input: int|float x returns: float tanh(x)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:734`

<a id="function-function-std-math-tau-function-tau-minilangcompilerml-std-math-ml-455783885"></a>
### tau

```ml
function tau()
```

mathematical constant tau (2*pi) input: none returns: float tau


Source: `../MiniLangCompilerML/std/math.ml:187`

<a id="function-function-std-math-trunc-function-trunc-x-minilangcompilerml-std-math-ml-789230857"></a>
### trunc

```ml
function trunc(x)
```

truncates towards 0 input: int|float x returns: int if x is int, otherwise a float with an integer value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/math.ml:147`
