��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v1.12.1-68049-ga9643a6a04d8��
�
conv1d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_18/kernel
y
$conv1d_18/kernel/Read/ReadVariableOpReadVariableOpconv1d_18/kernel*"
_output_shapes
:*
dtype0
t
conv1d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_18/bias
m
"conv1d_18/bias/Read/ReadVariableOpReadVariableOpconv1d_18/bias*
_output_shapes
:*
dtype0
|
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_36/kernel
u
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel* 
_output_shapes
:
��*
dtype0
s
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_36/bias
l
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes	
:�*
dtype0
{
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�n* 
shared_namedense_37/kernel
t
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes
:	�n*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
:n*
dtype0
~
regression/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*"
shared_nameregression/kernel
w
%regression/kernel/Read/ReadVariableOpReadVariableOpregression/kernel*
_output_shapes

:n*
dtype0
v
regression/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameregression/bias
o
#regression/bias/Read/ReadVariableOpReadVariableOpregression/bias*
_output_shapes
:*
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
�
Adam/conv1d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_18/kernel/m
�
+Adam/conv1d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_18/kernel/m*"
_output_shapes
:*
dtype0
�
Adam/conv1d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_18/bias/m
{
)Adam/conv1d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_18/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_36/kernel/m
�
*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_36/bias/m
z
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�n*'
shared_nameAdam/dense_37/kernel/m
�
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes
:	�n*
dtype0
�
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:n*
dtype0
�
Adam/regression/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*)
shared_nameAdam/regression/kernel/m
�
,Adam/regression/kernel/m/Read/ReadVariableOpReadVariableOpAdam/regression/kernel/m*
_output_shapes

:n*
dtype0
�
Adam/regression/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/regression/bias/m
}
*Adam/regression/bias/m/Read/ReadVariableOpReadVariableOpAdam/regression/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv1d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_18/kernel/v
�
+Adam/conv1d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_18/kernel/v*"
_output_shapes
:*
dtype0
�
Adam/conv1d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_18/bias/v
{
)Adam/conv1d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_18/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_36/kernel/v
�
*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_36/bias/v
z
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�n*'
shared_nameAdam/dense_37/kernel/v
�
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes
:	�n*
dtype0
�
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:n*
dtype0
�
Adam/regression/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*)
shared_nameAdam/regression/kernel/v
�
,Adam/regression/kernel/v/Read/ReadVariableOpReadVariableOpAdam/regression/kernel/v*
_output_shapes

:n*
dtype0
�
Adam/regression/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/regression/bias/v
}
*Adam/regression/bias/v/Read/ReadVariableOpReadVariableOpAdam/regression/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�C
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�B
value�BB�B B�B
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
* 
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
�

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
�

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
�

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
�
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem~m-m�.m�5m�6m�=m�>m�v�v�-v�.v�5v�6v�=v�>v�*
<
0
1
-2
.3
54
65
=6
>7*
<
0
1
-2
.3
54
65
=6
>7*
* 
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Oserving_default* 
* 
* 
* 
`Z
VARIABLE_VALUEconv1d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_36/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_37/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEregression/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEregression/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

s0
t1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	utotal
	vcount
w	variables
x	keras_api*
H
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

u0
v1*

w	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

y0
z1*

|	variables*
�}
VARIABLE_VALUEAdam/conv1d_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/regression/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/regression/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv1d_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1d_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/regression/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/regression/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_37Placeholder*'
_output_shapes
:���������.*
dtype0*
shape:���������.
�
serving_default_input_38Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_37serving_default_input_38conv1d_18/kernelconv1d_18/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasregression/kernelregression/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_1781273
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_18/kernel/Read/ReadVariableOp"conv1d_18/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp%regression/kernel/Read/ReadVariableOp#regression/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv1d_18/kernel/m/Read/ReadVariableOp)Adam/conv1d_18/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp,Adam/regression/kernel/m/Read/ReadVariableOp*Adam/regression/bias/m/Read/ReadVariableOp+Adam/conv1d_18/kernel/v/Read/ReadVariableOp)Adam/conv1d_18/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp,Adam/regression/kernel/v/Read/ReadVariableOp*Adam/regression/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_1781648
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_18/kernelconv1d_18/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasregression/kernelregression/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_18/kernel/mAdam/conv1d_18/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/regression/kernel/mAdam/regression/bias/mAdam/conv1d_18/kernel/vAdam/conv1d_18/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/regression/kernel/vAdam/regression/bias/v*-
Tin&
$2"*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_1781757��
� 
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781015

inputs
inputs_1'
conv1d_18_1780933:
conv1d_18_1780935:$
dense_36_1780975:
��
dense_36_1780977:	�#
dense_37_1780992:	�n
dense_37_1780994:n$
regression_1781009:n 
regression_1781011:
identity��!conv1d_18/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall�"regression/StatefulPartitionedCall�
!conv1d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_18_1780933conv1d_18_1780935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932�
flatten_36/PartitionedCallPartitionedCall*conv1d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944�
concatenate_18/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953�
flatten_37/PartitionedCallPartitionedCall'concatenate_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_36_1780975dense_36_1780977*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_1780992dense_37_1780994*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991�
"regression/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0regression_1781009regression_1781011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_regression_layer_call_and_return_conditional_losses_1781008z
IdentityIdentity+regression/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_18/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^regression/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2F
!conv1d_18/StatefulPartitionedCall!conv1d_18/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"regression/StatefulPartitionedCall"regression/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������.
 
_user_specified_nameinputs
�
c
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����f  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�2
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781361
inputs_0
inputs_1K
5conv1d_18_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_18_biasadd_readvariableop_resource:;
'dense_36_matmul_readvariableop_resource:
��7
(dense_36_biasadd_readvariableop_resource:	�:
'dense_37_matmul_readvariableop_resource:	�n6
(dense_37_biasadd_readvariableop_resource:n;
)regression_matmul_readvariableop_resource:n8
*regression_biasadd_readvariableop_resource:
identity�� conv1d_18/BiasAdd/ReadVariableOp�,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp�dense_36/BiasAdd/ReadVariableOp�dense_36/MatMul/ReadVariableOp�dense_37/BiasAdd/ReadVariableOp�dense_37/MatMul/ReadVariableOp�!regression/BiasAdd/ReadVariableOp� regression/MatMul/ReadVariableOpj
conv1d_18/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_18/Conv1D/ExpandDims
ExpandDimsinputs_0(conv1d_18/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_18_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_18/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_18/Conv1D/ExpandDims_1
ExpandDims4conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_18/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_18/Conv1DConv2D$conv1d_18/Conv1D/ExpandDims:output:0&conv1d_18/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv1d_18/Conv1D/SqueezeSqueezeconv1d_18/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_18/BiasAdd/ReadVariableOpReadVariableOp)conv1d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_18/BiasAddBiasAdd!conv1d_18/Conv1D/Squeeze:output:0(conv1d_18/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_18/ReluReluconv1d_18/BiasAdd:output:0*
T0*+
_output_shapes
:���������a
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"����f  �
flatten_36/ReshapeReshapeconv1d_18/Relu:activations:0flatten_36/Const:output:0*
T0*(
_output_shapes
:����������\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_18/concatConcatV2flatten_36/Reshape:output:0inputs_1#concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������a
flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_37/ReshapeReshapeconcatenate_18/concat:output:0flatten_37/Const:output:0*
T0*(
_output_shapes
:�����������
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_36/MatMulMatMulflatten_37/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	�n*
dtype0�
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n�
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nb
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:���������n�
 regression/MatMul/ReadVariableOpReadVariableOp)regression_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
regression/MatMulMatMuldense_37/Relu:activations:0(regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!regression/BiasAdd/ReadVariableOpReadVariableOp*regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
regression/BiasAddBiasAddregression/MatMul:product:0)regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
regression/ReluReluregression/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
IdentityIdentityregression/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv1d_18/BiasAdd/ReadVariableOp-^conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp"^regression/BiasAdd/ReadVariableOp!^regression/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2D
 conv1d_18/BiasAdd/ReadVariableOp conv1d_18/BiasAdd/ReadVariableOp2\
,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2F
!regression/BiasAdd/ReadVariableOp!regression/BiasAdd/ReadVariableOp2D
 regression/MatMul/ReadVariableOp regression/MatMul/ReadVariableOp:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
�

�
*__inference_model_18_layer_call_fn_1781034
input_38
input_37
unknown:
	unknown_0:
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�n
	unknown_4:n
	unknown_5:n
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_38input_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_18_layer_call_and_return_conditional_losses_1781015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_38:QM
'
_output_shapes
:���������.
"
_user_specified_name
input_37
� 
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781215
input_38
input_37'
conv1d_18_1781191:
conv1d_18_1781193:$
dense_36_1781199:
��
dense_36_1781201:	�#
dense_37_1781204:	�n
dense_37_1781206:n$
regression_1781209:n 
regression_1781211:
identity��!conv1d_18/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall�"regression/StatefulPartitionedCall�
!conv1d_18/StatefulPartitionedCallStatefulPartitionedCallinput_38conv1d_18_1781191conv1d_18_1781193*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932�
flatten_36/PartitionedCallPartitionedCall*conv1d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944�
concatenate_18/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0input_37*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953�
flatten_37/PartitionedCallPartitionedCall'concatenate_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_36_1781199dense_36_1781201*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_1781204dense_37_1781206*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991�
"regression/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0regression_1781209regression_1781211*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_regression_layer_call_and_return_conditional_losses_1781008z
IdentityIdentity+regression/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_18/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^regression/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2F
!conv1d_18/StatefulPartitionedCall!conv1d_18/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"regression/StatefulPartitionedCall"regression/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_38:QM
'
_output_shapes
:���������.
"
_user_specified_name
input_37
�
�
+__inference_conv1d_18_layer_call_fn_1781414

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
u
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������.:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������.
 
_user_specified_nameinputs
�
�
*__inference_dense_36_layer_call_fn_1781474

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�F
�
 __inference__traced_save_1781648
file_prefix/
+savev2_conv1d_18_kernel_read_readvariableop-
)savev2_conv1d_18_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop0
,savev2_regression_kernel_read_readvariableop.
*savev2_regression_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv1d_18_kernel_m_read_readvariableop4
0savev2_adam_conv1d_18_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop7
3savev2_adam_regression_kernel_m_read_readvariableop5
1savev2_adam_regression_bias_m_read_readvariableop6
2savev2_adam_conv1d_18_kernel_v_read_readvariableop4
0savev2_adam_conv1d_18_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop7
3savev2_adam_regression_kernel_v_read_readvariableop5
1savev2_adam_regression_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_18_kernel_read_readvariableop)savev2_conv1d_18_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop,savev2_regression_kernel_read_readvariableop*savev2_regression_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv1d_18_kernel_m_read_readvariableop0savev2_adam_conv1d_18_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop3savev2_adam_regression_kernel_m_read_readvariableop1savev2_adam_regression_bias_m_read_readvariableop2savev2_adam_conv1d_18_kernel_v_read_readvariableop0savev2_adam_conv1d_18_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop3savev2_adam_regression_kernel_v_read_readvariableop1savev2_adam_regression_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :::
��:�:	�n:n:n:: : : : : : : : : :::
��:�:	�n:n:n::::
��:�:	�n:n:n:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�n: 

_output_shapes
:n:$ 

_output_shapes

:n: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�n: 

_output_shapes
:n:$ 

_output_shapes

:n: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�n: 

_output_shapes
:n:$  

_output_shapes

:n: !

_output_shapes
::"

_output_shapes
: 
�
�
,__inference_regression_layer_call_fn_1781514

inputs
unknown:n
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_regression_layer_call_and_return_conditional_losses_1781008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_1781273
input_37
input_38
unknown:
	unknown_0:
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�n
	unknown_4:n
	unknown_5:n
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_38input_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_1780907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������.:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������.
"
_user_specified_name
input_37:UQ
+
_output_shapes
:���������
"
_user_specified_name
input_38
�
w
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1781454
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������.:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
�
\
0__inference_concatenate_18_layer_call_fn_1781447
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������.:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
�:
�
"__inference__wrapped_model_1780907
input_38
input_37T
>model_18_conv1d_18_conv1d_expanddims_1_readvariableop_resource:@
2model_18_conv1d_18_biasadd_readvariableop_resource:D
0model_18_dense_36_matmul_readvariableop_resource:
��@
1model_18_dense_36_biasadd_readvariableop_resource:	�C
0model_18_dense_37_matmul_readvariableop_resource:	�n?
1model_18_dense_37_biasadd_readvariableop_resource:nD
2model_18_regression_matmul_readvariableop_resource:nA
3model_18_regression_biasadd_readvariableop_resource:
identity��)model_18/conv1d_18/BiasAdd/ReadVariableOp�5model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp�(model_18/dense_36/BiasAdd/ReadVariableOp�'model_18/dense_36/MatMul/ReadVariableOp�(model_18/dense_37/BiasAdd/ReadVariableOp�'model_18/dense_37/MatMul/ReadVariableOp�*model_18/regression/BiasAdd/ReadVariableOp�)model_18/regression/MatMul/ReadVariableOps
(model_18/conv1d_18/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
$model_18/conv1d_18/Conv1D/ExpandDims
ExpandDimsinput_381model_18/conv1d_18/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
5model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp>model_18_conv1d_18_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0l
*model_18/conv1d_18/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
&model_18/conv1d_18/Conv1D/ExpandDims_1
ExpandDims=model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp:value:03model_18/conv1d_18/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
model_18/conv1d_18/Conv1DConv2D-model_18/conv1d_18/Conv1D/ExpandDims:output:0/model_18/conv1d_18/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
!model_18/conv1d_18/Conv1D/SqueezeSqueeze"model_18/conv1d_18/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
)model_18/conv1d_18/BiasAdd/ReadVariableOpReadVariableOp2model_18_conv1d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_18/conv1d_18/BiasAddBiasAdd*model_18/conv1d_18/Conv1D/Squeeze:output:01model_18/conv1d_18/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������z
model_18/conv1d_18/ReluRelu#model_18/conv1d_18/BiasAdd:output:0*
T0*+
_output_shapes
:���������j
model_18/flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"����f  �
model_18/flatten_36/ReshapeReshape%model_18/conv1d_18/Relu:activations:0"model_18/flatten_36/Const:output:0*
T0*(
_output_shapes
:����������e
#model_18/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_18/concatenate_18/concatConcatV2$model_18/flatten_36/Reshape:output:0input_37,model_18/concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������j
model_18/flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
model_18/flatten_37/ReshapeReshape'model_18/concatenate_18/concat:output:0"model_18/flatten_37/Const:output:0*
T0*(
_output_shapes
:�����������
'model_18/dense_36/MatMul/ReadVariableOpReadVariableOp0model_18_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_18/dense_36/MatMulMatMul$model_18/flatten_37/Reshape:output:0/model_18/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(model_18/dense_36/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_18/dense_36/BiasAddBiasAdd"model_18/dense_36/MatMul:product:00model_18/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
model_18/dense_36/ReluRelu"model_18/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'model_18/dense_37/MatMul/ReadVariableOpReadVariableOp0model_18_dense_37_matmul_readvariableop_resource*
_output_shapes
:	�n*
dtype0�
model_18/dense_37/MatMulMatMul$model_18/dense_36/Relu:activations:0/model_18/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n�
(model_18/dense_37/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_37_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
model_18/dense_37/BiasAddBiasAdd"model_18/dense_37/MatMul:product:00model_18/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nt
model_18/dense_37/ReluRelu"model_18/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:���������n�
)model_18/regression/MatMul/ReadVariableOpReadVariableOp2model_18_regression_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
model_18/regression/MatMulMatMul$model_18/dense_37/Relu:activations:01model_18/regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*model_18/regression/BiasAdd/ReadVariableOpReadVariableOp3model_18_regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_18/regression/BiasAddBiasAdd$model_18/regression/MatMul:product:02model_18/regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_18/regression/ReluRelu$model_18/regression/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&model_18/regression/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_18/conv1d_18/BiasAdd/ReadVariableOp6^model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp)^model_18/dense_36/BiasAdd/ReadVariableOp(^model_18/dense_36/MatMul/ReadVariableOp)^model_18/dense_37/BiasAdd/ReadVariableOp(^model_18/dense_37/MatMul/ReadVariableOp+^model_18/regression/BiasAdd/ReadVariableOp*^model_18/regression/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2V
)model_18/conv1d_18/BiasAdd/ReadVariableOp)model_18/conv1d_18/BiasAdd/ReadVariableOp2n
5model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp5model_18/conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp2T
(model_18/dense_36/BiasAdd/ReadVariableOp(model_18/dense_36/BiasAdd/ReadVariableOp2R
'model_18/dense_36/MatMul/ReadVariableOp'model_18/dense_36/MatMul/ReadVariableOp2T
(model_18/dense_37/BiasAdd/ReadVariableOp(model_18/dense_37/BiasAdd/ReadVariableOp2R
'model_18/dense_37/MatMul/ReadVariableOp'model_18/dense_37/MatMul/ReadVariableOp2X
*model_18/regression/BiasAdd/ReadVariableOp*model_18/regression/BiasAdd/ReadVariableOp2V
)model_18/regression/MatMul/ReadVariableOp)model_18/regression/MatMul/ReadVariableOp:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_38:QM
'
_output_shapes
:���������.
"
_user_specified_name
input_37
� 
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781243
input_38
input_37'
conv1d_18_1781219:
conv1d_18_1781221:$
dense_36_1781227:
��
dense_36_1781229:	�#
dense_37_1781232:	�n
dense_37_1781234:n$
regression_1781237:n 
regression_1781239:
identity��!conv1d_18/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall�"regression/StatefulPartitionedCall�
!conv1d_18/StatefulPartitionedCallStatefulPartitionedCallinput_38conv1d_18_1781219conv1d_18_1781221*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932�
flatten_36/PartitionedCallPartitionedCall*conv1d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944�
concatenate_18/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0input_37*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953�
flatten_37/PartitionedCallPartitionedCall'concatenate_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_36_1781227dense_36_1781229*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_1781232dense_37_1781234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991�
"regression/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0regression_1781237regression_1781239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_regression_layer_call_and_return_conditional_losses_1781008z
IdentityIdentity+regression/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_18/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^regression/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2F
!conv1d_18/StatefulPartitionedCall!conv1d_18/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"regression/StatefulPartitionedCall"regression/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_38:QM
'
_output_shapes
:���������.
"
_user_specified_name
input_37
�
H
,__inference_flatten_36_layer_call_fn_1781435

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_36_layer_call_and_return_conditional_losses_1781441

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����f  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1781430

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_36_layer_call_and_return_conditional_losses_1781485

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
*__inference_model_18_layer_call_fn_1781187
input_38
input_37
unknown:
	unknown_0:
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�n
	unknown_4:n
	unknown_5:n
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_38input_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_18_layer_call_and_return_conditional_losses_1781146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_38:QM
'
_output_shapes
:���������.
"
_user_specified_name
input_37
�
H
,__inference_flatten_37_layer_call_fn_1781459

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_37_layer_call_and_return_conditional_losses_1781505

inputs1
matmul_readvariableop_resource:	�n-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991

inputs1
matmul_readvariableop_resource:	�n-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
*__inference_model_18_layer_call_fn_1781317
inputs_0
inputs_1
unknown:
	unknown_0:
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�n
	unknown_4:n
	unknown_5:n
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_18_layer_call_and_return_conditional_losses_1781146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
�

�
*__inference_model_18_layer_call_fn_1781295
inputs_0
inputs_1
unknown:
	unknown_0:
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�n
	unknown_4:n
	unknown_5:n
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_18_layer_call_and_return_conditional_losses_1781015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
Ƅ
�
#__inference__traced_restore_1781757
file_prefix7
!assignvariableop_conv1d_18_kernel:/
!assignvariableop_1_conv1d_18_bias:6
"assignvariableop_2_dense_36_kernel:
��/
 assignvariableop_3_dense_36_bias:	�5
"assignvariableop_4_dense_37_kernel:	�n.
 assignvariableop_5_dense_37_bias:n6
$assignvariableop_6_regression_kernel:n0
"assignvariableop_7_regression_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: A
+assignvariableop_17_adam_conv1d_18_kernel_m:7
)assignvariableop_18_adam_conv1d_18_bias_m:>
*assignvariableop_19_adam_dense_36_kernel_m:
��7
(assignvariableop_20_adam_dense_36_bias_m:	�=
*assignvariableop_21_adam_dense_37_kernel_m:	�n6
(assignvariableop_22_adam_dense_37_bias_m:n>
,assignvariableop_23_adam_regression_kernel_m:n8
*assignvariableop_24_adam_regression_bias_m:A
+assignvariableop_25_adam_conv1d_18_kernel_v:7
)assignvariableop_26_adam_conv1d_18_bias_v:>
*assignvariableop_27_adam_dense_36_kernel_v:
��7
(assignvariableop_28_adam_dense_36_bias_v:	�=
*assignvariableop_29_adam_dense_37_kernel_v:	�n6
(assignvariableop_30_adam_dense_37_bias_v:n>
,assignvariableop_31_adam_regression_kernel_v:n8
*assignvariableop_32_adam_regression_bias_v:
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_36_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_36_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_37_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_37_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_regression_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_regression_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv1d_18_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv1d_18_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_36_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_36_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_37_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_37_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_regression_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_regression_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv1d_18_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv1d_18_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_36_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_36_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_37_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_37_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_regression_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_regression_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
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
� 
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781146

inputs
inputs_1'
conv1d_18_1781122:
conv1d_18_1781124:$
dense_36_1781130:
��
dense_36_1781132:	�#
dense_37_1781135:	�n
dense_37_1781137:n$
regression_1781140:n 
regression_1781142:
identity��!conv1d_18/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall�"regression/StatefulPartitionedCall�
!conv1d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_18_1781122conv1d_18_1781124*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1780932�
flatten_36/PartitionedCallPartitionedCall*conv1d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_36_layer_call_and_return_conditional_losses_1780944�
concatenate_18/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1780953�
flatten_37/PartitionedCallPartitionedCall'concatenate_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_37_layer_call_and_return_conditional_losses_1780961�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_36_1781130dense_36_1781132*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_1780974�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_1781135dense_37_1781137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991�
"regression/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0regression_1781140regression_1781142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_regression_layer_call_and_return_conditional_losses_1781008z
IdentityIdentity+regression/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv1d_18/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^regression/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2F
!conv1d_18/StatefulPartitionedCall!conv1d_18/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"regression/StatefulPartitionedCall"regression/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������.
 
_user_specified_nameinputs
�

�
G__inference_regression_layer_call_and_return_conditional_losses_1781525

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
c
G__inference_flatten_37_layer_call_and_return_conditional_losses_1781465

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
E__inference_model_18_layer_call_and_return_conditional_losses_1781405
inputs_0
inputs_1K
5conv1d_18_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_18_biasadd_readvariableop_resource:;
'dense_36_matmul_readvariableop_resource:
��7
(dense_36_biasadd_readvariableop_resource:	�:
'dense_37_matmul_readvariableop_resource:	�n6
(dense_37_biasadd_readvariableop_resource:n;
)regression_matmul_readvariableop_resource:n8
*regression_biasadd_readvariableop_resource:
identity�� conv1d_18/BiasAdd/ReadVariableOp�,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp�dense_36/BiasAdd/ReadVariableOp�dense_36/MatMul/ReadVariableOp�dense_37/BiasAdd/ReadVariableOp�dense_37/MatMul/ReadVariableOp�!regression/BiasAdd/ReadVariableOp� regression/MatMul/ReadVariableOpj
conv1d_18/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_18/Conv1D/ExpandDims
ExpandDimsinputs_0(conv1d_18/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_18_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_18/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_18/Conv1D/ExpandDims_1
ExpandDims4conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_18/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_18/Conv1DConv2D$conv1d_18/Conv1D/ExpandDims:output:0&conv1d_18/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
conv1d_18/Conv1D/SqueezeSqueezeconv1d_18/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_18/BiasAdd/ReadVariableOpReadVariableOp)conv1d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_18/BiasAddBiasAdd!conv1d_18/Conv1D/Squeeze:output:0(conv1d_18/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_18/ReluReluconv1d_18/BiasAdd:output:0*
T0*+
_output_shapes
:���������a
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"����f  �
flatten_36/ReshapeReshapeconv1d_18/Relu:activations:0flatten_36/Const:output:0*
T0*(
_output_shapes
:����������\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_18/concatConcatV2flatten_36/Reshape:output:0inputs_1#concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������a
flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_37/ReshapeReshapeconcatenate_18/concat:output:0flatten_37/Const:output:0*
T0*(
_output_shapes
:�����������
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_36/MatMulMatMulflatten_37/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	�n*
dtype0�
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n�
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������nb
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:���������n�
 regression/MatMul/ReadVariableOpReadVariableOp)regression_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
regression/MatMulMatMuldense_37/Relu:activations:0(regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!regression/BiasAdd/ReadVariableOpReadVariableOp*regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
regression/BiasAddBiasAddregression/MatMul:product:0)regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
regression/ReluReluregression/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
IdentityIdentityregression/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv1d_18/BiasAdd/ReadVariableOp-^conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp"^regression/BiasAdd/ReadVariableOp!^regression/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::���������:���������.: : : : : : : : 2D
 conv1d_18/BiasAdd/ReadVariableOp conv1d_18/BiasAdd/ReadVariableOp2\
,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_18/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2F
!regression/BiasAdd/ReadVariableOp!regression/BiasAdd/ReadVariableOp2D
 regression/MatMul/ReadVariableOp regression/MatMul/ReadVariableOp:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������.
"
_user_specified_name
inputs/1
�

�
G__inference_regression_layer_call_and_return_conditional_losses_1781008

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
*__inference_dense_37_layer_call_fn_1781494

inputs
unknown:	�n
	unknown_0:n
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_1780991o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
=
input_371
serving_default_input_37:0���������.
A
input_385
serving_default_input_38:0���������>

regression0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
�

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
�

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem~m-m�.m�5m�6m�=m�>m�v�v�-v�.v�5v�6v�=v�>v�"
	optimizer
X
0
1
-2
.3
54
65
=6
>7"
trackable_list_wrapper
X
0
1
-2
.3
54
65
=6
>7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
Oserving_default"
signature_map
�2�
*__inference_model_18_layer_call_fn_1781034
*__inference_model_18_layer_call_fn_1781295
*__inference_model_18_layer_call_fn_1781317
*__inference_model_18_layer_call_fn_1781187�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_model_18_layer_call_and_return_conditional_losses_1781361
E__inference_model_18_layer_call_and_return_conditional_losses_1781405
E__inference_model_18_layer_call_and_return_conditional_losses_1781215
E__inference_model_18_layer_call_and_return_conditional_losses_1781243�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1780907input_38input_37"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
&:$2conv1d_18/kernel
:2conv1d_18/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_conv1d_18_layer_call_fn_1781414�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1781430�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_flatten_36_layer_call_fn_1781435�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_flatten_36_layer_call_and_return_conditional_losses_1781441�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�2�
0__inference_concatenate_18_layer_call_fn_1781447�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1781454�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_flatten_37_layer_call_fn_1781459�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_flatten_37_layer_call_and_return_conditional_losses_1781465�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
#:!
��2dense_36/kernel
:�2dense_36/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_36_layer_call_fn_1781474�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_36_layer_call_and_return_conditional_losses_1781485�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
": 	�n2dense_37/kernel
:n2dense_37/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_37_layer_call_fn_1781494�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_37_layer_call_and_return_conditional_losses_1781505�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
#:!n2regression/kernel
:2regression/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_regression_layer_call_fn_1781514�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_regression_layer_call_and_return_conditional_losses_1781525�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_signature_wrapper_1781273input_37input_38"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
N
	utotal
	vcount
w	variables
x	keras_api"
_tf_keras_metric
^
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
u0
v1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
y0
z1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
+:)2Adam/conv1d_18/kernel/m
!:2Adam/conv1d_18/bias/m
(:&
��2Adam/dense_36/kernel/m
!:�2Adam/dense_36/bias/m
':%	�n2Adam/dense_37/kernel/m
 :n2Adam/dense_37/bias/m
(:&n2Adam/regression/kernel/m
": 2Adam/regression/bias/m
+:)2Adam/conv1d_18/kernel/v
!:2Adam/conv1d_18/bias/v
(:&
��2Adam/dense_36/kernel/v
!:�2Adam/dense_36/bias/v
':%	�n2Adam/dense_37/kernel/v
 :n2Adam/dense_37/bias/v
(:&n2Adam/regression/kernel/v
": 2Adam/regression/bias/v�
"__inference__wrapped_model_1780907�-.56=>^�[
T�Q
O�L
&�#
input_38���������
"�
input_37���������.
� "7�4
2

regression$�!

regression����������
K__inference_concatenate_18_layer_call_and_return_conditional_losses_1781454�[�X
Q�N
L�I
#� 
inputs/0����������
"�
inputs/1���������.
� "&�#
�
0����������
� �
0__inference_concatenate_18_layer_call_fn_1781447x[�X
Q�N
L�I
#� 
inputs/0����������
"�
inputs/1���������.
� "������������
F__inference_conv1d_18_layer_call_and_return_conditional_losses_1781430d3�0
)�&
$�!
inputs���������
� ")�&
�
0���������
� �
+__inference_conv1d_18_layer_call_fn_1781414W3�0
)�&
$�!
inputs���������
� "�����������
E__inference_dense_36_layer_call_and_return_conditional_losses_1781485^-.0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
*__inference_dense_36_layer_call_fn_1781474Q-.0�-
&�#
!�
inputs����������
� "������������
E__inference_dense_37_layer_call_and_return_conditional_losses_1781505]560�-
&�#
!�
inputs����������
� "%�"
�
0���������n
� ~
*__inference_dense_37_layer_call_fn_1781494P560�-
&�#
!�
inputs����������
� "����������n�
G__inference_flatten_36_layer_call_and_return_conditional_losses_1781441]3�0
)�&
$�!
inputs���������
� "&�#
�
0����������
� �
,__inference_flatten_36_layer_call_fn_1781435P3�0
)�&
$�!
inputs���������
� "������������
G__inference_flatten_37_layer_call_and_return_conditional_losses_1781465Z0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� }
,__inference_flatten_37_layer_call_fn_1781459M0�-
&�#
!�
inputs����������
� "������������
E__inference_model_18_layer_call_and_return_conditional_losses_1781215�-.56=>f�c
\�Y
O�L
&�#
input_38���������
"�
input_37���������.
p 

 
� "%�"
�
0���������
� �
E__inference_model_18_layer_call_and_return_conditional_losses_1781243�-.56=>f�c
\�Y
O�L
&�#
input_38���������
"�
input_37���������.
p

 
� "%�"
�
0���������
� �
E__inference_model_18_layer_call_and_return_conditional_losses_1781361�-.56=>f�c
\�Y
O�L
&�#
inputs/0���������
"�
inputs/1���������.
p 

 
� "%�"
�
0���������
� �
E__inference_model_18_layer_call_and_return_conditional_losses_1781405�-.56=>f�c
\�Y
O�L
&�#
inputs/0���������
"�
inputs/1���������.
p

 
� "%�"
�
0���������
� �
*__inference_model_18_layer_call_fn_1781034�-.56=>f�c
\�Y
O�L
&�#
input_38���������
"�
input_37���������.
p 

 
� "�����������
*__inference_model_18_layer_call_fn_1781187�-.56=>f�c
\�Y
O�L
&�#
input_38���������
"�
input_37���������.
p

 
� "�����������
*__inference_model_18_layer_call_fn_1781295�-.56=>f�c
\�Y
O�L
&�#
inputs/0���������
"�
inputs/1���������.
p 

 
� "�����������
*__inference_model_18_layer_call_fn_1781317�-.56=>f�c
\�Y
O�L
&�#
inputs/0���������
"�
inputs/1���������.
p

 
� "�����������
G__inference_regression_layer_call_and_return_conditional_losses_1781525\=>/�,
%�"
 �
inputs���������n
� "%�"
�
0���������
� 
,__inference_regression_layer_call_fn_1781514O=>/�,
%�"
 �
inputs���������n
� "�����������
%__inference_signature_wrapper_1781273�-.56=>q�n
� 
g�d
.
input_37"�
input_37���������.
2
input_38&�#
input_38���������"7�4
2

regression$�!

regression���������