ěę
Ů¨
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58çÄ
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  C
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   
y
serving_default_inputsPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
{
serving_default_inputs_1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
ö
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsserving_default_inputs_1Const_1Const*
Tin
2	*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_2152

NoOpNoOp
Ő
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bú

created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures* 
* 
* 
* 
* 
* 
 
	capture_0
		capture_1* 


serving_default* 
* 
* 
 
	capture_0
		capture_1* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameConst_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_2179

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_2189ĺś
ę
Ś
map_1_while_cond_1976(
$map_1_while_map_1_while_loop_counter#
map_1_while_map_1_strided_slice
map_1_while_placeholder
map_1_while_placeholder_1(
$map_1_while_less_map_1_strided_slice>
:map_1_while_map_1_while_cond_1976___redundant_placeholder0
map_1_while_identity

map_1/while/LessLessmap_1_while_placeholder$map_1_while_less_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 
map_1/while/Less_1Less$map_1_while_map_1_while_loop_countermap_1_while_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: y
map_1/while/LogicalAnd
LogicalAndmap_1/while/Less_1:z:0map_1/while/Less:z:0"/device:CPU:0*
_output_shapes
: l
map_1/while/IdentityIdentitymap_1/while/LogicalAnd:z:0"/device:CPU:0*
T0
*
_output_shapes
: "5
map_1_while_identitymap_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
°
¨
map_1_while_body_1977(
$map_1_while_map_1_while_loop_counter#
map_1_while_map_1_strided_slice
map_1_while_placeholder
map_1_while_placeholder_1'
#map_1_while_map_1_strided_slice_1_0c
_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0
map_1_while_identity
map_1_while_identity_1
map_1_while_identity_2
map_1_while_identity_3%
!map_1_while_map_1_strided_slice_1a
]map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor
=map_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:Ć
/map_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0map_1_while_placeholderFmap_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0"/device:CPU:0*
_output_shapes
:*
element_dtype0	
map_1/while/CastCast6map_1/while/TensorArrayV2Read/TensorListGetItem:item:0"/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
:Ţ
0map_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_1_while_placeholder_1map_1_while_placeholdermap_1/while/Cast:y:0"/device:CPU:0*
_output_shapes
: *
element_dtype0:éčŇb
map_1/while/add/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :}
map_1/while/addAddV2map_1_while_placeholdermap_1/while/add/y:output:0"/device:CPU:0*
T0*
_output_shapes
: d
map_1/while/add_1/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :
map_1/while/add_1AddV2$map_1_while_map_1_while_loop_countermap_1/while/add_1/y:output:0"/device:CPU:0*
T0*
_output_shapes
: g
map_1/while/IdentityIdentitymap_1/while/add_1:z:0"/device:CPU:0*
T0*
_output_shapes
: s
map_1/while/Identity_1Identitymap_1_while_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: g
map_1/while/Identity_2Identitymap_1/while/add:z:0"/device:CPU:0*
T0*
_output_shapes
: 
map_1/while/Identity_3Identity@map_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"/device:CPU:0*
T0*
_output_shapes
: "5
map_1_while_identitymap_1/while/Identity:output:0"9
map_1_while_identity_1map_1/while/Identity_1:output:0"9
map_1_while_identity_2map_1/while/Identity_2:output:0"9
map_1_while_identity_3map_1/while/Identity_3:output:0"H
!map_1_while_map_1_strided_slice_1#map_1_while_map_1_strided_slice_1_0"Ŕ
]map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ď
F
 __inference__traced_restore_2189
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ł
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
2Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ą

map_while_cond_1920$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice:
6map_while_map_while_cond_1920___redundant_placeholder0
map_while_identity

map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: s
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0"/device:CPU:0*
_output_shapes
: h
map/while/IdentityIdentitymap/while/LogicalAnd:z:0"/device:CPU:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¤

map_while_body_1921$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensors
!map/while/TensorArrayV2Read/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholder*map/while/TensorArrayV2Read/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0 
"map/while/decode_image/DecodeImageDecodeImage4map/while/TensorArrayV2Read/TensorListGetItem:item:0"/device:CPU:0*
_output_shapes
:*
channels{
map/while/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueB"         Ś
map/while/ReshapeReshape*map/while/decode_image/DecodeImage:image:0 map/while/Reshape/shape:output:0"/device:CPU:0*
T0*"
_output_shapes
:}
map/while/CastCastmap/while/Reshape:output:0"/device:CPU:0*

DstT0*

SrcT0*"
_output_shapes
:Ö
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholdermap/while/Cast:y:0"/device:CPU:0*
_output_shapes
: *
element_dtype0:éčŇ`
map/while/add/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :w
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0"/device:CPU:0*
T0*
_output_shapes
: b
map/while/add_1/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0"/device:CPU:0*
T0*
_output_shapes
: c
map/while/IdentityIdentitymap/while/add_1:z:0"/device:CPU:0*
T0*
_output_shapes
: m
map/while/Identity_1Identitymap_while_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: c
map/while/Identity_2Identitymap/while/add:z:0"/device:CPU:0*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"/device:CPU:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ř	

"__inference_signature_wrapper_2152

inputs
inputs_1	
unknown
	unknown_0
identity

identity_1˘StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1unknown	unknown_0*
Tin
2	*
Tout
2*B
_output_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 * 
fR
__inference_pruned_2138w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_1:

_output_shapes
: :

_output_shapes
: 
ˇP
˛
__inference_pruned_2138

inputs
inputs_1	-
)scale_to_0_1_min_and_max_identity_2_input-
)scale_to_0_1_min_and_max_identity_3_input
identity

identity_1g
map/while/loop_counterConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Z
	map/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : {
!map/TensorArrayV2_1/element_shapeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
map/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB: r
map/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:r
map/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:n
map/TensorArrayUnstack/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueB"         e
 scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    W
scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    a
scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB c
 scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB w
-scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¨
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:¤
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = Ś
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = i
map_1/while/loop_counterConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : \
map_1/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : }
#map_1/TensorArrayV2_1/element_shapeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙r
map_1/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB: t
map_1/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:t
map_1/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:
;map_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:
6map_1/TensorArrayV2Stack/TensorListStack/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:Q
inputs_copyIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙|
SqueezeSqueezeinputs_copy:output:0"/device:CPU:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
X
	map/ShapeShapeSqueeze:output:0"/device:CPU:0*
T0*
_output_shapes
:ô
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskŃ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇÝ
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSqueeze:output:0%map/TensorArrayUnstack/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčÖ
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0"/device:CPU:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
map_while_body_1921*
condR
map_while_cond_1920*
output_shapes
: : : : : : á
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0"/device:CPU:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0{
#scale_to_0_1/min_and_max/Identity_2Identity)scale_to_0_1_min_and_max_identity_2_input*
T0*
_output_shapes
: 
scale_to_0_1/min_and_max/sub_1Sub)scale_to_0_1/min_and_max/sub_1/x:output:0,scale_to_0_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: Ś
scale_to_0_1/subSub/map/TensorArrayV2Stack/TensorListStack:tensor:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙t
scale_to_0_1/zeros_like	ZerosLikescale_to_0_1/sub:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙{
#scale_to_0_1/min_and_max/Identity_3Identity)scale_to_0_1_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1/LessLess"scale_to_0_1/min_and_max/sub_1:z:0,scale_to_0_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: `
scale_to_0_1/CastCastscale_to_0_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1/addAddV2scale_to_0_1/zeros_like:y:0scale_to_0_1/Cast:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_0_1/Cast_1Castscale_to_0_1/add:z:0*

DstT0
*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_0_1/sub_1Sub,scale_to_0_1/min_and_max/Identity_3:output:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1/truedivRealDivscale_to_0_1/sub:z:0scale_to_0_1/sub_1:z:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_0_1/SigmoidSigmoid/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
scale_to_0_1/SelectV2SelectV2scale_to_0_1/Cast_1:y:0scale_to_0_1/truediv:z:0scale_to_0_1/Sigmoid:y:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_0_1/mulMulscale_to_0_1/SelectV2:output:0scale_to_0_1/mul/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_0_1/add_1AddV2scale_to_0_1/mul:z:0scale_to_0_1/add_1/y:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙­
-scale_to_0_1/min_and_max/assert_equal_1/EqualEqual'scale_to_0_1/min_and_max/Shape:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: ľ
+scale_to_0_1/min_and_max/assert_equal_1/AllAll1scale_to_0_1/min_and_max/assert_equal_1/Equal:z:06scale_to_0_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: ě
5scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert4scale_to_0_1/min_and_max/assert_equal_1/All:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0'scale_to_0_1/min_and_max/Shape:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 Ś
NoOpNoOp6^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*"
_acd_function_control_output(*&
 _has_manual_control_dependencies(*
_output_shapes
 m
IdentityIdentityscale_to_0_1/add_1:z:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_1_copyIdentityinputs_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
map_1/ShapeShapeinputs_1_copy:output:0"/device:CPU:0*
T0	*
_output_shapes
:ţ
map_1/strided_sliceStridedSlicemap_1/Shape:output:0"map_1/strided_slice/stack:output:0$map_1/strided_slice/stack_1:output:0$map_1/strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask×
map_1/TensorArrayV2_1TensorListReserve,map_1/TensorArrayV2_1/element_shape:output:0map_1/strided_slice:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
-map_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs_1_copy:output:0Dmap_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0	*

shape_type0:éčĐ
map_1/whileStatelessWhile!map_1/while/loop_counter:output:0map_1/strided_slice:output:0map_1/Const:output:0map_1/TensorArrayV2_1:handle:0map_1/strided_slice:output:0=map_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0"/device:CPU:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_1_while_body_1977*!
condR
map_1_while_cond_1976*
output_shapes
: : : : : : ß
(map_1/TensorArrayV2Stack/TensorListStackTensorListStackmap_1/while:output:3?map_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0

Identity_1Identity1map_1/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :- )
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
ŕ
l
__inference__traced_save_2179
file_prefix
savev2_const_2

identity_1˘MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ú
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: "
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ž
serving_default
9
inputs/
serving_default_inputs:0˙˙˙˙˙˙˙˙˙
=
inputs_11
serving_default_inputs_1:0	˙˙˙˙˙˙˙˙˙D
image_xf8
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙<
label_xf0
StatefulPartitionedCall:1˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Â


created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
k
	capture_0
		capture_1B-
__inference_pruned_2138inputsinputs_1z	capture_0z		capture_1
,

serving_default"
signature_map
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant

	capture_0
		capture_1BÍ
"__inference_signature_wrapper_2152inputsinputs_1"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z	capture_0z		capture_1
__inference_pruned_2138ç	t˘q
j˘g
eŞb
/
image&#
inputs_image˙˙˙˙˙˙˙˙˙
/
label&#
inputs_label˙˙˙˙˙˙˙˙˙	
Ş "kŞh
6
image_xf*'
image_xf˙˙˙˙˙˙˙˙˙
.
label_xf"
label_xf˙˙˙˙˙˙˙˙˙
"__inference_signature_wrapper_2152Ü	i˘f
˘ 
_Ş\
*
inputs 
inputs˙˙˙˙˙˙˙˙˙
.
inputs_1"
inputs_1˙˙˙˙˙˙˙˙˙	"kŞh
6
image_xf*'
image_xf˙˙˙˙˙˙˙˙˙
.
label_xf"
label_xf˙˙˙˙˙˙˙˙˙