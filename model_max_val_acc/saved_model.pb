÷¶
ЇК
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Е…
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
В
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А¬А*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:А¬А*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0
Р
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/m
Й
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0
Р
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/m
Й
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
Е
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А¬А*$
shared_nameAdam/dense/kernel/m
~
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*!
_output_shapes
:А¬А*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/m
А
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0
Р
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/v
Й
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0
Р
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/v
Й
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
Е
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А¬А*$
shared_nameAdam/dense/kernel/v
~
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*!
_output_shapes
:А¬А*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/v
А
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
÷M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*СM
valueЗMBДM BэL
≠
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
y
layer-0
layer-1
layer-2
trainable_variables
regularization_losses
	variables
	keras_api

	keras_api
h

kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
h

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
R
1trainable_variables
2regularization_losses
3	variables
4	keras_api
R
5trainable_variables
6regularization_losses
7	variables
8	keras_api
h

9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
R
?trainable_variables
@regularization_losses
A	variables
B	keras_api
R
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
R
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
h

Kkernel
Lbias
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
h

Qkernel
Rbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
И
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_ratemґmЈ+mЄ,mє9mЇ:mїKmЉLmљQmЊRmњvјvЅ+v¬,v√9vƒ:v≈Kv∆Lv«Qv»Rv…
F
0
1
+2
,3
94
:5
K6
L7
Q8
R9
 
F
0
1
+2
,3
94
:5
K6
L7
Q8
R9
≠
\metrics
]layer_regularization_losses
trainable_variables
^non_trainable_variables
_layer_metrics
regularization_losses

`layers
	variables
 

a_rng
b	keras_api

c_rng
d	keras_api

e_rng
f	keras_api
 
 
 
≠
gmetrics
hlayer_regularization_losses
trainable_variables
inon_trainable_variables
jlayer_metrics
regularization_losses

klayers
	variables
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
lmetrics
mlayer_regularization_losses
trainable_variables
nnon_trainable_variables
olayer_metrics
 regularization_losses

players
!	variables
 
 
 
≠
qmetrics
rlayer_regularization_losses
#trainable_variables
snon_trainable_variables
tlayer_metrics
$regularization_losses

ulayers
%	variables
 
 
 
≠
vmetrics
wlayer_regularization_losses
'trainable_variables
xnon_trainable_variables
ylayer_metrics
(regularization_losses

zlayers
)	variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
≠
{metrics
|layer_regularization_losses
-trainable_variables
}non_trainable_variables
~layer_metrics
.regularization_losses

layers
/	variables
 
 
 
≤
Аmetrics
 Бlayer_regularization_losses
1trainable_variables
Вnon_trainable_variables
Гlayer_metrics
2regularization_losses
Дlayers
3	variables
 
 
 
≤
Еmetrics
 Жlayer_regularization_losses
5trainable_variables
Зnon_trainable_variables
Иlayer_metrics
6regularization_losses
Йlayers
7	variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
≤
Кmetrics
 Лlayer_regularization_losses
;trainable_variables
Мnon_trainable_variables
Нlayer_metrics
<regularization_losses
Оlayers
=	variables
 
 
 
≤
Пmetrics
 Рlayer_regularization_losses
?trainable_variables
Сnon_trainable_variables
Тlayer_metrics
@regularization_losses
Уlayers
A	variables
 
 
 
≤
Фmetrics
 Хlayer_regularization_losses
Ctrainable_variables
Цnon_trainable_variables
Чlayer_metrics
Dregularization_losses
Шlayers
E	variables
 
 
 
≤
Щmetrics
 Ъlayer_regularization_losses
Gtrainable_variables
Ыnon_trainable_variables
Ьlayer_metrics
Hregularization_losses
Эlayers
I	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
 

K0
L1
≤
Юmetrics
 Яlayer_regularization_losses
Mtrainable_variables
†non_trainable_variables
°layer_metrics
Nregularization_losses
Ґlayers
O	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
 

Q0
R1
≤
£metrics
 §layer_regularization_losses
Strainable_variables
•non_trainable_variables
¶layer_metrics
Tregularization_losses
Іlayers
U	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

®0
©1
 
 
 
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13

™
_state_var
 

Ђ
_state_var
 

ђ
_state_var
 
 
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

≠total

Ѓcount
ѓ	variables
∞	keras_api
I

±total

≤count
≥
_fn_kwargs
і	variables
µ	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

≠0
Ѓ1

ѓ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

±0
≤1

і	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ч
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
ж
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_354752
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_355852
Т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_355988ДР
†
b
F__inference_sequential_layer_call_and_return_conditional_losses_355205

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
М
R
+__inference_sequential_layer_call_fn_353609
random_flip_input
identity№
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3536062
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
÷
J
.__inference_max_pooling2d_layer_call_fn_354204

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_3541982
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•?
ъ
H__inference_sequential_1_layer_call_and_return_conditional_losses_354802

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@9
$dense_matmul_readvariableop_resource:А¬А4
%dense_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpi
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/xД
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/add™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp∆
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю*
paddingVALID*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¶
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
conv2d/ReluЅ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolК
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Identity∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp“
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} *
paddingVALID*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
conv2d_1/Relu«
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>> *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolР
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout_1/Identity∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp‘
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_2/Relu«
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolР
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ б  2
flatten/ConstЦ
flatten/ReshapeReshapedropout_2/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2
flatten/ReshapeҐ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:А¬А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddѓ
IdentityIdentitydense_1/BiasAdd:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∆
Ю
)__inference_conv2d_1_layer_call_fn_355564

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}} *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_3542762
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€}} 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
m
F__inference_sequential_layer_call_and_return_conditional_losses_353914
random_flip_input
identityo
IdentityIdentityrandom_flip_input*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
Џ
L
0__inference_max_pooling2d_1_layer_call_fn_354216

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3542102
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
”	
х
C__inference_dense_1_layer_call_and_return_conditional_losses_355679

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Т
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_355616

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
…о
Ц
F__inference_sequential_layer_call_and_return_conditional_losses_353894

inputsI
;random_translation_stateful_uniform_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИҐ/random_rotation/stateful_uniform/RngReadAndSkipҐ2random_translation/stateful_uniform/RngReadAndSkipҐ4random_translation/stateful_uniform_1/RngReadAndSkipў
5random_flip/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА27
5random_flip/random_flip_left_right/control_dependency¬
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/ShapeЇ
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stackЊ
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1Њ
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2і
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_sliceг
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape≥
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min≥
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5random_flip/random_flip_left_right/random_uniform/maxР
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform≠
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€27
5random_flip/random_flip_left_right/random_uniform/Mul™
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1™
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2™
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3М
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shapeУ
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip/random_flip_left_right/Reshapeћ
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip/random_flip_left_right/Round∞
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis°
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2.
,random_flip/random_flip_left_right/ReverseV2ш
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/mulЩ
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2*
(random_flip/random_flip_left_right/sub/xт
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&random_flip/random_flip_left_right/subГ
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip/random_flip_left_right/mul_1п
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/addО
random_translation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_translation/ShapeЪ
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_translation/strided_slice/stackЮ
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_1Ю
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_2‘
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_translation/strided_sliceЮ
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_1/stackҐ
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_1Ґ
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_2ё
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_1Ч
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/CastЮ
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_2/stackҐ
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_1Ґ
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_2ё
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_2Ы
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/Cast_1Ь
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+random_translation/stateful_uniform/shape/1н
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)random_translation/stateful_uniform/shapeЧ
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/stateful_uniform/minЧ
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>2)
'random_translation/stateful_uniform/max†
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_translation/stateful_uniform/Constе
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_translation/stateful_uniform/ProdЪ
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_translation/stateful_uniform/Cast/x√
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_translation/stateful_uniform/Cast_1Є
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_translation/stateful_uniform/RngReadAndSkipЉ
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_translation/stateful_uniform/strided_slice/stackј
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_1ј
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_2ј
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_translation/stateful_uniform/strided_slice“
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_translation/stateful_uniform/Bitcastј
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice_1/stackƒ
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_1ƒ
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_2Є
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_translation/stateful_uniform/strided_slice_1Ў
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform/Bitcast_1∆
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_translation/stateful_uniform/StatelessRandomUniformV2/algЃ
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2>
<random_translation/stateful_uniform/StatelessRandomUniformV2ё
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_translation/stateful_uniform/sub€
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_translation/stateful_uniform/mulв
#random_translation/stateful_uniformAdd+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_translation/stateful_uniformѓ
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul†
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation/stateful_uniform_1/shape/1у
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation/stateful_uniform_1/shapeЫ
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/minЫ
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/max§
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_translation/stateful_uniform_1/Constн
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 2,
*random_translation/stateful_uniform_1/ProdЮ
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_translation/stateful_uniform_1/Cast/x…
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_translation/stateful_uniform_1/Cast_1х
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:26
4random_translation/stateful_uniform_1/RngReadAndSkipј
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/stateful_uniform_1/strided_slice/stackƒ
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_1ƒ
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_2ћ
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_translation/stateful_uniform_1/strided_sliceЎ
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform_1/Bitcastƒ
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice_1/stack»
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_1»
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_2ƒ
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_translation/stateful_uniform_1/strided_slice_1ё
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_translation/stateful_uniform_1/Bitcast_1 
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2D
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algЇ
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2@
>random_translation/stateful_uniform_1/StatelessRandomUniformV2ж
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2+
)random_translation/stateful_uniform_1/subЗ
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/stateful_uniform_1/mulк
%random_translation/stateful_uniform_1Add-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_translation/stateful_uniform_1Ј
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul_1В
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
random_translation/concat/axisа
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/concatђ
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
:2-
+random_translation/translation_matrix/Shapeј
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/translation_matrix/strided_slice/stackƒ
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_1ƒ
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_2∆
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_translation/translation_matrix/strided_slice¶
0random_translation/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
0random_translation/translation_matrix/ones/mul/yБ
.random_translation/translation_matrix/ones/mulMul<random_translation/translation_matrix/strided_slice:output:09random_translation/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 20
.random_translation/translation_matrix/ones/mul©
1random_translation/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и23
1random_translation/translation_matrix/ones/Less/yы
/random_translation/translation_matrix/ones/LessLess2random_translation/translation_matrix/ones/mul:z:0:random_translation/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/ones/Lessђ
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/ones/packed/1Ш
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:23
1random_translation/translation_matrix/ones/packed©
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0random_translation/translation_matrix/ones/ConstЙ
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*random_translation/translation_matrix/ones®
1random_translation/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/zeros/mul/yД
/random_translation/translation_matrix/zeros/mulMul<random_translation/translation_matrix/strided_slice:output:0:random_translation/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/zeros/mulЂ
2random_translation/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и24
2random_translation/translation_matrix/zeros/Less/y€
0random_translation/translation_matrix/zeros/LessLess3random_translation/translation_matrix/zeros/mul:z:0;random_translation/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/zeros/LessЃ
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_translation/translation_matrix/zeros/packed/1Ы
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:24
2random_translation/translation_matrix/zeros/packedЂ
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1random_translation/translation_matrix/zeros/ConstН
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/zerosѕ
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2=
;random_translation/translation_matrix/strided_slice_1/stack”
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_1/stack_1”
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_1/stack_2Ж
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_1ѕ
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/translation_matrix/Negђ
3random_translation/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_1/mul/yК
1random_translation/translation_matrix/zeros_1/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_1/mulѓ
4random_translation/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_1/Less/yЗ
2random_translation/translation_matrix/zeros_1/LessLess5random_translation/translation_matrix/zeros_1/mul:z:0=random_translation/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_1/Less≤
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_1/packed/1°
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_1/packedѓ
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_1/ConstХ
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_1™
2random_translation/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation/translation_matrix/ones_1/mul/yЗ
0random_translation/translation_matrix/ones_1/mulMul<random_translation/translation_matrix/strided_slice:output:0;random_translation/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/ones_1/mul≠
3random_translation/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и25
3random_translation/translation_matrix/ones_1/Less/yГ
1random_translation/translation_matrix/ones_1/LessLess4random_translation/translation_matrix/ones_1/mul:z:0<random_translation/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/ones_1/Less∞
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation/translation_matrix/ones_1/packed/1Ю
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation/translation_matrix/ones_1/packed≠
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2random_translation/translation_matrix/ones_1/ConstС
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/ones_1ѕ
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2=
;random_translation/translation_matrix/strided_slice_2/stack”
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_2/stack_1”
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_2/stack_2Ж
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_2”
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/Neg_1ђ
3random_translation/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_2/mul/yК
1random_translation/translation_matrix/zeros_2/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_2/mulѓ
4random_translation/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_2/Less/yЗ
2random_translation/translation_matrix/zeros_2/LessLess5random_translation/translation_matrix/zeros_2/mul:z:0=random_translation/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_2/Less≤
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_2/packed/1°
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_2/packedѓ
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_2/ConstХ
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_2®
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/concat/axis—
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/concatҐ
"random_translation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_translation/transform/ShapeЃ
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_translation/transform/strided_slice/stack≤
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_1≤
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_2ь
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_translation/transform/strided_sliceЧ
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/transform/fill_valueѕ
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_translation/transform/ImageProjectiveTransformV3™
random_rotation/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation/ShapeФ
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stackШ
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1Ш
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2¬
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_sliceШ
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stackЬ
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1Ь
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2ћ
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1О
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/CastШ
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stackЬ
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1Ь
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2ћ
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2Т
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1Ѓ
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shapeС
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†Њ2&
$random_rotation/stateful_uniform/minС
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†>2&
$random_rotation/stateful_uniform/maxЪ
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Constў
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/ProdФ
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/xЇ
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1©
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkipґ
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stackЇ
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1Ї
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2Ѓ
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice…
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/BitcastЇ
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stackЊ
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1Њ
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2¶
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1ѕ
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1ј
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algШ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2“
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/subп
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2&
$random_rotation/stateful_uniform/mul“
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2"
 random_rotation/stateful_uniformУ
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%random_rotation/rotation_matrix/sub/yЊ
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub•
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/CosЧ
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_1/yƒ
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1”
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/mul•
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/SinЧ
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_2/y¬
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2„
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_1„
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_3„
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_4Ы
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/yк
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation/rotation_matrix/truedivЧ
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_5/y¬
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5©
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_1Ч
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_6/yƒ
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6ў
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_2©
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_1Ч
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_7/y¬
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7ў
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_3„
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/add„
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_8Я
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/yр
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation/rotation_matrix/truediv_1Ґ
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shapeі
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stackЄ
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1Є
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2Ґ
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice©
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_2њ
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack√
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1√
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2„
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1©
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_2њ
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack√
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1√
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2„
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2љ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/Negњ
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack√
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1√
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2ў
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3©
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_3њ
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack√
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1√
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2„
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4©
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_3њ
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack√
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1√
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2„
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5њ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack√
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1√
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2џ
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6Ь
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/yм
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mulЯ
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2.
,random_rotation/rotation_matrix/zeros/Less/yз
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/LessҐ
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1Г
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packedЯ
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Constх
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/zerosЬ
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis»
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2(
&random_rotation/rotation_matrix/concatЊ
random_rotation/transform/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape®
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stackђ
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1ђ
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2к
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_sliceС
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_valueя
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3≈
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЂP
б	
!__inference__wrapped_model_353598
sequential_inputL
2sequential_1_conv2d_conv2d_readvariableop_resource:A
3sequential_1_conv2d_biasadd_readvariableop_resource:N
4sequential_1_conv2d_1_conv2d_readvariableop_resource: C
5sequential_1_conv2d_1_biasadd_readvariableop_resource: N
4sequential_1_conv2d_2_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_2_biasadd_readvariableop_resource:@F
1sequential_1_dense_matmul_readvariableop_resource:А¬АA
2sequential_1_dense_biasadd_readvariableop_resource:	АF
3sequential_1_dense_1_matmul_readvariableop_resource:	АB
4sequential_1_dense_1_biasadd_readvariableop_resource:
identityИҐ*sequential_1/conv2d/BiasAdd/ReadVariableOpҐ)sequential_1/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_2/Conv2D/ReadVariableOpҐ)sequential_1/dense/BiasAdd/ReadVariableOpҐ(sequential_1/dense/MatMul/ReadVariableOpҐ+sequential_1/dense_1/BiasAdd/ReadVariableOpҐ*sequential_1/dense_1/MatMul/ReadVariableOpГ
sequential_1/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
sequential_1/rescaling/Cast/xЗ
sequential_1/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/rescaling/Cast_1/xµ
sequential_1/rescaling/mulMulsequential_input&sequential_1/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_1/rescaling/mul«
sequential_1/rescaling/addAddV2sequential_1/rescaling/mul:z:0(sequential_1/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
sequential_1/rescaling/add—
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)sequential_1/conv2d/Conv2D/ReadVariableOpъ
sequential_1/conv2d/Conv2DConv2Dsequential_1/rescaling/add:z:01sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю*
paddingVALID*
strides
2
sequential_1/conv2d/Conv2D»
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential_1/conv2d/BiasAdd/ReadVariableOpЏ
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
sequential_1/conv2d/BiasAddЮ
sequential_1/conv2d/ReluRelu$sequential_1/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
sequential_1/conv2d/Reluи
"sequential_1/max_pooling2d/MaxPoolMaxPool&sequential_1/conv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
2$
"sequential_1/max_pooling2d/MaxPool±
sequential_1/dropout/IdentityIdentity+sequential_1/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential_1/dropout/Identity„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpЖ
sequential_1/conv2d_1/Conv2DConv2D&sequential_1/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} *
paddingVALID*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpа
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
sequential_1/conv2d_1/BiasAddҐ
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
sequential_1/conv2d_1/Reluо
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>> *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolЈ
sequential_1/dropout_1/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2!
sequential_1/dropout_1/Identity„
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_1/conv2d_2/Conv2D/ReadVariableOpИ
sequential_1/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/Identity:output:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
sequential_1/conv2d_2/Conv2Dќ
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpа
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
sequential_1/conv2d_2/BiasAddҐ
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
sequential_1/conv2d_2/Reluо
$sequential_1/max_pooling2d_2/MaxPoolMaxPool(sequential_1/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_2/MaxPoolЈ
sequential_1/dropout_2/IdentityIdentity-sequential_1/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_1/dropout_2/IdentityЙ
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ б  2
sequential_1/flatten/Const 
sequential_1/flatten/ReshapeReshape(sequential_1/dropout_2/Identity:output:0#sequential_1/flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2
sequential_1/flatten/Reshape…
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource*!
_output_shapes
:А¬А*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOpћ
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_1/dense/MatMul∆
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOpќ
sequential_1/dense/BiasAddBiasAdd#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_1/dense/BiasAddТ
sequential_1/dense/ReluRelu#sequential_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_1/dense/ReluЌ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp—
sequential_1/dense_1/MatMulMatMul%sequential_1/dense/Relu:activations:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_1/dense_1/MatMulЋ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp’
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_1/dense_1/BiasAddЊ
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 2X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Ё
D
(__inference_dropout_layer_call_fn_355539

inputs
identityћ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3542632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
н
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_354459

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€>> 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> :W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
Я
ы
B__inference_conv2d_layer_call_and_return_conditional_losses_354251

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Т
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_354313

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ђ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354210

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
й
a
(__inference_dropout_layer_call_fn_355544

inputs
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3544922
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∞9
х
H__inference_sequential_1_layer_call_and_return_conditional_losses_354674
sequential_input'
conv2d_354641:
conv2d_354643:)
conv2d_1_354648: 
conv2d_1_354650: )
conv2d_2_354655: @
conv2d_2_354657:@!
dense_354663:А¬А
dense_354665:	А!
dense_1_354668:	А
dense_1_354670:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallс
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3536062
sequential/PartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x°
rescaling/mulMul#sequential/PartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/addҐ
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_354641conv2d_354643*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_3542512 
conv2d/StatefulPartitionedCallП
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_3541982
max_pooling2d/PartitionedCallь
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3542632
dropout/PartitionedCallє
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_354648conv2d_1_354650*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}} *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_3542762"
 conv2d_1/StatefulPartitionedCallЧ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3542102!
max_pooling2d_1/PartitionedCallД
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3542882
dropout_1/PartitionedCallї
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_354655conv2d_2_354657*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_3543012"
 conv2d_2/StatefulPartitionedCallЧ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3542222!
max_pooling2d_2/PartitionedCallД
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3543132
dropout_2/PartitionedCallт
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€А¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3543212
flatten/PartitionedCall£
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_354663dense_354665*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3543342
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_354668dense_1_354670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3543502!
dense_1/StatefulPartitionedCall•
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
н
c
*__inference_dropout_2_layer_call_fn_355638

inputs
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3544262
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
л
b
C__inference_dropout_layer_call_and_return_conditional_losses_355534

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”	
х
C__inference_dense_1_layer_call_and_return_conditional_losses_354350

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
г
Я
+__inference_sequential_layer_call_fn_353910
random_flip_input
unknown:	
	unknown_0:	
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3538942
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
Ђ
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_354222

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
L
0__inference_max_pooling2d_2_layer_call_fn_354228

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3542222
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
з
_
C__inference_flatten_layer_call_and_return_conditional_losses_355644

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ б  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
н
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_355628

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
—
D
(__inference_flatten_layer_call_fn_355649

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€А¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3543212
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
л
G
+__inference_sequential_layer_call_fn_355488

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3536062
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
эV
—
__inference__traced_save_355852
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameі
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*∆
valueЉBє+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesё
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices°
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Д
_input_shapesт
п: ::: : : @:@:А¬А:А:	А:: : : : : :::: : : : ::: : : @:@:А¬А:А:	А:::: : : @:@:А¬А:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:А¬А:!

_output_shapes	
:А:%	!

_output_shapes
:	А: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:А¬А:!

_output_shapes	
:А:%!

_output_shapes
:	А:  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: @: &

_output_shapes
:@:''#
!
_output_shapes
:А¬А:!(

_output_shapes	
:А:%)!

_output_shapes
:	А: *

_output_shapes
::+

_output_shapes
: 
Р
a
C__inference_dropout_layer_call_and_return_conditional_losses_355522

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
†
b
F__inference_sequential_layer_call_and_return_conditional_losses_353606

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∆
Ю
)__inference_conv2d_2_layer_call_fn_355611

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_3543012
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>> : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
б
F
*__inference_dropout_2_layer_call_fn_355633

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3543132
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
 
Ь
'__inference_conv2d_layer_call_fn_355517

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_3542512
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€юю2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Х

Р
$__inference_signature_wrapper_354752
sequential_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:А¬А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_3535982
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
з
_
C__inference_flatten_layer_call_and_return_conditional_losses_354321

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ б  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¬
Ф
+__inference_sequential_layer_call_fn_355497

inputs
unknown:	
	unknown_0:	
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3538942
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
є

ц
A__inference_dense_layer_call_and_return_conditional_losses_354334

inputs3
matmul_readvariableop_resource:А¬А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:А¬А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€А¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€А¬
 
_user_specified_nameinputs
н
c
*__inference_dropout_1_layer_call_fn_355591

inputs
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3544592
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
Т
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_354288

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> :W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
В@
Љ
H__inference_sequential_1_layer_call_and_return_conditional_losses_354577

inputs
sequential_354535:	
sequential_354537:	'
conv2d_354544:
conv2d_354546:)
conv2d_1_354551: 
conv2d_1_354553: )
conv2d_2_354558: @
conv2d_2_354560:@!
dense_354566:А¬А
dense_354568:	А!
dense_1_354571:	А
dense_1_354573:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCallІ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_354535sequential_354537*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3538942$
"sequential/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x©
rescaling/mulMul+sequential/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/addҐ
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_354544conv2d_354546*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_3542512 
conv2d/StatefulPartitionedCallП
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_3541982
max_pooling2d/PartitionedCallФ
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3544922!
dropout/StatefulPartitionedCallЅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_354551conv2d_1_354553*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}} *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_3542762"
 conv2d_1/StatefulPartitionedCallЧ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3542102!
max_pooling2d_1/PartitionedCallЊ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3544592#
!dropout_1/StatefulPartitionedCall√
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_354558conv2d_2_354560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_3543012"
 conv2d_2/StatefulPartitionedCallЧ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3542222!
max_pooling2d_2/PartitionedCallј
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3544262#
!dropout_2/StatefulPartitionedCallъ
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€А¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3543212
flatten/PartitionedCall£
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_354566dense_354568*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3543342
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_354571dense_1_354573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3543502!
dense_1/StatefulPartitionedCallі
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Я
ы
B__inference_conv2d_layer_call_and_return_conditional_losses_355508

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Х
э
D__inference_conv2d_2_layer_call_and_return_conditional_losses_355602

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
Х
э
D__inference_conv2d_2_layer_call_and_return_conditional_losses_354301

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
л
b
C__inference_dropout_layer_call_and_return_conditional_losses_354492

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Т9
л
H__inference_sequential_1_layer_call_and_return_conditional_losses_354357

inputs'
conv2d_354252:
conv2d_354254:)
conv2d_1_354277: 
conv2d_1_354279: )
conv2d_2_354302: @
conv2d_2_354304:@!
dense_354335:А¬А
dense_354337:	А!
dense_1_354351:	А
dense_1_354353:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallз
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3536062
sequential/PartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x°
rescaling/mulMul#sequential/PartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/addҐ
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_354252conv2d_354254*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_3542512 
conv2d/StatefulPartitionedCallП
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_3541982
max_pooling2d/PartitionedCallь
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3542632
dropout/PartitionedCallє
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_354277conv2d_1_354279*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}} *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_3542762"
 conv2d_1/StatefulPartitionedCallЧ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3542102!
max_pooling2d_1/PartitionedCallД
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3542882
dropout_1/PartitionedCallї
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_354302conv2d_2_354304*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_3543012"
 conv2d_2/StatefulPartitionedCallЧ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3542222!
max_pooling2d_2/PartitionedCallД
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3543132
dropout_2/PartitionedCallт
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€А¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3543212
flatten/PartitionedCall£
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_354335dense_354337*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3543342
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_354351dense_1_354353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3543502!
dense_1/StatefulPartitionedCall•
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
©
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_354198

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
†@
∆
H__inference_sequential_1_layer_call_and_return_conditional_losses_354719
sequential_input
sequential_354677:	
sequential_354679:	'
conv2d_354686:
conv2d_354688:)
conv2d_1_354693: 
conv2d_1_354695: )
conv2d_2_354700: @
conv2d_2_354702:@!
dense_354708:А¬А
dense_354710:	А!
dense_1_354713:	А
dense_1_354715:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCall±
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_354677sequential_354679*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3538942$
"sequential/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x©
rescaling/mulMul+sequential/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/addҐ
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_354686conv2d_354688*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_3542512 
conv2d/StatefulPartitionedCallП
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_3541982
max_pooling2d/PartitionedCallФ
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3544922!
dropout/StatefulPartitionedCallЅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_354693conv2d_1_354695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}} *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_3542762"
 conv2d_1/StatefulPartitionedCallЧ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3542102!
max_pooling2d_1/PartitionedCallЊ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3544592#
!dropout_1/StatefulPartitionedCall√
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_354700conv2d_2_354702*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_3543012"
 conv2d_2/StatefulPartitionedCallЧ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3542222!
max_pooling2d_2/PartitionedCallј
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3544262#
!dropout_2/StatefulPartitionedCallъ
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€А¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3543212
flatten/PartitionedCall£
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_354708dense_354710*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3543342
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_354713dense_1_354715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3543502!
dense_1/StatefulPartitionedCallі
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
н
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_354426

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Р
a
C__inference_dropout_layer_call_and_return_conditional_losses_354263

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х
ћ
-__inference_sequential_1_layer_call_fn_354633
sequential_input
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:А¬А
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3545772
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Ґ
Ч
&__inference_dense_layer_call_fn_355669

inputs
unknown:А¬А
	unknown_0:	А
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3543342
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€А¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€А¬
 
_user_specified_nameinputs
РТ
в

H__inference_sequential_1_layer_call_and_return_conditional_losses_355147

inputsT
Fsequential_random_translation_stateful_uniform_rngreadandskip_resource:	Q
Csequential_random_rotation_stateful_uniform_rngreadandskip_resource:	?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@9
$dense_matmul_readvariableop_resource:А¬А4
%dense_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐ:sequential/random_rotation/stateful_uniform/RngReadAndSkipҐ=sequential/random_translation/stateful_uniform/RngReadAndSkipҐ?sequential/random_translation/stateful_uniform_1/RngReadAndSkipп
@sequential/random_flip/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА2B
@sequential/random_flip/random_flip_left_right/control_dependencyг
3sequential/random_flip/random_flip_left_right/ShapeShapeIsequential/random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:25
3sequential/random_flip/random_flip_left_right/Shape–
Asequential/random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential/random_flip/random_flip_left_right/strided_slice/stack‘
Csequential/random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential/random_flip/random_flip_left_right/strided_slice/stack_1‘
Csequential/random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential/random_flip/random_flip_left_right/strided_slice/stack_2ц
;sequential/random_flip/random_flip_left_right/strided_sliceStridedSlice<sequential/random_flip/random_flip_left_right/Shape:output:0Jsequential/random_flip/random_flip_left_right/strided_slice/stack:output:0Lsequential/random_flip/random_flip_left_right/strided_slice/stack_1:output:0Lsequential/random_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;sequential/random_flip/random_flip_left_right/strided_sliceД
Bsequential/random_flip/random_flip_left_right/random_uniform/shapePackDsequential/random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2D
Bsequential/random_flip/random_flip_left_right/random_uniform/shape…
@sequential/random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2B
@sequential/random_flip/random_flip_left_right/random_uniform/min…
@sequential/random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2B
@sequential/random_flip/random_flip_left_right/random_uniform/max±
Jsequential/random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniformKsequential/random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02L
Jsequential/random_flip/random_flip_left_right/random_uniform/RandomUniformў
@sequential/random_flip/random_flip_left_right/random_uniform/MulMulSsequential/random_flip/random_flip_left_right/random_uniform/RandomUniform:output:0Isequential/random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€2B
@sequential/random_flip/random_flip_left_right/random_uniform/Mulј
=sequential/random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential/random_flip/random_flip_left_right/Reshape/shape/1ј
=sequential/random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential/random_flip/random_flip_left_right/Reshape/shape/2ј
=sequential/random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential/random_flip/random_flip_left_right/Reshape/shape/3ќ
;sequential/random_flip/random_flip_left_right/Reshape/shapePackDsequential/random_flip/random_flip_left_right/strided_slice:output:0Fsequential/random_flip/random_flip_left_right/Reshape/shape/1:output:0Fsequential/random_flip/random_flip_left_right/Reshape/shape/2:output:0Fsequential/random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2=
;sequential/random_flip/random_flip_left_right/Reshape/shapeњ
5sequential/random_flip/random_flip_left_right/ReshapeReshapeDsequential/random_flip/random_flip_left_right/random_uniform/Mul:z:0Dsequential/random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€27
5sequential/random_flip/random_flip_left_right/Reshapeн
3sequential/random_flip/random_flip_left_right/RoundRound>sequential/random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€25
3sequential/random_flip/random_flip_left_right/Round∆
<sequential/random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential/random_flip/random_flip_left_right/ReverseV2/axisЌ
7sequential/random_flip/random_flip_left_right/ReverseV2	ReverseV2Isequential/random_flip/random_flip_left_right/control_dependency:output:0Esequential/random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА29
7sequential/random_flip/random_flip_left_right/ReverseV2§
1sequential/random_flip/random_flip_left_right/mulMul7sequential/random_flip/random_flip_left_right/Round:y:0@sequential/random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА23
1sequential/random_flip/random_flip_left_right/mulѓ
3sequential/random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?25
3sequential/random_flip/random_flip_left_right/sub/xЮ
1sequential/random_flip/random_flip_left_right/subSub<sequential/random_flip/random_flip_left_right/sub/x:output:07sequential/random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€23
1sequential/random_flip/random_flip_left_right/subѓ
3sequential/random_flip/random_flip_left_right/mul_1Mul5sequential/random_flip/random_flip_left_right/sub:z:0Isequential/random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА25
3sequential/random_flip/random_flip_left_right/mul_1Ы
1sequential/random_flip/random_flip_left_right/addAddV25sequential/random_flip/random_flip_left_right/mul:z:07sequential/random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА23
1sequential/random_flip/random_flip_left_right/addѓ
#sequential/random_translation/ShapeShape5sequential/random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2%
#sequential/random_translation/Shape∞
1sequential/random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/random_translation/strided_slice/stackі
3sequential/random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/random_translation/strided_slice/stack_1і
3sequential/random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/random_translation/strided_slice/stack_2Ц
+sequential/random_translation/strided_sliceStridedSlice,sequential/random_translation/Shape:output:0:sequential/random_translation/strided_slice/stack:output:0<sequential/random_translation/strided_slice/stack_1:output:0<sequential/random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/random_translation/strided_sliceі
3sequential/random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3sequential/random_translation/strided_slice_1/stackЄ
5sequential/random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/random_translation/strided_slice_1/stack_1Є
5sequential/random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/random_translation/strided_slice_1/stack_2†
-sequential/random_translation/strided_slice_1StridedSlice,sequential/random_translation/Shape:output:0<sequential/random_translation/strided_slice_1/stack:output:0>sequential/random_translation/strided_slice_1/stack_1:output:0>sequential/random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential/random_translation/strided_slice_1Є
"sequential/random_translation/CastCast6sequential/random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"sequential/random_translation/Castі
3sequential/random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3sequential/random_translation/strided_slice_2/stackЄ
5sequential/random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/random_translation/strided_slice_2/stack_1Є
5sequential/random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential/random_translation/strided_slice_2/stack_2†
-sequential/random_translation/strided_slice_2StridedSlice,sequential/random_translation/Shape:output:0<sequential/random_translation/strided_slice_2/stack:output:0>sequential/random_translation/strided_slice_2/stack_1:output:0>sequential/random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential/random_translation/strided_slice_2Љ
$sequential/random_translation/Cast_1Cast6sequential/random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential/random_translation/Cast_1≤
6sequential/random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential/random_translation/stateful_uniform/shape/1Щ
4sequential/random_translation/stateful_uniform/shapePack4sequential/random_translation/strided_slice:output:0?sequential/random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:26
4sequential/random_translation/stateful_uniform/shape≠
2sequential/random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential/random_translation/stateful_uniform/min≠
2sequential/random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>24
2sequential/random_translation/stateful_uniform/maxґ
4sequential/random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential/random_translation/stateful_uniform/ConstС
3sequential/random_translation/stateful_uniform/ProdProd=sequential/random_translation/stateful_uniform/shape:output:0=sequential/random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 25
3sequential/random_translation/stateful_uniform/Prod∞
5sequential/random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential/random_translation/stateful_uniform/Cast/xд
5sequential/random_translation/stateful_uniform/Cast_1Cast<sequential/random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 27
5sequential/random_translation/stateful_uniform/Cast_1п
=sequential/random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkipFsequential_random_translation_stateful_uniform_rngreadandskip_resource>sequential/random_translation/stateful_uniform/Cast/x:output:09sequential/random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:2?
=sequential/random_translation/stateful_uniform/RngReadAndSkip“
Bsequential/random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential/random_translation/stateful_uniform/strided_slice/stack÷
Dsequential/random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential/random_translation/stateful_uniform/strided_slice/stack_1÷
Dsequential/random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential/random_translation/stateful_uniform/strided_slice/stack_2В
<sequential/random_translation/stateful_uniform/strided_sliceStridedSliceEsequential/random_translation/stateful_uniform/RngReadAndSkip:value:0Ksequential/random_translation/stateful_uniform/strided_slice/stack:output:0Msequential/random_translation/stateful_uniform/strided_slice/stack_1:output:0Msequential/random_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2>
<sequential/random_translation/stateful_uniform/strided_sliceу
6sequential/random_translation/stateful_uniform/BitcastBitcastEsequential/random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type028
6sequential/random_translation/stateful_uniform/Bitcast÷
Dsequential/random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential/random_translation/stateful_uniform/strided_slice_1/stackЏ
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_1Џ
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/stateful_uniform/strided_slice_1/stack_2ъ
>sequential/random_translation/stateful_uniform/strided_slice_1StridedSliceEsequential/random_translation/stateful_uniform/RngReadAndSkip:value:0Msequential/random_translation/stateful_uniform/strided_slice_1/stack:output:0Osequential/random_translation/stateful_uniform/strided_slice_1/stack_1:output:0Osequential/random_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2@
>sequential/random_translation/stateful_uniform/strided_slice_1щ
8sequential/random_translation/stateful_uniform/Bitcast_1BitcastGsequential/random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02:
8sequential/random_translation/stateful_uniform/Bitcast_1№
Ksequential/random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2M
Ksequential/random_translation/stateful_uniform/StatelessRandomUniformV2/algр
Gsequential/random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2=sequential/random_translation/stateful_uniform/shape:output:0Asequential/random_translation/stateful_uniform/Bitcast_1:output:0?sequential/random_translation/stateful_uniform/Bitcast:output:0Tsequential/random_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2I
Gsequential/random_translation/stateful_uniform/StatelessRandomUniformV2К
2sequential/random_translation/stateful_uniform/subSub;sequential/random_translation/stateful_uniform/max:output:0;sequential/random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 24
2sequential/random_translation/stateful_uniform/subЂ
2sequential/random_translation/stateful_uniform/mulMulPsequential/random_translation/stateful_uniform/StatelessRandomUniformV2:output:06sequential/random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€24
2sequential/random_translation/stateful_uniform/mulО
.sequential/random_translation/stateful_uniformAdd6sequential/random_translation/stateful_uniform/mul:z:0;sequential/random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential/random_translation/stateful_uniformџ
!sequential/random_translation/mulMul2sequential/random_translation/stateful_uniform:z:0&sequential/random_translation/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!sequential/random_translation/mulґ
8sequential/random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential/random_translation/stateful_uniform_1/shape/1Я
6sequential/random_translation/stateful_uniform_1/shapePack4sequential/random_translation/strided_slice:output:0Asequential/random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:28
6sequential/random_translation/stateful_uniform_1/shape±
4sequential/random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential/random_translation/stateful_uniform_1/min±
4sequential/random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential/random_translation/stateful_uniform_1/maxЇ
6sequential/random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential/random_translation/stateful_uniform_1/ConstЩ
5sequential/random_translation/stateful_uniform_1/ProdProd?sequential/random_translation/stateful_uniform_1/shape:output:0?sequential/random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 27
5sequential/random_translation/stateful_uniform_1/Prodі
7sequential/random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential/random_translation/stateful_uniform_1/Cast/xк
7sequential/random_translation/stateful_uniform_1/Cast_1Cast>sequential/random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 29
7sequential/random_translation/stateful_uniform_1/Cast_1Ј
?sequential/random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkipFsequential_random_translation_stateful_uniform_rngreadandskip_resource@sequential/random_translation/stateful_uniform_1/Cast/x:output:0;sequential/random_translation/stateful_uniform_1/Cast_1:y:0>^sequential/random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:2A
?sequential/random_translation/stateful_uniform_1/RngReadAndSkip÷
Dsequential/random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential/random_translation/stateful_uniform_1/strided_slice/stackЏ
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_1Џ
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/stateful_uniform_1/strided_slice/stack_2О
>sequential/random_translation/stateful_uniform_1/strided_sliceStridedSliceGsequential/random_translation/stateful_uniform_1/RngReadAndSkip:value:0Msequential/random_translation/stateful_uniform_1/strided_slice/stack:output:0Osequential/random_translation/stateful_uniform_1/strided_slice/stack_1:output:0Osequential/random_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2@
>sequential/random_translation/stateful_uniform_1/strided_sliceщ
8sequential/random_translation/stateful_uniform_1/BitcastBitcastGsequential/random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type02:
8sequential/random_translation/stateful_uniform_1/BitcastЏ
Fsequential/random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/stateful_uniform_1/strided_slice_1/stackё
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_1ё
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_2Ж
@sequential/random_translation/stateful_uniform_1/strided_slice_1StridedSliceGsequential/random_translation/stateful_uniform_1/RngReadAndSkip:value:0Osequential/random_translation/stateful_uniform_1/strided_slice_1/stack:output:0Qsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Qsequential/random_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2B
@sequential/random_translation/stateful_uniform_1/strided_slice_1€
:sequential/random_translation/stateful_uniform_1/Bitcast_1BitcastIsequential/random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02<
:sequential/random_translation/stateful_uniform_1/Bitcast_1а
Msequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2O
Msequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2/algь
Isequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2?sequential/random_translation/stateful_uniform_1/shape:output:0Csequential/random_translation/stateful_uniform_1/Bitcast_1:output:0Asequential/random_translation/stateful_uniform_1/Bitcast:output:0Vsequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2K
Isequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2Т
4sequential/random_translation/stateful_uniform_1/subSub=sequential/random_translation/stateful_uniform_1/max:output:0=sequential/random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 26
4sequential/random_translation/stateful_uniform_1/sub≥
4sequential/random_translation/stateful_uniform_1/mulMulRsequential/random_translation/stateful_uniform_1/StatelessRandomUniformV2:output:08sequential/random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential/random_translation/stateful_uniform_1/mulЦ
0sequential/random_translation/stateful_uniform_1Add8sequential/random_translation/stateful_uniform_1/mul:z:0=sequential/random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential/random_translation/stateful_uniform_1г
#sequential/random_translation/mul_1Mul4sequential/random_translation/stateful_uniform_1:z:0(sequential/random_translation/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#sequential/random_translation/mul_1Ш
)sequential/random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential/random_translation/concat/axisЧ
$sequential/random_translation/concatConcatV2'sequential/random_translation/mul_1:z:0%sequential/random_translation/mul:z:02sequential/random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2&
$sequential/random_translation/concatЌ
6sequential/random_translation/translation_matrix/ShapeShape-sequential/random_translation/concat:output:0*
T0*
_output_shapes
:28
6sequential/random_translation/translation_matrix/Shape÷
Dsequential/random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential/random_translation/translation_matrix/strided_slice/stackЏ
Fsequential/random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/translation_matrix/strided_slice/stack_1Џ
Fsequential/random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential/random_translation/translation_matrix/strided_slice/stack_2И
>sequential/random_translation/translation_matrix/strided_sliceStridedSlice?sequential/random_translation/translation_matrix/Shape:output:0Msequential/random_translation/translation_matrix/strided_slice/stack:output:0Osequential/random_translation/translation_matrix/strided_slice/stack_1:output:0Osequential/random_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2@
>sequential/random_translation/translation_matrix/strided_sliceЉ
;sequential/random_translation/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential/random_translation/translation_matrix/ones/mul/y≠
9sequential/random_translation/translation_matrix/ones/mulMulGsequential/random_translation/translation_matrix/strided_slice:output:0Dsequential/random_translation/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential/random_translation/translation_matrix/ones/mulњ
<sequential/random_translation/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2>
<sequential/random_translation/translation_matrix/ones/Less/yІ
:sequential/random_translation/translation_matrix/ones/LessLess=sequential/random_translation/translation_matrix/ones/mul:z:0Esequential/random_translation/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential/random_translation/translation_matrix/ones/Less¬
>sequential/random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential/random_translation/translation_matrix/ones/packed/1ƒ
<sequential/random_translation/translation_matrix/ones/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Gsequential/random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential/random_translation/translation_matrix/ones/packedњ
;sequential/random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2=
;sequential/random_translation/translation_matrix/ones/Constµ
5sequential/random_translation/translation_matrix/onesFillEsequential/random_translation/translation_matrix/ones/packed:output:0Dsequential/random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€27
5sequential/random_translation/translation_matrix/onesЊ
<sequential/random_translation/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential/random_translation/translation_matrix/zeros/mul/y∞
:sequential/random_translation/translation_matrix/zeros/mulMulGsequential/random_translation/translation_matrix/strided_slice:output:0Esequential/random_translation/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2<
:sequential/random_translation/translation_matrix/zeros/mulЅ
=sequential/random_translation/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2?
=sequential/random_translation/translation_matrix/zeros/Less/yЂ
;sequential/random_translation/translation_matrix/zeros/LessLess>sequential/random_translation/translation_matrix/zeros/mul:z:0Fsequential/random_translation/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2=
;sequential/random_translation/translation_matrix/zeros/Lessƒ
?sequential/random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential/random_translation/translation_matrix/zeros/packed/1«
=sequential/random_translation/translation_matrix/zeros/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Hsequential/random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2?
=sequential/random_translation/translation_matrix/zeros/packedЅ
<sequential/random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2>
<sequential/random_translation/translation_matrix/zeros/Constє
6sequential/random_translation/translation_matrix/zerosFillFsequential/random_translation/translation_matrix/zeros/packed:output:0Esequential/random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€28
6sequential/random_translation/translation_matrix/zerosе
Fsequential/random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2H
Fsequential/random_translation/translation_matrix/strided_slice_1/stackй
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2J
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_1й
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2J
Hsequential/random_translation/translation_matrix/strided_slice_1/stack_2»
@sequential/random_translation/translation_matrix/strided_slice_1StridedSlice-sequential/random_translation/concat:output:0Osequential/random_translation/translation_matrix/strided_slice_1/stack:output:0Qsequential/random_translation/translation_matrix/strided_slice_1/stack_1:output:0Qsequential/random_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2B
@sequential/random_translation/translation_matrix/strided_slice_1р
4sequential/random_translation/translation_matrix/NegNegIsequential/random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€26
4sequential/random_translation/translation_matrix/Neg¬
>sequential/random_translation/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential/random_translation/translation_matrix/zeros_1/mul/yґ
<sequential/random_translation/translation_matrix/zeros_1/mulMulGsequential/random_translation/translation_matrix/strided_slice:output:0Gsequential/random_translation/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2>
<sequential/random_translation/translation_matrix/zeros_1/mul≈
?sequential/random_translation/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2A
?sequential/random_translation/translation_matrix/zeros_1/Less/y≥
=sequential/random_translation/translation_matrix/zeros_1/LessLess@sequential/random_translation/translation_matrix/zeros_1/mul:z:0Hsequential/random_translation/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2?
=sequential/random_translation/translation_matrix/zeros_1/Less»
Asequential/random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential/random_translation/translation_matrix/zeros_1/packed/1Ќ
?sequential/random_translation/translation_matrix/zeros_1/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Jsequential/random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2A
?sequential/random_translation/translation_matrix/zeros_1/packed≈
>sequential/random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2@
>sequential/random_translation/translation_matrix/zeros_1/ConstЅ
8sequential/random_translation/translation_matrix/zeros_1FillHsequential/random_translation/translation_matrix/zeros_1/packed:output:0Gsequential/random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2:
8sequential/random_translation/translation_matrix/zeros_1ј
=sequential/random_translation/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2?
=sequential/random_translation/translation_matrix/ones_1/mul/y≥
;sequential/random_translation/translation_matrix/ones_1/mulMulGsequential/random_translation/translation_matrix/strided_slice:output:0Fsequential/random_translation/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 2=
;sequential/random_translation/translation_matrix/ones_1/mul√
>sequential/random_translation/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2@
>sequential/random_translation/translation_matrix/ones_1/Less/yѓ
<sequential/random_translation/translation_matrix/ones_1/LessLess?sequential/random_translation/translation_matrix/ones_1/mul:z:0Gsequential/random_translation/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 2>
<sequential/random_translation/translation_matrix/ones_1/Less∆
@sequential/random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2B
@sequential/random_translation/translation_matrix/ones_1/packed/1 
>sequential/random_translation/translation_matrix/ones_1/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Isequential/random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:2@
>sequential/random_translation/translation_matrix/ones_1/packed√
=sequential/random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2?
=sequential/random_translation/translation_matrix/ones_1/Constљ
7sequential/random_translation/translation_matrix/ones_1FillGsequential/random_translation/translation_matrix/ones_1/packed:output:0Fsequential/random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€29
7sequential/random_translation/translation_matrix/ones_1е
Fsequential/random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2H
Fsequential/random_translation/translation_matrix/strided_slice_2/stackй
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2J
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_1й
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2J
Hsequential/random_translation/translation_matrix/strided_slice_2/stack_2»
@sequential/random_translation/translation_matrix/strided_slice_2StridedSlice-sequential/random_translation/concat:output:0Osequential/random_translation/translation_matrix/strided_slice_2/stack:output:0Qsequential/random_translation/translation_matrix/strided_slice_2/stack_1:output:0Qsequential/random_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2B
@sequential/random_translation/translation_matrix/strided_slice_2ф
6sequential/random_translation/translation_matrix/Neg_1NegIsequential/random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€28
6sequential/random_translation/translation_matrix/Neg_1¬
>sequential/random_translation/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential/random_translation/translation_matrix/zeros_2/mul/yґ
<sequential/random_translation/translation_matrix/zeros_2/mulMulGsequential/random_translation/translation_matrix/strided_slice:output:0Gsequential/random_translation/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2>
<sequential/random_translation/translation_matrix/zeros_2/mul≈
?sequential/random_translation/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2A
?sequential/random_translation/translation_matrix/zeros_2/Less/y≥
=sequential/random_translation/translation_matrix/zeros_2/LessLess@sequential/random_translation/translation_matrix/zeros_2/mul:z:0Hsequential/random_translation/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2?
=sequential/random_translation/translation_matrix/zeros_2/Less»
Asequential/random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential/random_translation/translation_matrix/zeros_2/packed/1Ќ
?sequential/random_translation/translation_matrix/zeros_2/packedPackGsequential/random_translation/translation_matrix/strided_slice:output:0Jsequential/random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2A
?sequential/random_translation/translation_matrix/zeros_2/packed≈
>sequential/random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2@
>sequential/random_translation/translation_matrix/zeros_2/ConstЅ
8sequential/random_translation/translation_matrix/zeros_2FillHsequential/random_translation/translation_matrix/zeros_2/packed:output:0Gsequential/random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2:
8sequential/random_translation/translation_matrix/zeros_2Њ
<sequential/random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential/random_translation/translation_matrix/concat/axisњ
7sequential/random_translation/translation_matrix/concatConcatV2>sequential/random_translation/translation_matrix/ones:output:0?sequential/random_translation/translation_matrix/zeros:output:08sequential/random_translation/translation_matrix/Neg:y:0Asequential/random_translation/translation_matrix/zeros_1:output:0@sequential/random_translation/translation_matrix/ones_1:output:0:sequential/random_translation/translation_matrix/Neg_1:y:0Asequential/random_translation/translation_matrix/zeros_2:output:0Esequential/random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€29
7sequential/random_translation/translation_matrix/concat√
-sequential/random_translation/transform/ShapeShape5sequential/random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2/
-sequential/random_translation/transform/Shapeƒ
;sequential/random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;sequential/random_translation/transform/strided_slice/stack»
=sequential/random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential/random_translation/transform/strided_slice/stack_1»
=sequential/random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential/random_translation/transform/strided_slice/stack_2Њ
5sequential/random_translation/transform/strided_sliceStridedSlice6sequential/random_translation/transform/Shape:output:0Dsequential/random_translation/transform/strided_slice/stack:output:0Fsequential/random_translation/transform/strided_slice/stack_1:output:0Fsequential/random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:27
5sequential/random_translation/transform/strided_slice≠
2sequential/random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential/random_translation/transform/fill_valueС
Bsequential/random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV35sequential/random_flip/random_flip_left_right/add:z:0@sequential/random_translation/translation_matrix/concat:output:0>sequential/random_translation/transform/strided_slice:output:0;sequential/random_translation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2D
Bsequential/random_translation/transform/ImageProjectiveTransformV3Ћ
 sequential/random_rotation/ShapeShapeWsequential/random_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2"
 sequential/random_rotation/Shape™
.sequential/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential/random_rotation/strided_slice/stackЃ
0sequential/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/random_rotation/strided_slice/stack_1Ѓ
0sequential/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/random_rotation/strided_slice/stack_2Д
(sequential/random_rotation/strided_sliceStridedSlice)sequential/random_rotation/Shape:output:07sequential/random_rotation/strided_slice/stack:output:09sequential/random_rotation/strided_slice/stack_1:output:09sequential/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential/random_rotation/strided_sliceЃ
0sequential/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential/random_rotation/strided_slice_1/stack≤
2sequential/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/random_rotation/strided_slice_1/stack_1≤
2sequential/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/random_rotation/strided_slice_1/stack_2О
*sequential/random_rotation/strided_slice_1StridedSlice)sequential/random_rotation/Shape:output:09sequential/random_rotation/strided_slice_1/stack:output:0;sequential/random_rotation/strided_slice_1/stack_1:output:0;sequential/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential/random_rotation/strided_slice_1ѓ
sequential/random_rotation/CastCast3sequential/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential/random_rotation/CastЃ
0sequential/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential/random_rotation/strided_slice_2/stack≤
2sequential/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/random_rotation/strided_slice_2/stack_1≤
2sequential/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/random_rotation/strided_slice_2/stack_2О
*sequential/random_rotation/strided_slice_2StridedSlice)sequential/random_rotation/Shape:output:09sequential/random_rotation/strided_slice_2/stack:output:0;sequential/random_rotation/strided_slice_2/stack_1:output:0;sequential/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential/random_rotation/strided_slice_2≥
!sequential/random_rotation/Cast_1Cast3sequential/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential/random_rotation/Cast_1ѕ
1sequential/random_rotation/stateful_uniform/shapePack1sequential/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:23
1sequential/random_rotation/stateful_uniform/shapeІ
/sequential/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†Њ21
/sequential/random_rotation/stateful_uniform/minІ
/sequential/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†>21
/sequential/random_rotation/stateful_uniform/max∞
1sequential/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/random_rotation/stateful_uniform/ConstЕ
0sequential/random_rotation/stateful_uniform/ProdProd:sequential/random_rotation/stateful_uniform/shape:output:0:sequential/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/stateful_uniform/Prod™
2sequential/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential/random_rotation/stateful_uniform/Cast/xџ
2sequential/random_rotation/stateful_uniform/Cast_1Cast9sequential/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 24
2sequential/random_rotation/stateful_uniform/Cast_1а
:sequential/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipCsequential_random_rotation_stateful_uniform_rngreadandskip_resource;sequential/random_rotation/stateful_uniform/Cast/x:output:06sequential/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:2<
:sequential/random_rotation/stateful_uniform/RngReadAndSkipћ
?sequential/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential/random_rotation/stateful_uniform/strided_slice/stack–
Asequential/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/random_rotation/stateful_uniform/strided_slice/stack_1–
Asequential/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/random_rotation/stateful_uniform/strided_slice/stack_2р
9sequential/random_rotation/stateful_uniform/strided_sliceStridedSliceBsequential/random_rotation/stateful_uniform/RngReadAndSkip:value:0Hsequential/random_rotation/stateful_uniform/strided_slice/stack:output:0Jsequential/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Jsequential/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2;
9sequential/random_rotation/stateful_uniform/strided_sliceк
3sequential/random_rotation/stateful_uniform/BitcastBitcastBsequential/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type025
3sequential/random_rotation/stateful_uniform/Bitcast–
Asequential/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/random_rotation/stateful_uniform/strided_slice_1/stack‘
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_1‘
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_2и
;sequential/random_rotation/stateful_uniform/strided_slice_1StridedSliceBsequential/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Lsequential/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Lsequential/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2=
;sequential/random_rotation/stateful_uniform/strided_slice_1р
5sequential/random_rotation/stateful_uniform/Bitcast_1BitcastDsequential/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type027
5sequential/random_rotation/stateful_uniform/Bitcast_1÷
Hsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2J
Hsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2/algЏ
Dsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2:sequential/random_rotation/stateful_uniform/shape:output:0>sequential/random_rotation/stateful_uniform/Bitcast_1:output:0<sequential/random_rotation/stateful_uniform/Bitcast:output:0Qsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2F
Dsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2ю
/sequential/random_rotation/stateful_uniform/subSub8sequential/random_rotation/stateful_uniform/max:output:08sequential/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential/random_rotation/stateful_uniform/subЫ
/sequential/random_rotation/stateful_uniform/mulMulMsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:03sequential/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€21
/sequential/random_rotation/stateful_uniform/mulю
+sequential/random_rotation/stateful_uniformAdd3sequential/random_rotation/stateful_uniform/mul:z:08sequential/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2-
+sequential/random_rotation/stateful_uniform©
0sequential/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0sequential/random_rotation/rotation_matrix/sub/yк
.sequential/random_rotation/rotation_matrix/subSub%sequential/random_rotation/Cast_1:y:09sequential/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 20
.sequential/random_rotation/rotation_matrix/sub∆
.sequential/random_rotation/rotation_matrix/CosCos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€20
.sequential/random_rotation/rotation_matrix/Cos≠
2sequential/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential/random_rotation/rotation_matrix/sub_1/yр
0sequential/random_rotation/rotation_matrix/sub_1Sub%sequential/random_rotation/Cast_1:y:0;sequential/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/rotation_matrix/sub_1€
.sequential/random_rotation/rotation_matrix/mulMul2sequential/random_rotation/rotation_matrix/Cos:y:04sequential/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€20
.sequential/random_rotation/rotation_matrix/mul∆
.sequential/random_rotation/rotation_matrix/SinSin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€20
.sequential/random_rotation/rotation_matrix/Sin≠
2sequential/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential/random_rotation/rotation_matrix/sub_2/yо
0sequential/random_rotation/rotation_matrix/sub_2Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/rotation_matrix/sub_2Г
0sequential/random_rotation/rotation_matrix/mul_1Mul2sequential/random_rotation/rotation_matrix/Sin:y:04sequential/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/mul_1Г
0sequential/random_rotation/rotation_matrix/sub_3Sub2sequential/random_rotation/rotation_matrix/mul:z:04sequential/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/sub_3Г
0sequential/random_rotation/rotation_matrix/sub_4Sub2sequential/random_rotation/rotation_matrix/sub:z:04sequential/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/sub_4±
4sequential/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @26
4sequential/random_rotation/rotation_matrix/truediv/yЦ
2sequential/random_rotation/rotation_matrix/truedivRealDiv4sequential/random_rotation/rotation_matrix/sub_4:z:0=sequential/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€24
2sequential/random_rotation/rotation_matrix/truediv≠
2sequential/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential/random_rotation/rotation_matrix/sub_5/yо
0sequential/random_rotation/rotation_matrix/sub_5Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/rotation_matrix/sub_5 
0sequential/random_rotation/rotation_matrix/Sin_1Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Sin_1≠
2sequential/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential/random_rotation/rotation_matrix/sub_6/yр
0sequential/random_rotation/rotation_matrix/sub_6Sub%sequential/random_rotation/Cast_1:y:0;sequential/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/rotation_matrix/sub_6Е
0sequential/random_rotation/rotation_matrix/mul_2Mul4sequential/random_rotation/rotation_matrix/Sin_1:y:04sequential/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/mul_2 
0sequential/random_rotation/rotation_matrix/Cos_1Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Cos_1≠
2sequential/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential/random_rotation/rotation_matrix/sub_7/yо
0sequential/random_rotation/rotation_matrix/sub_7Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 22
0sequential/random_rotation/rotation_matrix/sub_7Е
0sequential/random_rotation/rotation_matrix/mul_3Mul4sequential/random_rotation/rotation_matrix/Cos_1:y:04sequential/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/mul_3Г
.sequential/random_rotation/rotation_matrix/addAddV24sequential/random_rotation/rotation_matrix/mul_2:z:04sequential/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€20
.sequential/random_rotation/rotation_matrix/addГ
0sequential/random_rotation/rotation_matrix/sub_8Sub4sequential/random_rotation/rotation_matrix/sub_5:z:02sequential/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/sub_8µ
6sequential/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @28
6sequential/random_rotation/rotation_matrix/truediv_1/yЬ
4sequential/random_rotation/rotation_matrix/truediv_1RealDiv4sequential/random_rotation/rotation_matrix/sub_8:z:0?sequential/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€26
4sequential/random_rotation/rotation_matrix/truediv_1√
0sequential/random_rotation/rotation_matrix/ShapeShape/sequential/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:22
0sequential/random_rotation/rotation_matrix/Shape 
>sequential/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential/random_rotation/rotation_matrix/strided_slice/stackќ
@sequential/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/random_rotation/rotation_matrix/strided_slice/stack_1ќ
@sequential/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/random_rotation/rotation_matrix/strided_slice/stack_2д
8sequential/random_rotation/rotation_matrix/strided_sliceStridedSlice9sequential/random_rotation/rotation_matrix/Shape:output:0Gsequential/random_rotation/rotation_matrix/strided_slice/stack:output:0Isequential/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Isequential/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential/random_rotation/rotation_matrix/strided_slice 
0sequential/random_rotation/rotation_matrix/Cos_2Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Cos_2’
@sequential/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_1/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_2Щ
:sequential/random_rotation/rotation_matrix/strided_slice_1StridedSlice4sequential/random_rotation/rotation_matrix/Cos_2:y:0Isequential/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_1 
0sequential/random_rotation/rotation_matrix/Sin_2Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Sin_2’
@sequential/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_2/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_2Щ
:sequential/random_rotation/rotation_matrix/strided_slice_2StridedSlice4sequential/random_rotation/rotation_matrix/Sin_2:y:0Isequential/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_2ё
.sequential/random_rotation/rotation_matrix/NegNegCsequential/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential/random_rotation/rotation_matrix/Neg’
@sequential/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_3/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_2Ы
:sequential/random_rotation/rotation_matrix/strided_slice_3StridedSlice6sequential/random_rotation/rotation_matrix/truediv:z:0Isequential/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_3 
0sequential/random_rotation/rotation_matrix/Sin_3Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Sin_3’
@sequential/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_4/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_2Щ
:sequential/random_rotation/rotation_matrix/strided_slice_4StridedSlice4sequential/random_rotation/rotation_matrix/Sin_3:y:0Isequential/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_4 
0sequential/random_rotation/rotation_matrix/Cos_3Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/Cos_3’
@sequential/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_5/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_2Щ
:sequential/random_rotation/rotation_matrix/strided_slice_5StridedSlice4sequential/random_rotation/rotation_matrix/Cos_3:y:0Isequential/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_5’
@sequential/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential/random_rotation/rotation_matrix/strided_slice_6/stackў
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_1ў
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_2Э
:sequential/random_rotation/rotation_matrix/strided_slice_6StridedSlice8sequential/random_rotation/rotation_matrix/truediv_1:z:0Isequential/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2<
:sequential/random_rotation/rotation_matrix/strided_slice_6≤
6sequential/random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/random_rotation/rotation_matrix/zeros/mul/yШ
4sequential/random_rotation/rotation_matrix/zeros/mulMulAsequential/random_rotation/rotation_matrix/strided_slice:output:0?sequential/random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 26
4sequential/random_rotation/rotation_matrix/zeros/mulµ
7sequential/random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и29
7sequential/random_rotation/rotation_matrix/zeros/Less/yУ
5sequential/random_rotation/rotation_matrix/zeros/LessLess8sequential/random_rotation/rotation_matrix/zeros/mul:z:0@sequential/random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 27
5sequential/random_rotation/rotation_matrix/zeros/LessЄ
9sequential/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/random_rotation/rotation_matrix/zeros/packed/1ѓ
7sequential/random_rotation/rotation_matrix/zeros/packedPackAsequential/random_rotation/rotation_matrix/strided_slice:output:0Bsequential/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/random_rotation/rotation_matrix/zeros/packedµ
6sequential/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6sequential/random_rotation/rotation_matrix/zeros/Const°
0sequential/random_rotation/rotation_matrix/zerosFill@sequential/random_rotation/rotation_matrix/zeros/packed:output:0?sequential/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential/random_rotation/rotation_matrix/zeros≤
6sequential/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/random_rotation/rotation_matrix/concat/axisґ
1sequential/random_rotation/rotation_matrix/concatConcatV2Csequential/random_rotation/rotation_matrix/strided_slice_1:output:02sequential/random_rotation/rotation_matrix/Neg:y:0Csequential/random_rotation/rotation_matrix/strided_slice_3:output:0Csequential/random_rotation/rotation_matrix/strided_slice_4:output:0Csequential/random_rotation/rotation_matrix/strided_slice_5:output:0Csequential/random_rotation/rotation_matrix/strided_slice_6:output:09sequential/random_rotation/rotation_matrix/zeros:output:0?sequential/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€23
1sequential/random_rotation/rotation_matrix/concatя
*sequential/random_rotation/transform/ShapeShapeWsequential/random_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2,
*sequential/random_rotation/transform/ShapeЊ
8sequential/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential/random_rotation/transform/strided_slice/stack¬
:sequential/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential/random_rotation/transform/strided_slice/stack_1¬
:sequential/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential/random_rotation/transform/strided_slice/stack_2ђ
2sequential/random_rotation/transform/strided_sliceStridedSlice3sequential/random_rotation/transform/Shape:output:0Asequential/random_rotation/transform/strided_slice/stack:output:0Csequential/random_rotation/transform/strided_slice/stack_1:output:0Csequential/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential/random_rotation/transform/strided_sliceІ
/sequential/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential/random_rotation/transform/fill_value°
?sequential/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Wsequential/random_translation/transform/ImageProjectiveTransformV3:transformed_images:0:sequential/random_rotation/rotation_matrix/concat:output:0;sequential/random_rotation/transform/strided_slice:output:08sequential/random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential/random_rotation/transform/ImageProjectiveTransformV3i
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x“
rescaling/mulMulTsequential/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/mulУ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2
rescaling/add™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp∆
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю*
paddingVALID*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¶
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю2
conv2d/ReluЅ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/dropout/ConstЂ
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape‘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2 
dropout/dropout/GreaterEqual/yж
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/CastҐ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul_1∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp“
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} *
paddingVALID*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
conv2d_1/Relu«
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>> *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_1/dropout/Const≥
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeЏ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> *
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2"
 dropout_1/dropout/GreaterEqual/yо
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2 
dropout_1/dropout/GreaterEqual•
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€>> 2
dropout_1/dropout/Cast™
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout_1/dropout/Mul_1∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp‘
conv2d_2/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@2
conv2d_2/Relu«
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_2/dropout/Const≥
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeЏ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2"
 dropout_2/dropout/GreaterEqual/yо
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2 
dropout_2/dropout/GreaterEqual•
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Cast™
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ б  2
flatten/ConstЦ
flatten/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€А¬2
flatten/ReshapeҐ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:А¬А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddо
IdentityIdentitydense_1/BiasAdd:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp;^sequential/random_rotation/stateful_uniform/RngReadAndSkip>^sequential/random_translation/stateful_uniform/RngReadAndSkip@^sequential/random_translation/stateful_uniform_1/RngReadAndSkip*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2x
:sequential/random_rotation/stateful_uniform/RngReadAndSkip:sequential/random_rotation/stateful_uniform/RngReadAndSkip2~
=sequential/random_translation/stateful_uniform/RngReadAndSkip=sequential/random_translation/stateful_uniform/RngReadAndSkip2В
?sequential/random_translation/stateful_uniform_1/RngReadAndSkip?sequential/random_translation/stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Т
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_355569

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> :W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
Х
э
D__inference_conv2d_1_layer_call_and_return_conditional_losses_354276

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€}} 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х
э
D__inference_conv2d_1_layer_call_and_return_conditional_losses_355555

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}} 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€}} 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
К≥
Я
"__inference__traced_restore_355988
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel: .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: @.
 assignvariableop_5_conv2d_2_bias:@4
assignvariableop_6_dense_kernel:А¬А,
assignvariableop_7_dense_bias:	А4
!assignvariableop_8_dense_1_kernel:	А-
assignvariableop_9_dense_1_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: *
assignvariableop_15_variable:	,
assignvariableop_16_variable_1:	,
assignvariableop_17_variable_2:	#
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: B
(assignvariableop_22_adam_conv2d_kernel_m:4
&assignvariableop_23_adam_conv2d_bias_m:D
*assignvariableop_24_adam_conv2d_1_kernel_m: 6
(assignvariableop_25_adam_conv2d_1_bias_m: D
*assignvariableop_26_adam_conv2d_2_kernel_m: @6
(assignvariableop_27_adam_conv2d_2_bias_m:@<
'assignvariableop_28_adam_dense_kernel_m:А¬А4
%assignvariableop_29_adam_dense_bias_m:	А<
)assignvariableop_30_adam_dense_1_kernel_m:	А5
'assignvariableop_31_adam_dense_1_bias_m:B
(assignvariableop_32_adam_conv2d_kernel_v:4
&assignvariableop_33_adam_conv2d_bias_v:D
*assignvariableop_34_adam_conv2d_1_kernel_v: 6
(assignvariableop_35_adam_conv2d_1_bias_v: D
*assignvariableop_36_adam_conv2d_2_kernel_v: @6
(assignvariableop_37_adam_conv2d_2_bias_v:@<
'assignvariableop_38_adam_dense_kernel_v:А¬А4
%assignvariableop_39_adam_dense_bias_v:	А<
)assignvariableop_40_adam_dense_1_kernel_v:	А5
'assignvariableop_41_adam_dense_1_bias_v:
identity_43ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*∆
valueЉBє+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesд
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЕ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3•
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5•
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¶
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10•
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11І
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¶
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15§
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16¶
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17¶
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19°
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22∞
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ѓ
AssignVariableOp_23AssignVariableOp&assignvariableop_23_adam_conv2d_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≤
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_1_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25∞
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_1_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≤
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_2_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27∞
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_2_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ѓ
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≠
AssignVariableOp_29AssignVariableOp%assignvariableop_29_adam_dense_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_1_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31ѓ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_1_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32∞
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ѓ
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_conv2d_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≤
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35∞
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36≤
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_2_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37∞
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_2_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ѓ
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39≠
AssignVariableOp_39AssignVariableOp%assignvariableop_39_adam_dense_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40±
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ѓ
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpъ
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42н
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Я
Ц
(__inference_dense_1_layer_call_fn_355688

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3543502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
н
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_355581

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€>> 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> :W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
ч

¬
-__inference_sequential_1_layer_call_fn_355201

inputs
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:А¬А
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3545772
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
хо
°
F__inference_sequential_layer_call_and_return_conditional_losses_354192
random_flip_inputI
;random_translation_stateful_uniform_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИҐ/random_rotation/stateful_uniform/RngReadAndSkipҐ2random_translation/stateful_uniform/RngReadAndSkipҐ4random_translation/stateful_uniform_1/RngReadAndSkipп
5random_flip/random_flip_left_right/control_dependencyIdentityrandom_flip_input*
T0*$
_class
loc:@random_flip_input*1
_output_shapes
:€€€€€€€€€АА27
5random_flip/random_flip_left_right/control_dependency¬
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/ShapeЇ
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stackЊ
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1Њ
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2і
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_sliceг
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape≥
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min≥
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5random_flip/random_flip_left_right/random_uniform/maxР
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform≠
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€27
5random_flip/random_flip_left_right/random_uniform/Mul™
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1™
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2™
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3М
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shapeУ
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip/random_flip_left_right/Reshapeћ
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip/random_flip_left_right/Round∞
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis°
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2.
,random_flip/random_flip_left_right/ReverseV2ш
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/mulЩ
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2*
(random_flip/random_flip_left_right/sub/xт
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&random_flip/random_flip_left_right/subГ
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip/random_flip_left_right/mul_1п
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/addО
random_translation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_translation/ShapeЪ
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_translation/strided_slice/stackЮ
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_1Ю
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_2‘
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_translation/strided_sliceЮ
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_1/stackҐ
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_1Ґ
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_2ё
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_1Ч
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/CastЮ
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_2/stackҐ
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_1Ґ
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_2ё
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_2Ы
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/Cast_1Ь
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+random_translation/stateful_uniform/shape/1н
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)random_translation/stateful_uniform/shapeЧ
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/stateful_uniform/minЧ
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>2)
'random_translation/stateful_uniform/max†
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_translation/stateful_uniform/Constе
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_translation/stateful_uniform/ProdЪ
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_translation/stateful_uniform/Cast/x√
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_translation/stateful_uniform/Cast_1Є
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_translation/stateful_uniform/RngReadAndSkipЉ
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_translation/stateful_uniform/strided_slice/stackј
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_1ј
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_2ј
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_translation/stateful_uniform/strided_slice“
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_translation/stateful_uniform/Bitcastј
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice_1/stackƒ
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_1ƒ
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_2Є
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_translation/stateful_uniform/strided_slice_1Ў
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform/Bitcast_1∆
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_translation/stateful_uniform/StatelessRandomUniformV2/algЃ
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2>
<random_translation/stateful_uniform/StatelessRandomUniformV2ё
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_translation/stateful_uniform/sub€
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_translation/stateful_uniform/mulв
#random_translation/stateful_uniformAdd+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_translation/stateful_uniformѓ
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul†
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation/stateful_uniform_1/shape/1у
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation/stateful_uniform_1/shapeЫ
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/minЫ
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/max§
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_translation/stateful_uniform_1/Constн
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 2,
*random_translation/stateful_uniform_1/ProdЮ
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_translation/stateful_uniform_1/Cast/x…
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_translation/stateful_uniform_1/Cast_1х
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:26
4random_translation/stateful_uniform_1/RngReadAndSkipј
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/stateful_uniform_1/strided_slice/stackƒ
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_1ƒ
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_2ћ
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_translation/stateful_uniform_1/strided_sliceЎ
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform_1/Bitcastƒ
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice_1/stack»
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_1»
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_2ƒ
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_translation/stateful_uniform_1/strided_slice_1ё
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_translation/stateful_uniform_1/Bitcast_1 
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2D
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algЇ
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2@
>random_translation/stateful_uniform_1/StatelessRandomUniformV2ж
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2+
)random_translation/stateful_uniform_1/subЗ
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/stateful_uniform_1/mulк
%random_translation/stateful_uniform_1Add-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_translation/stateful_uniform_1Ј
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul_1В
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
random_translation/concat/axisа
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/concatђ
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
:2-
+random_translation/translation_matrix/Shapeј
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/translation_matrix/strided_slice/stackƒ
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_1ƒ
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_2∆
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_translation/translation_matrix/strided_slice¶
0random_translation/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
0random_translation/translation_matrix/ones/mul/yБ
.random_translation/translation_matrix/ones/mulMul<random_translation/translation_matrix/strided_slice:output:09random_translation/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 20
.random_translation/translation_matrix/ones/mul©
1random_translation/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и23
1random_translation/translation_matrix/ones/Less/yы
/random_translation/translation_matrix/ones/LessLess2random_translation/translation_matrix/ones/mul:z:0:random_translation/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/ones/Lessђ
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/ones/packed/1Ш
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:23
1random_translation/translation_matrix/ones/packed©
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0random_translation/translation_matrix/ones/ConstЙ
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*random_translation/translation_matrix/ones®
1random_translation/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/zeros/mul/yД
/random_translation/translation_matrix/zeros/mulMul<random_translation/translation_matrix/strided_slice:output:0:random_translation/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/zeros/mulЂ
2random_translation/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и24
2random_translation/translation_matrix/zeros/Less/y€
0random_translation/translation_matrix/zeros/LessLess3random_translation/translation_matrix/zeros/mul:z:0;random_translation/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/zeros/LessЃ
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_translation/translation_matrix/zeros/packed/1Ы
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:24
2random_translation/translation_matrix/zeros/packedЂ
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1random_translation/translation_matrix/zeros/ConstН
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/zerosѕ
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2=
;random_translation/translation_matrix/strided_slice_1/stack”
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_1/stack_1”
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_1/stack_2Ж
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_1ѕ
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/translation_matrix/Negђ
3random_translation/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_1/mul/yК
1random_translation/translation_matrix/zeros_1/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_1/mulѓ
4random_translation/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_1/Less/yЗ
2random_translation/translation_matrix/zeros_1/LessLess5random_translation/translation_matrix/zeros_1/mul:z:0=random_translation/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_1/Less≤
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_1/packed/1°
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_1/packedѓ
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_1/ConstХ
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_1™
2random_translation/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation/translation_matrix/ones_1/mul/yЗ
0random_translation/translation_matrix/ones_1/mulMul<random_translation/translation_matrix/strided_slice:output:0;random_translation/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/ones_1/mul≠
3random_translation/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и25
3random_translation/translation_matrix/ones_1/Less/yГ
1random_translation/translation_matrix/ones_1/LessLess4random_translation/translation_matrix/ones_1/mul:z:0<random_translation/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/ones_1/Less∞
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation/translation_matrix/ones_1/packed/1Ю
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation/translation_matrix/ones_1/packed≠
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2random_translation/translation_matrix/ones_1/ConstС
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/ones_1ѕ
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2=
;random_translation/translation_matrix/strided_slice_2/stack”
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_2/stack_1”
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_2/stack_2Ж
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_2”
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/Neg_1ђ
3random_translation/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_2/mul/yК
1random_translation/translation_matrix/zeros_2/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_2/mulѓ
4random_translation/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_2/Less/yЗ
2random_translation/translation_matrix/zeros_2/LessLess5random_translation/translation_matrix/zeros_2/mul:z:0=random_translation/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_2/Less≤
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_2/packed/1°
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_2/packedѓ
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_2/ConstХ
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_2®
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/concat/axis—
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/concatҐ
"random_translation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_translation/transform/ShapeЃ
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_translation/transform/strided_slice/stack≤
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_1≤
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_2ь
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_translation/transform/strided_sliceЧ
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/transform/fill_valueѕ
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_translation/transform/ImageProjectiveTransformV3™
random_rotation/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation/ShapeФ
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stackШ
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1Ш
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2¬
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_sliceШ
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stackЬ
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1Ь
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2ћ
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1О
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/CastШ
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stackЬ
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1Ь
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2ћ
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2Т
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1Ѓ
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shapeС
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†Њ2&
$random_rotation/stateful_uniform/minС
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†>2&
$random_rotation/stateful_uniform/maxЪ
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Constў
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/ProdФ
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/xЇ
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1©
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkipґ
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stackЇ
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1Ї
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2Ѓ
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice…
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/BitcastЇ
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stackЊ
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1Њ
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2¶
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1ѕ
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1ј
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algШ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2“
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/subп
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2&
$random_rotation/stateful_uniform/mul“
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2"
 random_rotation/stateful_uniformУ
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%random_rotation/rotation_matrix/sub/yЊ
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub•
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/CosЧ
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_1/yƒ
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1”
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/mul•
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/SinЧ
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_2/y¬
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2„
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_1„
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_3„
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_4Ы
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/yк
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation/rotation_matrix/truedivЧ
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_5/y¬
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5©
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_1Ч
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_6/yƒ
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6ў
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_2©
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_1Ч
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_7/y¬
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7ў
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_3„
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/add„
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_8Я
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/yр
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation/rotation_matrix/truediv_1Ґ
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shapeі
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stackЄ
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1Є
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2Ґ
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice©
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_2њ
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack√
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1√
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2„
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1©
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_2њ
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack√
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1√
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2„
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2љ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/Negњ
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack√
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1√
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2ў
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3©
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_3њ
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack√
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1√
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2„
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4©
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_3њ
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack√
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1√
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2„
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5њ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack√
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1√
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2џ
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6Ь
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/yм
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mulЯ
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2.
,random_rotation/rotation_matrix/zeros/Less/yз
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/LessҐ
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1Г
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packedЯ
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Constх
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/zerosЬ
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis»
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2(
&random_rotation/rotation_matrix/concatЊ
random_rotation/transform/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape®
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stackђ
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1ђ
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2к
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_sliceС
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_valueя
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3≈
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
є

ц
A__inference_dense_layer_call_and_return_conditional_losses_355660

inputs3
matmul_readvariableop_resource:А¬А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:А¬А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€А¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€А¬
 
_user_specified_nameinputs
І

П
-__inference_sequential_1_layer_call_fn_355172

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:А¬А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3543572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
б
F
*__inference_dropout_1_layer_call_fn_355586

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3542882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€>> :W S
/
_output_shapes
:€€€€€€€€€>> 
 
_user_specified_nameinputs
…о
Ц
F__inference_sequential_layer_call_and_return_conditional_losses_355483

inputsI
;random_translation_stateful_uniform_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИҐ/random_rotation/stateful_uniform/RngReadAndSkipҐ2random_translation/stateful_uniform/RngReadAndSkipҐ4random_translation/stateful_uniform_1/RngReadAndSkipў
5random_flip/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА27
5random_flip/random_flip_left_right/control_dependency¬
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/ShapeЇ
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stackЊ
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1Њ
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2і
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_sliceг
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape≥
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min≥
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?27
5random_flip/random_flip_left_right/random_uniform/maxР
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform≠
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:€€€€€€€€€27
5random_flip/random_flip_left_right/random_uniform/Mul™
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1™
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2™
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3М
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shapeУ
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2,
*random_flip/random_flip_left_right/Reshapeћ
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2*
(random_flip/random_flip_left_right/Round∞
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis°
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2.
,random_flip/random_flip_left_right/ReverseV2ш
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/mulЩ
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2*
(random_flip/random_flip_left_right/sub/xт
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&random_flip/random_flip_left_right/subГ
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА2*
(random_flip/random_flip_left_right/mul_1п
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА2(
&random_flip/random_flip_left_right/addО
random_translation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_translation/ShapeЪ
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_translation/strided_slice/stackЮ
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_1Ю
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice/stack_2‘
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_translation/strided_sliceЮ
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_1/stackҐ
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_1Ґ
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_1/stack_2ё
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_1Ч
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/CastЮ
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_translation/strided_slice_2/stackҐ
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_1Ґ
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation/strided_slice_2/stack_2ё
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation/strided_slice_2Ы
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation/Cast_1Ь
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+random_translation/stateful_uniform/shape/1н
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)random_translation/stateful_uniform/shapeЧ
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/stateful_uniform/minЧ
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>2)
'random_translation/stateful_uniform/max†
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_translation/stateful_uniform/Constе
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_translation/stateful_uniform/ProdЪ
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_translation/stateful_uniform/Cast/x√
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_translation/stateful_uniform/Cast_1Є
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_translation/stateful_uniform/RngReadAndSkipЉ
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_translation/stateful_uniform/strided_slice/stackј
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_1ј
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice/stack_2ј
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_translation/stateful_uniform/strided_slice“
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_translation/stateful_uniform/Bitcastј
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_translation/stateful_uniform/strided_slice_1/stackƒ
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_1ƒ
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform/strided_slice_1/stack_2Є
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_translation/stateful_uniform/strided_slice_1Ў
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform/Bitcast_1∆
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_translation/stateful_uniform/StatelessRandomUniformV2/algЃ
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2>
<random_translation/stateful_uniform/StatelessRandomUniformV2ё
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_translation/stateful_uniform/sub€
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'random_translation/stateful_uniform/mulв
#random_translation/stateful_uniformAdd+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_translation/stateful_uniformѓ
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul†
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation/stateful_uniform_1/shape/1у
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation/stateful_uniform_1/shapeЫ
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/minЫ
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation/stateful_uniform_1/max§
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_translation/stateful_uniform_1/Constн
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 2,
*random_translation/stateful_uniform_1/ProdЮ
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2.
,random_translation/stateful_uniform_1/Cast/x…
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,random_translation/stateful_uniform_1/Cast_1х
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:26
4random_translation/stateful_uniform_1/RngReadAndSkipј
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/stateful_uniform_1/strided_slice/stackƒ
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_1ƒ
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice/stack_2ћ
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask25
3random_translation/stateful_uniform_1/strided_sliceЎ
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type02/
-random_translation/stateful_uniform_1/Bitcastƒ
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/stateful_uniform_1/strided_slice_1/stack»
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_1»
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation/stateful_uniform_1/strided_slice_1/stack_2ƒ
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:27
5random_translation/stateful_uniform_1/strided_slice_1ё
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type021
/random_translation/stateful_uniform_1/Bitcast_1 
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2D
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algЇ
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€2@
>random_translation/stateful_uniform_1/StatelessRandomUniformV2ж
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2+
)random_translation/stateful_uniform_1/subЗ
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/stateful_uniform_1/mulк
%random_translation/stateful_uniform_1Add-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_translation/stateful_uniform_1Ј
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/mul_1В
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
random_translation/concat/axisа
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_translation/concatђ
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
:2-
+random_translation/translation_matrix/Shapeј
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_translation/translation_matrix/strided_slice/stackƒ
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_1ƒ
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_translation/translation_matrix/strided_slice/stack_2∆
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_translation/translation_matrix/strided_slice¶
0random_translation/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
0random_translation/translation_matrix/ones/mul/yБ
.random_translation/translation_matrix/ones/mulMul<random_translation/translation_matrix/strided_slice:output:09random_translation/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 20
.random_translation/translation_matrix/ones/mul©
1random_translation/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и23
1random_translation/translation_matrix/ones/Less/yы
/random_translation/translation_matrix/ones/LessLess2random_translation/translation_matrix/ones/mul:z:0:random_translation/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/ones/Lessђ
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/ones/packed/1Ш
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:23
1random_translation/translation_matrix/ones/packed©
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0random_translation/translation_matrix/ones/ConstЙ
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*random_translation/translation_matrix/ones®
1random_translation/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/zeros/mul/yД
/random_translation/translation_matrix/zeros/mulMul<random_translation/translation_matrix/strided_slice:output:0:random_translation/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 21
/random_translation/translation_matrix/zeros/mulЂ
2random_translation/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и24
2random_translation/translation_matrix/zeros/Less/y€
0random_translation/translation_matrix/zeros/LessLess3random_translation/translation_matrix/zeros/mul:z:0;random_translation/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/zeros/LessЃ
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_translation/translation_matrix/zeros/packed/1Ы
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:24
2random_translation/translation_matrix/zeros/packedЂ
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1random_translation/translation_matrix/zeros/ConstН
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/zerosѕ
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2=
;random_translation/translation_matrix/strided_slice_1/stack”
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_1/stack_1”
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_1/stack_2Ж
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_1ѕ
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)random_translation/translation_matrix/Negђ
3random_translation/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_1/mul/yК
1random_translation/translation_matrix/zeros_1/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_1/mulѓ
4random_translation/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_1/Less/yЗ
2random_translation/translation_matrix/zeros_1/LessLess5random_translation/translation_matrix/zeros_1/mul:z:0=random_translation/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_1/Less≤
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_1/packed/1°
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_1/packedѓ
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_1/ConstХ
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_1™
2random_translation/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation/translation_matrix/ones_1/mul/yЗ
0random_translation/translation_matrix/ones_1/mulMul<random_translation/translation_matrix/strided_slice:output:0;random_translation/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation/translation_matrix/ones_1/mul≠
3random_translation/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и25
3random_translation/translation_matrix/ones_1/Less/yГ
1random_translation/translation_matrix/ones_1/LessLess4random_translation/translation_matrix/ones_1/mul:z:0<random_translation/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/ones_1/Less∞
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation/translation_matrix/ones_1/packed/1Ю
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation/translation_matrix/ones_1/packed≠
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2random_translation/translation_matrix/ones_1/ConstС
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/ones_1ѕ
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2=
;random_translation/translation_matrix/strided_slice_2/stack”
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation/translation_matrix/strided_slice_2/stack_1”
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2?
=random_translation/translation_matrix/strided_slice_2/stack_2Ж
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask27
5random_translation/translation_matrix/strided_slice_2”
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+random_translation/translation_matrix/Neg_1ђ
3random_translation/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation/translation_matrix/zeros_2/mul/yК
1random_translation/translation_matrix/zeros_2/mulMul<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation/translation_matrix/zeros_2/mulѓ
4random_translation/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4random_translation/translation_matrix/zeros_2/Less/yЗ
2random_translation/translation_matrix/zeros_2/LessLess5random_translation/translation_matrix/zeros_2/mul:z:0=random_translation/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation/translation_matrix/zeros_2/Less≤
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation/translation_matrix/zeros_2/packed/1°
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation/translation_matrix/zeros_2/packedѓ
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation/translation_matrix/zeros_2/ConstХ
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-random_translation/translation_matrix/zeros_2®
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :23
1random_translation/translation_matrix/concat/axis—
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2.
,random_translation/translation_matrix/concatҐ
"random_translation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_translation/transform/ShapeЃ
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_translation/transform/strided_slice/stack≤
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_1≤
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_translation/transform/strided_slice/stack_2ь
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_translation/transform/strided_sliceЧ
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_translation/transform/fill_valueѕ
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_translation/transform/ImageProjectiveTransformV3™
random_rotation/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation/ShapeФ
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stackШ
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1Ш
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2¬
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_sliceШ
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stackЬ
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1Ь
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2ћ
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1О
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/CastШ
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stackЬ
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1Ь
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2ћ
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2Т
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1Ѓ
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shapeС
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†Њ2&
$random_rotation/stateful_uniform/minС
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†>2&
$random_rotation/stateful_uniform/maxЪ
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Constў
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/ProdФ
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/xЇ
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1©
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkipґ
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stackЇ
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1Ї
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2Ѓ
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice…
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/BitcastЇ
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stackЊ
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1Њ
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2¶
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1ѕ
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1ј
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algШ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2“
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/subп
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€2&
$random_rotation/stateful_uniform/mul“
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€2"
 random_rotation/stateful_uniformУ
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%random_rotation/rotation_matrix/sub/yЊ
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub•
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/CosЧ
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_1/yƒ
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1”
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/mul•
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/SinЧ
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_2/y¬
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2„
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_1„
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_3„
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_4Ы
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/yк
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2)
'random_rotation/rotation_matrix/truedivЧ
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_5/y¬
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5©
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_1Ч
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_6/yƒ
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6ў
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_2©
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_1Ч
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2)
'random_rotation/rotation_matrix/sub_7/y¬
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7ў
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/mul_3„
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/add„
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/sub_8Я
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/yр
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2+
)random_rotation/rotation_matrix/truediv_1Ґ
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shapeі
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stackЄ
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1Є
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2Ґ
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice©
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_2њ
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack√
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1√
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2„
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1©
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_2њ
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack√
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1√
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2„
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2љ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#random_rotation/rotation_matrix/Negњ
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack√
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1√
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2ў
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3©
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Sin_3њ
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack√
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1√
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2„
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4©
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/Cos_3њ
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack√
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1√
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2„
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5њ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack√
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1√
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2џ
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6Ь
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/yм
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mulЯ
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2.
,random_rotation/rotation_matrix/zeros/Less/yз
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/LessҐ
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1Г
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packedЯ
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Constх
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2'
%random_rotation/rotation_matrix/zerosЬ
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis»
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2(
&random_rotation/rotation_matrix/concatЊ
random_rotation/transform/ShapeShapeLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape®
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stackђ
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1ђ
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2к
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_sliceС
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_valueя
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3≈
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip*
T0*1
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≈

Щ
-__inference_sequential_1_layer_call_fn_354380
sequential_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:А¬А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3543572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:€€€€€€€€€АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*∆
serving_default≤
W
sequential_inputC
"serving_default_sequential_input:0€€€€€€€€€АА;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ф«
Єl
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer_with_weights-4
layer-13
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+ &call_and_return_all_conditional_losses
Ћ_default_save_signature
ћ__call__"Ѓh
_tf_keras_sequentialПh{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation", "trainable": true, "dtype": "float32", "height_factor": {"class_name": "__tuple__", "items": [0, 0.15]}, "width_factor": 0, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.05, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "sequential_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}, "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation", "trainable": true, "dtype": "float32", "height_factor": {"class_name": "__tuple__", "items": [0, 0.15]}, "width_factor": 0, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.05, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 5}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 6}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 21}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 31}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 32}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ƒ
layer-0
layer-1
layer-2
trainable_variables
regularization_losses
	variables
	keras_api
+Ќ&call_and_return_all_conditional_losses
ќ__call__"М
_tf_keras_sequentialн{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation", "trainable": true, "dtype": "float32", "height_factor": {"class_name": "__tuple__", "items": [0, 0.15]}, "width_factor": 0, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.05, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "float32", "random_flip_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_input"}, "shared_object_id": 1}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2}, {"class_name": "RandomTranslation", "config": {"name": "random_translation", "trainable": true, "dtype": "float32", "height_factor": {"class_name": "__tuple__", "items": [0, 0.15]}, "width_factor": 0, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.05, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 4}]}}}
ю
	keras_api"м
_tf_keras_layer“{"name": "rescaling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 6}
ќ


kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
+ѕ&call_and_return_all_conditional_losses
–__call__"І	
_tf_keras_layerН	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
≠
#trainable_variables
$regularization_losses
%	variables
&	keras_api
+—&call_and_return_all_conditional_losses
“__call__"Ь
_tf_keras_layerВ{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 34}}
ы
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+”&call_and_return_all_conditional_losses
‘__call__"к
_tf_keras_layer–{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}
„


+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
+’&call_and_return_all_conditional_losses
÷__call__"∞	
_tf_keras_layerЦ	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 16]}}
±
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+„&call_and_return_all_conditional_losses
Ў__call__"†
_tf_keras_layerЖ{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 36}}
€
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+ў&call_and_return_all_conditional_losses
Џ__call__"о
_tf_keras_layer‘{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 16}
’


9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
+џ&call_and_return_all_conditional_losses
№__call__"Ѓ	
_tf_keras_layerФ	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 32]}}
±
?trainable_variables
@regularization_losses
A	variables
B	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"†
_tf_keras_layerЖ{"name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 38}}
€
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
+я&call_and_return_all_conditional_losses
а__call__"о
_tf_keras_layer‘{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 21}
Ф
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
+б&call_and_return_all_conditional_losses
в__call__"Г
_tf_keras_layerй{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 39}}
’

Kkernel
Lbias
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
+г&call_and_return_all_conditional_losses
д__call__"Ѓ
_tf_keras_layerФ{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 57600}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 57600]}}
’

Qkernel
Rbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"Ѓ
_tf_keras_layerФ{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
Ы
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_ratemґmЈ+mЄ,mє9mЇ:mїKmЉLmљQmЊRmњvјvЅ+v¬,v√9vƒ:v≈Kv∆Lv«Qv»Rv…"
	optimizer
f
0
1
+2
,3
94
:5
K6
L7
Q8
R9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
+2
,3
94
:5
K6
L7
Q8
R9"
trackable_list_wrapper
ќ
\metrics
]layer_regularization_losses
trainable_variables
^non_trainable_variables
_layer_metrics
regularization_losses

`layers
	variables
ћ__call__
Ћ_default_save_signature
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
-
зserving_default"
signature_map
∞
a_rng
b	keras_api"Ф
_tf_keras_layerъ{"name": "random_flip", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": true, "class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 30}}
Я
c_rng
d	keras_api"Г
_tf_keras_layerй{"name": "random_translation", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomTranslation", "config": {"name": "random_translation", "trainable": true, "dtype": "float32", "height_factor": {"class_name": "__tuple__", "items": [0, 0.15]}, "width_factor": 0, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}
—
e_rng
f	keras_api"µ
_tf_keras_layerЫ{"name": "random_rotation", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.05, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
gmetrics
hlayer_regularization_losses
trainable_variables
inon_trainable_variables
jlayer_metrics
regularization_losses

klayers
	variables
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
':%2conv2d/kernel
:2conv2d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞
lmetrics
mlayer_regularization_losses
trainable_variables
nnon_trainable_variables
olayer_metrics
 regularization_losses

players
!	variables
–__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
qmetrics
rlayer_regularization_losses
#trainable_variables
snon_trainable_variables
tlayer_metrics
$regularization_losses

ulayers
%	variables
“__call__
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
vmetrics
wlayer_regularization_losses
'trainable_variables
xnon_trainable_variables
ylayer_metrics
(regularization_losses

zlayers
)	variables
‘__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_1/kernel
: 2conv2d_1/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
∞
{metrics
|layer_regularization_losses
-trainable_variables
}non_trainable_variables
~layer_metrics
.regularization_losses

layers
/	variables
÷__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Аmetrics
 Бlayer_regularization_losses
1trainable_variables
Вnon_trainable_variables
Гlayer_metrics
2regularization_losses
Дlayers
3	variables
Ў__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Еmetrics
 Жlayer_regularization_losses
5trainable_variables
Зnon_trainable_variables
Иlayer_metrics
6regularization_losses
Йlayers
7	variables
Џ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_2/kernel
:@2conv2d_2/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
µ
Кmetrics
 Лlayer_regularization_losses
;trainable_variables
Мnon_trainable_variables
Нlayer_metrics
<regularization_losses
Оlayers
=	variables
№__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Пmetrics
 Рlayer_regularization_losses
?trainable_variables
Сnon_trainable_variables
Тlayer_metrics
@regularization_losses
Уlayers
A	variables
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Фmetrics
 Хlayer_regularization_losses
Ctrainable_variables
Цnon_trainable_variables
Чlayer_metrics
Dregularization_losses
Шlayers
E	variables
а__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Щmetrics
 Ъlayer_regularization_losses
Gtrainable_variables
Ыnon_trainable_variables
Ьlayer_metrics
Hregularization_losses
Эlayers
I	variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
!:А¬А2dense/kernel
:А2
dense/bias
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
µ
Юmetrics
 Яlayer_regularization_losses
Mtrainable_variables
†non_trainable_variables
°layer_metrics
Nregularization_losses
Ґlayers
O	variables
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_1/kernel
:2dense_1/bias
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
µ
£metrics
 §layer_regularization_losses
Strainable_variables
•non_trainable_variables
¶layer_metrics
Tregularization_losses
Іlayers
U	variables
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
®0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
/
™
_state_var"
_generic_user_object
"
_generic_user_object
/
Ђ
_state_var"
_generic_user_object
"
_generic_user_object
/
ђ
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Ў

≠total

Ѓcount
ѓ	variables
∞	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 42}
£

±total

≤count
≥
_fn_kwargs
і	variables
µ	keras_api"„
_tf_keras_metricЉ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 32}
:	2Variable
:	2Variable
:	2Variable
:  (2total
:  (2count
0
≠0
Ѓ1"
trackable_list_wrapper
.
ѓ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
±0
≤1"
trackable_list_wrapper
.
і	variables"
_generic_user_object
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:, 2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:, @2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
&:$А¬А2Adam/dense/kernel/m
:А2Adam/dense/bias/m
&:$	А2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:, 2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:, @2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
&:$А¬А2Adam/dense/kernel/v
:А2Adam/dense/bias/v
&:$	А2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
о2л
H__inference_sequential_1_layer_call_and_return_conditional_losses_354802
H__inference_sequential_1_layer_call_and_return_conditional_losses_355147
H__inference_sequential_1_layer_call_and_return_conditional_losses_354674
H__inference_sequential_1_layer_call_and_return_conditional_losses_354719ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
!__inference__wrapped_model_353598…
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *9Ґ6
4К1
sequential_input€€€€€€€€€АА
В2€
-__inference_sequential_1_layer_call_fn_354380
-__inference_sequential_1_layer_call_fn_355172
-__inference_sequential_1_layer_call_fn_355201
-__inference_sequential_1_layer_call_fn_354633ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ж2г
F__inference_sequential_layer_call_and_return_conditional_losses_355205
F__inference_sequential_layer_call_and_return_conditional_losses_355483
F__inference_sequential_layer_call_and_return_conditional_losses_353914
F__inference_sequential_layer_call_and_return_conditional_losses_354192ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ъ2ч
+__inference_sequential_layer_call_fn_353609
+__inference_sequential_layer_call_fn_355488
+__inference_sequential_layer_call_fn_355497
+__inference_sequential_layer_call_fn_353910ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
м2й
B__inference_conv2d_layer_call_and_return_conditional_losses_355508Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv2d_layer_call_fn_355517Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
±2Ѓ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_354198а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ц2У
.__inference_max_pooling2d_layer_call_fn_354204а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
ƒ2Ѕ
C__inference_dropout_layer_call_and_return_conditional_losses_355522
C__inference_dropout_layer_call_and_return_conditional_losses_355534і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
О2Л
(__inference_dropout_layer_call_fn_355539
(__inference_dropout_layer_call_fn_355544і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_conv2d_1_layer_call_and_return_conditional_losses_355555Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_1_layer_call_fn_355564Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≥2∞
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354210а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ш2Х
0__inference_max_pooling2d_1_layer_call_fn_354216а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
»2≈
E__inference_dropout_1_layer_call_and_return_conditional_losses_355569
E__inference_dropout_1_layer_call_and_return_conditional_losses_355581і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
*__inference_dropout_1_layer_call_fn_355586
*__inference_dropout_1_layer_call_fn_355591і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_conv2d_2_layer_call_and_return_conditional_losses_355602Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_2_layer_call_fn_355611Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≥2∞
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_354222а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ш2Х
0__inference_max_pooling2d_2_layer_call_fn_354228а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
»2≈
E__inference_dropout_2_layer_call_and_return_conditional_losses_355616
E__inference_dropout_2_layer_call_and_return_conditional_losses_355628і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
*__inference_dropout_2_layer_call_fn_355633
*__inference_dropout_2_layer_call_fn_355638і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_flatten_layer_call_and_return_conditional_losses_355644Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_flatten_layer_call_fn_355649Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
л2и
A__inference_dense_layer_call_and_return_conditional_losses_355660Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
&__inference_dense_layer_call_fn_355669Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_1_layer_call_and_return_conditional_losses_355679Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_1_layer_call_fn_355688Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘B—
$__inference_signature_wrapper_354752sequential_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ™
!__inference__wrapped_model_353598Д
+,9:KLQRCҐ@
9Ґ6
4К1
sequential_input€€€€€€€€€АА
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€і
D__inference_conv2d_1_layer_call_and_return_conditional_losses_355555l+,7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€}} 
Ъ М
)__inference_conv2d_1_layer_call_fn_355564_+,7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€}} і
D__inference_conv2d_2_layer_call_and_return_conditional_losses_355602l9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>> 
™ "-Ґ*
#К 
0€€€€€€€€€<<@
Ъ М
)__inference_conv2d_2_layer_call_fn_355611_9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>> 
™ " К€€€€€€€€€<<@ґ
B__inference_conv2d_layer_call_and_return_conditional_losses_355508p9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€юю
Ъ О
'__inference_conv2d_layer_call_fn_355517c9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€юю§
C__inference_dense_1_layer_call_and_return_conditional_losses_355679]QR0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
(__inference_dense_1_layer_call_fn_355688PQR0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€§
A__inference_dense_layer_call_and_return_conditional_losses_355660_KL1Ґ.
'Ґ$
"К
inputs€€€€€€€€€А¬
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
&__inference_dense_layer_call_fn_355669RKL1Ґ.
'Ґ$
"К
inputs€€€€€€€€€А¬
™ "К€€€€€€€€€Аµ
E__inference_dropout_1_layer_call_and_return_conditional_losses_355569l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€>> 
p 
™ "-Ґ*
#К 
0€€€€€€€€€>> 
Ъ µ
E__inference_dropout_1_layer_call_and_return_conditional_losses_355581l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€>> 
p
™ "-Ґ*
#К 
0€€€€€€€€€>> 
Ъ Н
*__inference_dropout_1_layer_call_fn_355586_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€>> 
p 
™ " К€€€€€€€€€>> Н
*__inference_dropout_1_layer_call_fn_355591_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€>> 
p
™ " К€€€€€€€€€>> µ
E__inference_dropout_2_layer_call_and_return_conditional_losses_355616l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ µ
E__inference_dropout_2_layer_call_and_return_conditional_losses_355628l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_dropout_2_layer_call_fn_355633_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@Н
*__inference_dropout_2_layer_call_fn_355638_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@≥
C__inference_dropout_layer_call_and_return_conditional_losses_355522l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ ≥
C__inference_dropout_layer_call_and_return_conditional_losses_355534l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Л
(__inference_dropout_layer_call_fn_355539_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ " К€€€€€€€€€Л
(__inference_dropout_layer_call_fn_355544_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ " К€€€€€€€€€©
C__inference_flatten_layer_call_and_return_conditional_losses_355644b7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "'Ґ$
К
0€€€€€€€€€А¬
Ъ Б
(__inference_flatten_layer_call_fn_355649U7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€А¬о
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354210ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_1_layer_call_fn_354216СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_354222ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_2_layer_call_fn_354228СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_354198ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_max_pooling2d_layer_call_fn_354204СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ќ
H__inference_sequential_1_layer_call_and_return_conditional_losses_354674А
+,9:KLQRKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ —
H__inference_sequential_1_layer_call_and_return_conditional_losses_354719ДЂђ+,9:KLQRKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ¬
H__inference_sequential_1_layer_call_and_return_conditional_losses_354802v
+,9:KLQRAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∆
H__inference_sequential_1_layer_call_and_return_conditional_losses_355147zЂђ+,9:KLQRAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ §
-__inference_sequential_1_layer_call_fn_354380s
+,9:KLQRKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€®
-__inference_sequential_1_layer_call_fn_354633wЂђ+,9:KLQRKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ "К€€€€€€€€€Ъ
-__inference_sequential_1_layer_call_fn_355172i
+,9:KLQRAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€Ю
-__inference_sequential_1_layer_call_fn_355201mЂђ+,9:KLQRAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "К€€€€€€€€€…
F__inference_sequential_layer_call_and_return_conditional_losses_353914LҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ –
F__inference_sequential_layer_call_and_return_conditional_losses_354192ЕЂђLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Њ
F__inference_sequential_layer_call_and_return_conditional_losses_355205tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ƒ
F__inference_sequential_layer_call_and_return_conditional_losses_355483zЂђAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ °
+__inference_sequential_layer_call_fn_353609rLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААІ
+__inference_sequential_layer_call_fn_353910xЂђLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААЦ
+__inference_sequential_layer_call_fn_355488gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЬ
+__inference_sequential_layer_call_fn_355497mЂђAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААЅ
$__inference_signature_wrapper_354752Ш
+,9:KLQRWҐT
Ґ 
M™J
H
sequential_input4К1
sequential_input€€€€€€€€€АА"1™.
,
dense_1!К
dense_1€€€€€€€€€