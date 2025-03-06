@tool
class_name GDPTHelper_HSlider extends Control

### Summary ######################################################
#
# + 2024.09.18 by R
#
# @tool 옵션을 켜고 @export title : String에 set property를 사용하는 경우 애매하게 작동한다.
# 현 시점에서 자식 Label에 editor 단계에서 정상적으로 값을 전해줄 방법이 없다.
#
# editor의 scene tree에서 이 타입 노드를 선택하고 "편집할 수 있는 자식" 옵션을 활성화 하면 자식노드에 접근 가능하다.
# 그 방법으로 Title Label의 text를 변경해라.
#
##################################################################



### Export #######################################################
@export var hslider : HSlider
@export var title_label : Label
@export var title_text : String:
	set( value ):
		title_text = value
		if title_label:
			title_label.set_text( value )

@export var min_value : float:
	set( _value ):
		if hslider:
			hslider.min_value = _value
	get():
		if hslider:
			return hslider.min_value
		else:
			return 0

@export var max_value : float:
	set( _value ):
		if hslider:
			hslider.max_value = _value
	get():
		if hslider:
			return hslider.max_value
		else:
			return 0

@export var step : float:
	set( _value ):
		if hslider:
			hslider.step = _value
	get():
		if hslider:
			return hslider.step
		else:
			return 0

@export var value : float:
	set( _value ):
		if hslider:
			hslider.value = _value
	get():
		if hslider:
			return hslider.value
		else:
			return 0

signal value_changed



### Node : Override ##############################################
func _ready()->void:
	_on_h_slider_value_changed( hslider.value )
	


### Interface ####################################################
func set_name_label( _text : String )->void:
	$Title.text = _text



### Signal : Receiver ############################################
func _on_h_slider_value_changed(value: float) -> void:
	value_changed.emit( value )
	$Value.text = str( value )
