ü
ü)ß)
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
ė
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ī
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.5.02
b'unknown'ŅŹ
~
PlaceholderPlaceholder*/
_output_shapes
:’’’’’’’’’*
dtype0*$
shape:’’’’’’’’’
p
Placeholder_1Placeholder*'
_output_shapes
:’’’’’’’’’
*
dtype0*
shape:’’’’’’’’’

R
Placeholder_2Placeholder*
_output_shapes
:*
dtype0*
shape:
[
global_step/initial_valueConst*
value	B : *
_output_shapes
: *
dtype0
o
global_step
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
®
global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0*
_output_shapes
: *
_class
loc:@global_step
s
layer1/random_normal/shapeConst*%
valueB"             *
_output_shapes
:*
dtype0
^
layer1/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
`
layer1/random_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
“
)layer1/random_normal/RandomStandardNormalRandomStandardNormallayer1/random_normal/shape*
T0*&
_output_shapes
: *
dtype0*
seed2 *

seed 

layer1/random_normal/mulMul)layer1/random_normal/RandomStandardNormallayer1/random_normal/stddev*
T0*&
_output_shapes
: 

layer1/random_normalAddlayer1/random_normal/mullayer1/random_normal/mean*
T0*&
_output_shapes
: 

layer1/Variable
VariableV2*&
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
Å
layer1/Variable/AssignAssignlayer1/Variablelayer1/random_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable

layer1/Variable/readIdentitylayer1/Variable*
T0*&
_output_shapes
: *"
_class
loc:@layer1/Variable
ā
layer1/Conv2DConv2DPlaceholderlayer1/Variable/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’ *
use_cudnn_on_gpu(
\
layer1/ReluRelulayer1/Conv2D*
T0*/
_output_shapes
:’’’’’’’’’ 
²
layer1/MaxPoolMaxPoollayer1/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’ 
s
layer2/random_normal/shapeConst*%
valueB"          @   *
_output_shapes
:*
dtype0
^
layer2/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
`
layer2/random_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
“
)layer2/random_normal/RandomStandardNormalRandomStandardNormallayer2/random_normal/shape*
T0*&
_output_shapes
: @*
dtype0*
seed2 *

seed 

layer2/random_normal/mulMul)layer2/random_normal/RandomStandardNormallayer2/random_normal/stddev*
T0*&
_output_shapes
: @

layer2/random_normalAddlayer2/random_normal/mullayer2/random_normal/mean*
T0*&
_output_shapes
: @

layer2/Variable
VariableV2*&
_output_shapes
: @*
dtype0*
shared_name *
	container *
shape: @
Å
layer2/Variable/AssignAssignlayer2/Variablelayer2/random_normal*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable

layer2/Variable/readIdentitylayer2/Variable*
T0*&
_output_shapes
: @*"
_class
loc:@layer2/Variable
å
layer2/Conv2DConv2Dlayer1/MaxPoollayer2/Variable/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
use_cudnn_on_gpu(
\
layer2/ReluRelulayer2/Conv2D*
T0*/
_output_shapes
:’’’’’’’’’@
²
layer2/MaxPoolMaxPoollayer2/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’@
j
full1/random_normal/shapeConst*
valueB"@     *
_output_shapes
:*
dtype0
]
full1/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
_
full1/random_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
¬
(full1/random_normal/RandomStandardNormalRandomStandardNormalfull1/random_normal/shape*
T0* 
_output_shapes
:
Ą*
dtype0*
seed2 *

seed 

full1/random_normal/mulMul(full1/random_normal/RandomStandardNormalfull1/random_normal/stddev*
T0* 
_output_shapes
:
Ą
x
full1/random_normalAddfull1/random_normal/mulfull1/random_normal/mean*
T0* 
_output_shapes
:
Ą

full1/Variable
VariableV2* 
_output_shapes
:
Ą*
dtype0*
shared_name *
	container *
shape:
Ą
»
full1/Variable/AssignAssignfull1/Variablefull1/random_normal*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable
}
full1/Variable/readIdentityfull1/Variable*
T0* 
_output_shapes
:
Ą*!
_class
loc:@full1/Variable
d
full1/Reshape/shapeConst*
valueB"’’’’@  *
_output_shapes
:*
dtype0
~
full1/ReshapeReshapelayer2/MaxPoolfull1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:’’’’’’’’’Ą

full1/MatMulMatMulfull1/Reshapefull1/Variable/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’
S

full1/ReluRelufull1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’
]
full1/dropout/ShapeShape
full1/Relu*
out_type0*
T0*
_output_shapes
:
e
 full1/dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
e
 full1/dropout/random_uniform/maxConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
©
*full1/dropout/random_uniform/RandomUniformRandomUniformfull1/dropout/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0*
seed2 *

seed 

 full1/dropout/random_uniform/subSub full1/dropout/random_uniform/max full1/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ø
 full1/dropout/random_uniform/mulMul*full1/dropout/random_uniform/RandomUniform full1/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’

full1/dropout/random_uniformAdd full1/dropout/random_uniform/mul full1/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
h
full1/dropout/addAddPlaceholder_2full1/dropout/random_uniform*
T0*
_output_shapes
:
R
full1/dropout/FloorFloorfull1/dropout/add*
T0*
_output_shapes
:
Z
full1/dropout/divRealDiv
full1/ReluPlaceholder_2*
T0*
_output_shapes
:
s
full1/dropout/mulMulfull1/dropout/divfull1/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
j
full2/random_normal/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
]
full2/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
_
full2/random_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
«
(full2/random_normal/RandomStandardNormalRandomStandardNormalfull2/random_normal/shape*
T0*
_output_shapes
:	
*
dtype0*
seed2 *

seed 

full2/random_normal/mulMul(full2/random_normal/RandomStandardNormalfull2/random_normal/stddev*
T0*
_output_shapes
:	

w
full2/random_normalAddfull2/random_normal/mulfull2/random_normal/mean*
T0*
_output_shapes
:	


full2/Variable
VariableV2*
_output_shapes
:	
*
dtype0*
shared_name *
	container *
shape:	

ŗ
full2/Variable/AssignAssignfull2/Variablefull2/random_normal*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable
|
full2/Variable/readIdentityfull2/Variable*
T0*
_output_shapes
:	
*!
_class
loc:@full2/Variable

full2/MatMulMatMulfull1/dropout/mulfull2/Variable/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’


Coptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientPlaceholder_1*
T0*'
_output_shapes
:’’’’’’’’’

u
3optimizer/softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
_output_shapes
: *
dtype0

4optimizer/softmax_cross_entropy_with_logits_sg/ShapeShapefull2/MatMul*
out_type0*
T0*
_output_shapes
:
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
_output_shapes
: *
dtype0

6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1Shapefull2/MatMul*
out_type0*
T0*
_output_shapes
:
v
4optimizer/softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
_output_shapes
: *
dtype0
Ē
2optimizer/softmax_cross_entropy_with_logits_sg/SubSub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_14optimizer/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
°
:optimizer/softmax_cross_entropy_with_logits_sg/Slice/beginPack2optimizer/softmax_cross_entropy_with_logits_sg/Sub*

axis *
T0*
N*
_output_shapes
:

9optimizer/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0

4optimizer/softmax_cross_entropy_with_logits_sg/SliceSlice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1:optimizer/softmax_cross_entropy_with_logits_sg/Slice/begin9optimizer/softmax_cross_entropy_with_logits_sg/Slice/size*
Index0*
T0*
_output_shapes
:

>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
’’’’’’’’’*
_output_shapes
:*
dtype0
|
:optimizer/softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
­
5optimizer/softmax_cross_entropy_with_logits_sg/concatConcatV2>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_04optimizer/softmax_cross_entropy_with_logits_sg/Slice:optimizer/softmax_cross_entropy_with_logits_sg/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ļ
6optimizer/softmax_cross_entropy_with_logits_sg/ReshapeReshapefull2/MatMul5optimizer/softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
_output_shapes
: *
dtype0
¹
6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2ShapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
out_type0*
T0*
_output_shapes
:
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
_output_shapes
: *
dtype0
Ė
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1Sub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_26optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
“
<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1*

axis *
T0*
N*
_output_shapes
:

;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
¤
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_1Slice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:

@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
’’’’’’’’’*
_output_shapes
:*
dtype0
~
<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
µ
7optimizer/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_06optimizer/softmax_cross_entropy_with_logits_sg/Slice_1<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1ReshapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient7optimizer/softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

.optimizer/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits6optimizer/softmax_cross_entropy_with_logits_sg/Reshape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’’’’’’’’’’
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
_output_shapes
: *
dtype0
É
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2Sub3optimizer/softmax_cross_entropy_with_logits_sg/Rank6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 

<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
_output_shapes
:*
dtype0
³
;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2*

axis *
T0*
N*
_output_shapes
:
«
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2Slice4optimizer/softmax_cross_entropy_with_logits_sg/Shape<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/size*
Index0*
T0*#
_output_shapes
:’’’’’’’’’
ē
8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape.optimizer/softmax_cross_entropy_with_logits_sg6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Y
optimizer/ConstConst*
valueB: *
_output_shapes
:*
dtype0

optimizer/MeanMean8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2optimizer/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
\
optimizer/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
{
optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
T0*
_output_shapes
: 

5optimizer/gradients/optimizer/Mean_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
¾
/optimizer/gradients/optimizer/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill5optimizer/gradients/optimizer/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
„
-optimizer/gradients/optimizer/Mean_grad/ShapeShape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
out_type0*
T0*
_output_shapes
:
Ō
,optimizer/gradients/optimizer/Mean_grad/TileTile/optimizer/gradients/optimizer/Mean_grad/Reshape-optimizer/gradients/optimizer/Mean_grad/Shape*
T0*#
_output_shapes
:’’’’’’’’’*

Tmultiples0
§
/optimizer/gradients/optimizer/Mean_grad/Shape_1Shape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
out_type0*
T0*
_output_shapes
:
r
/optimizer/gradients/optimizer/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
w
-optimizer/gradients/optimizer/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Ņ
,optimizer/gradients/optimizer/Mean_grad/ProdProd/optimizer/gradients/optimizer/Mean_grad/Shape_1-optimizer/gradients/optimizer/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
y
/optimizer/gradients/optimizer/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
Ö
.optimizer/gradients/optimizer/Mean_grad/Prod_1Prod/optimizer/gradients/optimizer/Mean_grad/Shape_2/optimizer/gradients/optimizer/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
s
1optimizer/gradients/optimizer/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
¾
/optimizer/gradients/optimizer/Mean_grad/MaximumMaximum.optimizer/gradients/optimizer/Mean_grad/Prod_11optimizer/gradients/optimizer/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
¼
0optimizer/gradients/optimizer/Mean_grad/floordivFloorDiv,optimizer/gradients/optimizer/Mean_grad/Prod/optimizer/gradients/optimizer/Mean_grad/Maximum*
T0*
_output_shapes
: 

,optimizer/gradients/optimizer/Mean_grad/CastCast0optimizer/gradients/optimizer/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
Ä
/optimizer/gradients/optimizer/Mean_grad/truedivRealDiv,optimizer/gradients/optimizer/Mean_grad/Tile,optimizer/gradients/optimizer/Mean_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’
Å
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape.optimizer/softmax_cross_entropy_with_logits_sg*
out_type0*
T0*
_output_shapes
:
Ŗ
Yoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshape/optimizer/gradients/optimizer/Mean_grad/truedivWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’

optimizer/gradients/zeros_like	ZerosLike0optimizer/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
”
Voptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
Ń
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeVoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:’’’’’’’’’

Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulMulRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims0optimizer/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ó
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax6optimizer/softmax_cross_entropy_with_logits_sg/Reshape*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
į
Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/NegNegRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
£
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
Õ
Toptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeXoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:’’’’’’’’’
²
Moptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1MulToptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ž
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOpL^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulN^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1
Æ
`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentityKoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulY^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*^
_classT
RPloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul
µ
boptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1IdentityMoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1Y^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*`
_classV
TRloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1
”
Uoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapefull2/MatMul*
out_type0*
T0*
_output_shapes
:
Ū
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshape`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyUoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

ż
,optimizer/gradients/full2/MatMul_grad/MatMulMatMulWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshapefull2/Variable/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’
ō
.optimizer/gradients/full2/MatMul_grad/MatMul_1MatMulfull1/dropout/mulWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	


6optimizer/gradients/full2/MatMul_grad/tuple/group_depsNoOp-^optimizer/gradients/full2/MatMul_grad/MatMul/^optimizer/gradients/full2/MatMul_grad/MatMul_1
„
>optimizer/gradients/full2/MatMul_grad/tuple/control_dependencyIdentity,optimizer/gradients/full2/MatMul_grad/MatMul7^optimizer/gradients/full2/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:’’’’’’’’’*?
_class5
31loc:@optimizer/gradients/full2/MatMul_grad/MatMul
¢
@optimizer/gradients/full2/MatMul_grad/tuple/control_dependency_1Identity.optimizer/gradients/full2/MatMul_grad/MatMul_17^optimizer/gradients/full2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	
*A
_class7
53loc:@optimizer/gradients/full2/MatMul_grad/MatMul_1

0optimizer/gradients/full1/dropout/mul_grad/ShapeShapefull1/dropout/div*
out_type0*
T0*#
_output_shapes
:’’’’’’’’’

2optimizer/gradients/full1/dropout/mul_grad/Shape_1Shapefull1/dropout/Floor*
out_type0*
T0*#
_output_shapes
:’’’’’’’’’
ü
@optimizer/gradients/full1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0optimizer/gradients/full1/dropout/mul_grad/Shape2optimizer/gradients/full1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
­
.optimizer/gradients/full1/dropout/mul_grad/mulMul>optimizer/gradients/full2/MatMul_grad/tuple/control_dependencyfull1/dropout/Floor*
T0*
_output_shapes
:
ē
.optimizer/gradients/full1/dropout/mul_grad/SumSum.optimizer/gradients/full1/dropout/mul_grad/mul@optimizer/gradients/full1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Š
2optimizer/gradients/full1/dropout/mul_grad/ReshapeReshape.optimizer/gradients/full1/dropout/mul_grad/Sum0optimizer/gradients/full1/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
­
0optimizer/gradients/full1/dropout/mul_grad/mul_1Mulfull1/dropout/div>optimizer/gradients/full2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ķ
0optimizer/gradients/full1/dropout/mul_grad/Sum_1Sum0optimizer/gradients/full1/dropout/mul_grad/mul_1Boptimizer/gradients/full1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ö
4optimizer/gradients/full1/dropout/mul_grad/Reshape_1Reshape0optimizer/gradients/full1/dropout/mul_grad/Sum_12optimizer/gradients/full1/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Æ
;optimizer/gradients/full1/dropout/mul_grad/tuple/group_depsNoOp3^optimizer/gradients/full1/dropout/mul_grad/Reshape5^optimizer/gradients/full1/dropout/mul_grad/Reshape_1
«
Coptimizer/gradients/full1/dropout/mul_grad/tuple/control_dependencyIdentity2optimizer/gradients/full1/dropout/mul_grad/Reshape<^optimizer/gradients/full1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*E
_class;
97loc:@optimizer/gradients/full1/dropout/mul_grad/Reshape
±
Eoptimizer/gradients/full1/dropout/mul_grad/tuple/control_dependency_1Identity4optimizer/gradients/full1/dropout/mul_grad/Reshape_1<^optimizer/gradients/full1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*G
_class=
;9loc:@optimizer/gradients/full1/dropout/mul_grad/Reshape_1
z
0optimizer/gradients/full1/dropout/div_grad/ShapeShape
full1/Relu*
out_type0*
T0*
_output_shapes
:

2optimizer/gradients/full1/dropout/div_grad/Shape_1ShapePlaceholder_2*
out_type0*
T0*#
_output_shapes
:’’’’’’’’’
ü
@optimizer/gradients/full1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs0optimizer/gradients/full1/dropout/div_grad/Shape2optimizer/gradients/full1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
“
2optimizer/gradients/full1/dropout/div_grad/RealDivRealDivCoptimizer/gradients/full1/dropout/mul_grad/tuple/control_dependencyPlaceholder_2*
T0*
_output_shapes
:
ė
.optimizer/gradients/full1/dropout/div_grad/SumSum2optimizer/gradients/full1/dropout/div_grad/RealDiv@optimizer/gradients/full1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ą
2optimizer/gradients/full1/dropout/div_grad/ReshapeReshape.optimizer/gradients/full1/dropout/div_grad/Sum0optimizer/gradients/full1/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:’’’’’’’’’
t
.optimizer/gradients/full1/dropout/div_grad/NegNeg
full1/Relu*
T0*(
_output_shapes
:’’’’’’’’’
”
4optimizer/gradients/full1/dropout/div_grad/RealDiv_1RealDiv.optimizer/gradients/full1/dropout/div_grad/NegPlaceholder_2*
T0*
_output_shapes
:
§
4optimizer/gradients/full1/dropout/div_grad/RealDiv_2RealDiv4optimizer/gradients/full1/dropout/div_grad/RealDiv_1Placeholder_2*
T0*
_output_shapes
:
Ó
.optimizer/gradients/full1/dropout/div_grad/mulMulCoptimizer/gradients/full1/dropout/mul_grad/tuple/control_dependency4optimizer/gradients/full1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ė
0optimizer/gradients/full1/dropout/div_grad/Sum_1Sum.optimizer/gradients/full1/dropout/div_grad/mulBoptimizer/gradients/full1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ö
4optimizer/gradients/full1/dropout/div_grad/Reshape_1Reshape0optimizer/gradients/full1/dropout/div_grad/Sum_12optimizer/gradients/full1/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Æ
;optimizer/gradients/full1/dropout/div_grad/tuple/group_depsNoOp3^optimizer/gradients/full1/dropout/div_grad/Reshape5^optimizer/gradients/full1/dropout/div_grad/Reshape_1
»
Coptimizer/gradients/full1/dropout/div_grad/tuple/control_dependencyIdentity2optimizer/gradients/full1/dropout/div_grad/Reshape<^optimizer/gradients/full1/dropout/div_grad/tuple/group_deps*
T0*(
_output_shapes
:’’’’’’’’’*E
_class;
97loc:@optimizer/gradients/full1/dropout/div_grad/Reshape
±
Eoptimizer/gradients/full1/dropout/div_grad/tuple/control_dependency_1Identity4optimizer/gradients/full1/dropout/div_grad/Reshape_1<^optimizer/gradients/full1/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*G
_class=
;9loc:@optimizer/gradients/full1/dropout/div_grad/Reshape_1
¼
,optimizer/gradients/full1/Relu_grad/ReluGradReluGradCoptimizer/gradients/full1/dropout/div_grad/tuple/control_dependency
full1/Relu*
T0*(
_output_shapes
:’’’’’’’’’
Ņ
,optimizer/gradients/full1/MatMul_grad/MatMulMatMul,optimizer/gradients/full1/Relu_grad/ReluGradfull1/Variable/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’Ą
Ę
.optimizer/gradients/full1/MatMul_grad/MatMul_1MatMulfull1/Reshape,optimizer/gradients/full1/Relu_grad/ReluGrad*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
Ą

6optimizer/gradients/full1/MatMul_grad/tuple/group_depsNoOp-^optimizer/gradients/full1/MatMul_grad/MatMul/^optimizer/gradients/full1/MatMul_grad/MatMul_1
„
>optimizer/gradients/full1/MatMul_grad/tuple/control_dependencyIdentity,optimizer/gradients/full1/MatMul_grad/MatMul7^optimizer/gradients/full1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:’’’’’’’’’Ą*?
_class5
31loc:@optimizer/gradients/full1/MatMul_grad/MatMul
£
@optimizer/gradients/full1/MatMul_grad/tuple/control_dependency_1Identity.optimizer/gradients/full1/MatMul_grad/MatMul_17^optimizer/gradients/full1/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
Ą*A
_class7
53loc:@optimizer/gradients/full1/MatMul_grad/MatMul_1
z
,optimizer/gradients/full1/Reshape_grad/ShapeShapelayer2/MaxPool*
out_type0*
T0*
_output_shapes
:
ļ
.optimizer/gradients/full1/Reshape_grad/ReshapeReshape>optimizer/gradients/full1/MatMul_grad/tuple/control_dependency,optimizer/gradients/full1/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’@

3optimizer/gradients/layer2/MaxPool_grad/MaxPoolGradMaxPoolGradlayer2/Relulayer2/MaxPool.optimizer/gradients/full1/Reshape_grad/Reshape*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’@
µ
-optimizer/gradients/layer2/Relu_grad/ReluGradReluGrad3optimizer/gradients/layer2/MaxPool_grad/MaxPoolGradlayer2/Relu*
T0*/
_output_shapes
:’’’’’’’’’@
”
-optimizer/gradients/layer2/Conv2D_grad/ShapeNShapeNlayer1/MaxPoollayer2/Variable/read*
out_type0*
T0*
N* 
_output_shapes
::

,optimizer/gradients/layer2/Conv2D_grad/ConstConst*%
valueB"          @   *
_output_shapes
:*
dtype0

:optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput-optimizer/gradients/layer2/Conv2D_grad/ShapeNlayer2/Variable/read-optimizer/gradients/layer2/Relu_grad/ReluGrad*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
use_cudnn_on_gpu(
ß
;optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer1/MaxPool,optimizer/gradients/layer2/Conv2D_grad/Const-optimizer/gradients/layer2/Relu_grad/ReluGrad*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: @*
use_cudnn_on_gpu(
ŗ
7optimizer/gradients/layer2/Conv2D_grad/tuple/group_depsNoOp;^optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropInput<^optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropFilter
Ź
?optimizer/gradients/layer2/Conv2D_grad/tuple/control_dependencyIdentity:optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropInput8^optimizer/gradients/layer2/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:’’’’’’’’’ *M
_classC
A?loc:@optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropInput
Å
Aoptimizer/gradients/layer2/Conv2D_grad/tuple/control_dependency_1Identity;optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropFilter8^optimizer/gradients/layer2/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: @*N
_classD
B@loc:@optimizer/gradients/layer2/Conv2D_grad/Conv2DBackpropFilter
¬
3optimizer/gradients/layer1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer1/Relulayer1/MaxPool?optimizer/gradients/layer2/Conv2D_grad/tuple/control_dependency*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:’’’’’’’’’ 
µ
-optimizer/gradients/layer1/Relu_grad/ReluGradReluGrad3optimizer/gradients/layer1/MaxPool_grad/MaxPoolGradlayer1/Relu*
T0*/
_output_shapes
:’’’’’’’’’ 

-optimizer/gradients/layer1/Conv2D_grad/ShapeNShapeNPlaceholderlayer1/Variable/read*
out_type0*
T0*
N* 
_output_shapes
::

,optimizer/gradients/layer1/Conv2D_grad/ConstConst*%
valueB"             *
_output_shapes
:*
dtype0

:optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput-optimizer/gradients/layer1/Conv2D_grad/ShapeNlayer1/Variable/read-optimizer/gradients/layer1/Relu_grad/ReluGrad*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
use_cudnn_on_gpu(
Ü
;optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder,optimizer/gradients/layer1/Conv2D_grad/Const-optimizer/gradients/layer1/Relu_grad/ReluGrad*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: *
use_cudnn_on_gpu(
ŗ
7optimizer/gradients/layer1/Conv2D_grad/tuple/group_depsNoOp;^optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropInput<^optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropFilter
Ź
?optimizer/gradients/layer1/Conv2D_grad/tuple/control_dependencyIdentity:optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropInput8^optimizer/gradients/layer1/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:’’’’’’’’’*M
_classC
A?loc:@optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropInput
Å
Aoptimizer/gradients/layer1/Conv2D_grad/tuple/control_dependency_1Identity;optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropFilter8^optimizer/gradients/layer1/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: *N
_classD
B@loc:@optimizer/gradients/layer1/Conv2D_grad/Conv2DBackpropFilter

#optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0*!
_class
loc:@full1/Variable

optimizer/beta1_power
VariableV2*
shared_name *!
_class
loc:@full1/Variable*
_output_shapes
: *
dtype0*
shape: *
	container 
Ļ
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable

optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*
_output_shapes
: *!
_class
loc:@full1/Variable

#optimizer/beta2_power/initial_valueConst*
valueB
 *w¾?*
_output_shapes
: *
dtype0*!
_class
loc:@full1/Variable

optimizer/beta2_power
VariableV2*
shared_name *!
_class
loc:@full1/Variable*
_output_shapes
: *
dtype0*
shape: *
	container 
Ļ
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable

optimizer/beta2_power/readIdentityoptimizer/beta2_power*
T0*
_output_shapes
: *!
_class
loc:@full1/Variable
Æ
&layer1/Variable/Adam/Initializer/zerosConst*%
valueB *    *&
_output_shapes
: *
dtype0*"
_class
loc:@layer1/Variable
¼
layer1/Variable/Adam
VariableV2*
shared_name *"
_class
loc:@layer1/Variable*&
_output_shapes
: *
dtype0*
shape: *
	container 
į
layer1/Variable/Adam/AssignAssignlayer1/Variable/Adam&layer1/Variable/Adam/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable

layer1/Variable/Adam/readIdentitylayer1/Variable/Adam*
T0*&
_output_shapes
: *"
_class
loc:@layer1/Variable
±
(layer1/Variable/Adam_1/Initializer/zerosConst*%
valueB *    *&
_output_shapes
: *
dtype0*"
_class
loc:@layer1/Variable
¾
layer1/Variable/Adam_1
VariableV2*
shared_name *"
_class
loc:@layer1/Variable*&
_output_shapes
: *
dtype0*
shape: *
	container 
ē
layer1/Variable/Adam_1/AssignAssignlayer1/Variable/Adam_1(layer1/Variable/Adam_1/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable

layer1/Variable/Adam_1/readIdentitylayer1/Variable/Adam_1*
T0*&
_output_shapes
: *"
_class
loc:@layer1/Variable
Æ
&layer2/Variable/Adam/Initializer/zerosConst*%
valueB @*    *&
_output_shapes
: @*
dtype0*"
_class
loc:@layer2/Variable
¼
layer2/Variable/Adam
VariableV2*
shared_name *"
_class
loc:@layer2/Variable*&
_output_shapes
: @*
dtype0*
shape: @*
	container 
į
layer2/Variable/Adam/AssignAssignlayer2/Variable/Adam&layer2/Variable/Adam/Initializer/zeros*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable

layer2/Variable/Adam/readIdentitylayer2/Variable/Adam*
T0*&
_output_shapes
: @*"
_class
loc:@layer2/Variable
±
(layer2/Variable/Adam_1/Initializer/zerosConst*%
valueB @*    *&
_output_shapes
: @*
dtype0*"
_class
loc:@layer2/Variable
¾
layer2/Variable/Adam_1
VariableV2*
shared_name *"
_class
loc:@layer2/Variable*&
_output_shapes
: @*
dtype0*
shape: @*
	container 
ē
layer2/Variable/Adam_1/AssignAssignlayer2/Variable/Adam_1(layer2/Variable/Adam_1/Initializer/zeros*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable

layer2/Variable/Adam_1/readIdentitylayer2/Variable/Adam_1*
T0*&
_output_shapes
: @*"
_class
loc:@layer2/Variable
”
%full1/Variable/Adam/Initializer/zerosConst*
valueB
Ą*    * 
_output_shapes
:
Ą*
dtype0*!
_class
loc:@full1/Variable
®
full1/Variable/Adam
VariableV2*
shared_name *!
_class
loc:@full1/Variable* 
_output_shapes
:
Ą*
dtype0*
shape:
Ą*
	container 
×
full1/Variable/Adam/AssignAssignfull1/Variable/Adam%full1/Variable/Adam/Initializer/zeros*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable

full1/Variable/Adam/readIdentityfull1/Variable/Adam*
T0* 
_output_shapes
:
Ą*!
_class
loc:@full1/Variable
£
'full1/Variable/Adam_1/Initializer/zerosConst*
valueB
Ą*    * 
_output_shapes
:
Ą*
dtype0*!
_class
loc:@full1/Variable
°
full1/Variable/Adam_1
VariableV2*
shared_name *!
_class
loc:@full1/Variable* 
_output_shapes
:
Ą*
dtype0*
shape:
Ą*
	container 
Ż
full1/Variable/Adam_1/AssignAssignfull1/Variable/Adam_1'full1/Variable/Adam_1/Initializer/zeros*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable

full1/Variable/Adam_1/readIdentityfull1/Variable/Adam_1*
T0* 
_output_shapes
:
Ą*!
_class
loc:@full1/Variable

%full2/Variable/Adam/Initializer/zerosConst*
valueB	
*    *
_output_shapes
:	
*
dtype0*!
_class
loc:@full2/Variable
¬
full2/Variable/Adam
VariableV2*
shared_name *!
_class
loc:@full2/Variable*
_output_shapes
:	
*
dtype0*
shape:	
*
	container 
Ö
full2/Variable/Adam/AssignAssignfull2/Variable/Adam%full2/Variable/Adam/Initializer/zeros*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable

full2/Variable/Adam/readIdentityfull2/Variable/Adam*
T0*
_output_shapes
:	
*!
_class
loc:@full2/Variable
”
'full2/Variable/Adam_1/Initializer/zerosConst*
valueB	
*    *
_output_shapes
:	
*
dtype0*!
_class
loc:@full2/Variable
®
full2/Variable/Adam_1
VariableV2*
shared_name *!
_class
loc:@full2/Variable*
_output_shapes
:	
*
dtype0*
shape:	
*
	container 
Ü
full2/Variable/Adam_1/AssignAssignfull2/Variable/Adam_1'full2/Variable/Adam_1/Initializer/zeros*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable

full2/Variable/Adam_1/readIdentityfull2/Variable/Adam_1*
T0*
_output_shapes
:	
*!
_class
loc:@full2/Variable
a
optimizer/Adam/learning_rateConst*
valueB
 *o:*
_output_shapes
: *
dtype0
Y
optimizer/Adam/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
Y
optimizer/Adam/beta2Const*
valueB
 *w¾?*
_output_shapes
: *
dtype0
[
optimizer/Adam/epsilonConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
Ō
/optimizer/Adam/update_layer1/Variable/ApplyAdam	ApplyAdamlayer1/Variablelayer1/Variable/Adamlayer1/Variable/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonAoptimizer/gradients/layer1/Conv2D_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: *
use_locking( *
use_nesterov( *"
_class
loc:@layer1/Variable
Ō
/optimizer/Adam/update_layer2/Variable/ApplyAdam	ApplyAdamlayer2/Variablelayer2/Variable/Adamlayer2/Variable/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonAoptimizer/gradients/layer2/Conv2D_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: @*
use_locking( *
use_nesterov( *"
_class
loc:@layer2/Variable
Č
.optimizer/Adam/update_full1/Variable/ApplyAdam	ApplyAdamfull1/Variablefull1/Variable/Adamfull1/Variable/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon@optimizer/gradients/full1/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
Ą*
use_locking( *
use_nesterov( *!
_class
loc:@full1/Variable
Ē
.optimizer/Adam/update_full2/Variable/ApplyAdam	ApplyAdamfull2/Variablefull2/Variable/Adamfull2/Variable/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon@optimizer/gradients/full2/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
*
use_locking( *
use_nesterov( *!
_class
loc:@full2/Variable
Õ
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta10^optimizer/Adam/update_layer1/Variable/ApplyAdam0^optimizer/Adam/update_layer2/Variable/ApplyAdam/^optimizer/Adam/update_full1/Variable/ApplyAdam/^optimizer/Adam/update_full2/Variable/ApplyAdam*
T0*
_output_shapes
: *!
_class
loc:@full1/Variable
·
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*!
_class
loc:@full1/Variable
×
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta20^optimizer/Adam/update_layer1/Variable/ApplyAdam0^optimizer/Adam/update_layer2/Variable/ApplyAdam/^optimizer/Adam/update_full1/Variable/ApplyAdam/^optimizer/Adam/update_full2/Variable/ApplyAdam*
T0*
_output_shapes
: *!
_class
loc:@full1/Variable
»
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*!
_class
loc:@full1/Variable

optimizer/AdamNoOp0^optimizer/Adam/update_layer1/Variable/ApplyAdam0^optimizer/Adam/update_layer2/Variable/ApplyAdam/^optimizer/Adam/update_full1/Variable/ApplyAdam/^optimizer/Adam/update_full2/Variable/ApplyAdam^optimizer/Adam/Assign^optimizer/Adam/Assign_1
b
optimizer/cost/tagsConst*
valueB Boptimizer/cost*
_output_shapes
: *
dtype0
e
optimizer/costScalarSummaryoptimizer/cost/tagsoptimizer/Mean*
T0*
_output_shapes
: 
µ
initNoOp^global_step/Assign^layer1/Variable/Assign^layer2/Variable/Assign^full1/Variable/Assign^full2/Variable/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign^layer1/Variable/Adam/Assign^layer1/Variable/Adam_1/Assign^layer2/Variable/Adam/Assign^layer2/Variable/Adam_1/Assign^full1/Variable/Adam/Assign^full1/Variable/Adam_1/Assign^full2/Variable/Adam/Assign^full2/Variable/Adam_1/Assign
R
ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
}
ArgMaxArgMaxfull2/MatMulArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:’’’’’’’’’*

Tidx0
T
ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0

ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*
T0*#
_output_shapes
:’’’’’’’’’*

Tidx0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:’’’’’’’’’
P
CastCastEqual*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

O
ConstConst*
valueB: *
_output_shapes
:*
dtype0
W
MeanMeanCastConst*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_fc35211f2e0d4d77a11be12ccd392677/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
¢
save/SaveV2/tensor_namesConst"/device:CPU:0*Ę
value¼B¹Bfull1/VariableBfull1/Variable/AdamBfull1/Variable/Adam_1Bfull2/VariableBfull2/Variable/AdamBfull2/Variable/Adam_1Bglobal_stepBlayer1/VariableBlayer1/Variable/AdamBlayer1/Variable/Adam_1Blayer2/VariableBlayer2/Variable/AdamBlayer2/Variable/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_power*
_output_shapes
:*
dtype0

save/SaveV2/shape_and_slicesConst"/device:CPU:0*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
Ā
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesfull1/Variablefull1/Variable/Adamfull1/Variable/Adam_1full2/Variablefull2/Variable/Adamfull2/Variable/Adam_1global_steplayer1/Variablelayer1/Variable/Adamlayer1/Variable/Adam_1layer2/Variablelayer2/Variable/Adamlayer2/Variable/Adam_1optimizer/beta1_poweroptimizer/beta2_power"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
r
save/RestoreV2/tensor_namesConst*#
valueBBfull1/Variable*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
¬
save/AssignAssignfull1/Variablesave/RestoreV2*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable
y
save/RestoreV2_1/tensor_namesConst*(
valueBBfull1/Variable/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
µ
save/Assign_1Assignfull1/Variable/Adamsave/RestoreV2_1*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable
{
save/RestoreV2_2/tensor_namesConst**
value!BBfull1/Variable/Adam_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
·
save/Assign_2Assignfull1/Variable/Adam_1save/RestoreV2_2*
T0* 
_output_shapes
:
Ą*
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable
t
save/RestoreV2_3/tensor_namesConst*#
valueBBfull2/Variable*
_output_shapes
:*
dtype0
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Æ
save/Assign_3Assignfull2/Variablesave/RestoreV2_3*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable
y
save/RestoreV2_4/tensor_namesConst*(
valueBBfull2/Variable/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
“
save/Assign_4Assignfull2/Variable/Adamsave/RestoreV2_4*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable
{
save/RestoreV2_5/tensor_namesConst**
value!BBfull2/Variable/Adam_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
¶
save/Assign_5Assignfull2/Variable/Adam_1save/RestoreV2_5*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*!
_class
loc:@full2/Variable
q
save/RestoreV2_6/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_6Assignglobal_stepsave/RestoreV2_6*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
u
save/RestoreV2_7/tensor_namesConst*$
valueBBlayer1/Variable*
_output_shapes
:*
dtype0
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
ø
save/Assign_7Assignlayer1/Variablesave/RestoreV2_7*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable
z
save/RestoreV2_8/tensor_namesConst*)
value BBlayer1/Variable/Adam*
_output_shapes
:*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
½
save/Assign_8Assignlayer1/Variable/Adamsave/RestoreV2_8*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable
|
save/RestoreV2_9/tensor_namesConst*+
value"B Blayer1/Variable/Adam_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
æ
save/Assign_9Assignlayer1/Variable/Adam_1save/RestoreV2_9*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*"
_class
loc:@layer1/Variable
v
save/RestoreV2_10/tensor_namesConst*$
valueBBlayer2/Variable*
_output_shapes
:*
dtype0
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
ŗ
save/Assign_10Assignlayer2/Variablesave/RestoreV2_10*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable
{
save/RestoreV2_11/tensor_namesConst*)
value BBlayer2/Variable/Adam*
_output_shapes
:*
dtype0
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
æ
save/Assign_11Assignlayer2/Variable/Adamsave/RestoreV2_11*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable
}
save/RestoreV2_12/tensor_namesConst*+
value"B Blayer2/Variable/Adam_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Į
save/Assign_12Assignlayer2/Variable/Adam_1save/RestoreV2_12*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*"
_class
loc:@layer2/Variable
|
save/RestoreV2_13/tensor_namesConst**
value!BBoptimizer/beta1_power*
_output_shapes
:*
dtype0
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Æ
save/Assign_13Assignoptimizer/beta1_powersave/RestoreV2_13*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable
|
save/RestoreV2_14/tensor_namesConst**
value!BBoptimizer/beta2_power*
_output_shapes
:*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Æ
save/Assign_14Assignoptimizer/beta2_powersave/RestoreV2_14*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*!
_class
loc:@full1/Variable

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variablesļģ
[
layer1/Variable:0layer1/Variable/Assignlayer1/Variable/read:02layer1/random_normal:0
[
layer2/Variable:0layer2/Variable/Assignlayer2/Variable/read:02layer2/random_normal:0
W
full1/Variable:0full1/Variable/Assignfull1/Variable/read:02full1/random_normal:0
W
full2/Variable:0full2/Variable/Assignfull2/Variable/read:02full2/random_normal:0"
train_op

optimizer/Adam"!
	summaries

optimizer/cost:0"Ó
	variablesÅĀ
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
[
layer1/Variable:0layer1/Variable/Assignlayer1/Variable/read:02layer1/random_normal:0
[
layer2/Variable:0layer2/Variable/Assignlayer2/Variable/read:02layer2/random_normal:0
W
full1/Variable:0full1/Variable/Assignfull1/Variable/read:02full1/random_normal:0
W
full2/Variable:0full2/Variable/Assignfull2/Variable/read:02full2/random_normal:0
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0
|
layer1/Variable/Adam:0layer1/Variable/Adam/Assignlayer1/Variable/Adam/read:02(layer1/Variable/Adam/Initializer/zeros:0

layer1/Variable/Adam_1:0layer1/Variable/Adam_1/Assignlayer1/Variable/Adam_1/read:02*layer1/Variable/Adam_1/Initializer/zeros:0
|
layer2/Variable/Adam:0layer2/Variable/Adam/Assignlayer2/Variable/Adam/read:02(layer2/Variable/Adam/Initializer/zeros:0

layer2/Variable/Adam_1:0layer2/Variable/Adam_1/Assignlayer2/Variable/Adam_1/read:02*layer2/Variable/Adam_1/Initializer/zeros:0
x
full1/Variable/Adam:0full1/Variable/Adam/Assignfull1/Variable/Adam/read:02'full1/Variable/Adam/Initializer/zeros:0

full1/Variable/Adam_1:0full1/Variable/Adam_1/Assignfull1/Variable/Adam_1/read:02)full1/Variable/Adam_1/Initializer/zeros:0
x
full2/Variable/Adam:0full2/Variable/Adam/Assignfull2/Variable/Adam/read:02'full2/Variable/Adam/Initializer/zeros:0

full2/Variable/Adam_1:0full2/Variable/Adam_1/Assignfull2/Variable/Adam_1/read:02)full2/Variable/Adam_1/Initializer/zeros:0*Ć
serving_defaultÆ
$
	keep_prob
Placeholder_2:0
7
x_input,
Placeholder:0’’’’’’’’’2
y_output&
Placeholder_1:0’’’’’’’’’
tensorflow/serving/predict