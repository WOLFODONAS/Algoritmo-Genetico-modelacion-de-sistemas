GDPC                P                                                                         P   res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn0.      �      �'�O����P��!WF�    T   res://.godot/exported/133200997/export-e65ae97bd506bd76d68c2ca08e71d597-intInput.scn      j      �-!���|���K1"�H    ,   res://.godot/global_script_class_cache.cfg  �?             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �Yz=������������       res://.godot/uid_cache.bin  �C      X       /��J��Y�&�g�|s       res://Main.gd   �      �      |��z����3`z?�       res://Main.tscn.remap   p?      a       3 J�M�B�b��}�       res://drawMatrix.gd         �      Q"�Z�z22����-�.�       res://icon.svg   @      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       ��O���BGA�w��       res://intInput.gd   `      �      \H����h�{`3�F       res://intInput.tscn.remap    ?      e       ʕ�3����)�'L�       res://project.binary D      �       ��.�:��8V�g��+                extends Control


var startMatrix:Array[String]
var endMatrix:Array[String]
var sqS:int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_info(_startMatrix:Array[String],_endMatrix:Array[String]) ->void:
	startMatrix = _startMatrix
	endMatrix = _endMatrix
	queue_redraw()

func _draw() -> void:
	for i in startMatrix.size():
		for j in startMatrix[i].length():
			var startPoint = Vector2(j,i)*sqS
			var endPoint = Vector2.ONE*sqS
			var ltSize = int(float(sqS/2.0))
			draw_rect(Rect2(startPoint,endPoint),Color.RED,false,4)
			draw_char(get_theme_default_font(),startPoint+ (endPoint/2),startMatrix[i][j],ltSize)
	var endStartM:int = startMatrix.size()+1
	print(endStartM)
	for i in endMatrix.size():
		for j in endMatrix[i].length():
			var startPoint = (Vector2(j,i+endStartM)*sqS) 
			print(startPoint)
			var endPoint = Vector2.ONE*sqS
			var ltSize = int(float(sqS/2.0))
			draw_rect(Rect2(startPoint,endPoint),Color.LAWN_GREEN,false,4)
			draw_char(get_theme_default_font(),startPoint+ (endPoint/2),endMatrix[i][j],ltSize)




func _on_squere_size_value_changed(val)-> void:
	sqS = val
	if endMatrix != null:
		queue_redraw()
    GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://g1tcikfhteeg"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 extends HBoxContainer
var value:int=0

@export var nameing:String
@export var maxVal:int
@export var minVal:int
@export var step:int =1
signal valueChanged(val:int)
func _ready() -> void:
	_on_value_pressed(0)
func _on_value_pressed(extra_arg_0: int) -> void:
	value += extra_arg_0*step
	if value>maxVal:
		value = maxVal
	if value<minVal:
		value = minVal
	$Label.text = nameing+": %s"%value
	emit_signal("valueChanged",value)
    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://intInput.gd ��������      local://PackedScene_8qj7b 	         PackedScene          	         names "         HBoxContainer    script    nameing    maxVal    minVal    Label    layout_mode    size_flags_horizontal    size_flags_vertical    text    More    Button    Less    _on_value_pressed    pressed    	   variants    
                   Generations    �                          WWWWWW       +       -    ����      node_count             nodes     4   ��������        ����                                              ����                     	                     
   ����         	                        ����         	                conn_count             conns                                                     	             node_paths              editable_instances              version             RSRC      extends Control
var matrix:Array[String]
var x:int #Matrix x size
var y:int #Matriz y size
var p:int #Population
var g:int #Generation
var ga:int #Gasp Amount
var betterMatrix:Array[String]
var betterFitness:int = -1
const  chars = "abcdefghijklmnopqrstuvwxyz"
var sexMode:int
signal  endProsses
@export var matrixLabel:Label
@export var outputLable:RichTextLabel


func _on_button_pressed() -> void:
	betterFitness = -1
	betterMatrix = []
	$VSplitContainer/Panel2/HBoxContainer/VBoxContainer/Control/Button.disabled = true
	await  get_tree().process_frame
	await  get_tree().process_frame
	await  get_tree().process_frame
	matrix.clear()
	matrix.resize(y)
	for i in y:
		var newString = ""
		var pchars = chars.substr(0,x)
		for j in x:
			var theChar = pchars[randi()%pchars.length()]
			newString+=theChar
			pchars = pchars.replace(theChar,"")
		matrix[i] = newString
	matrixLabel.text = "Matrix\n"
	for i in matrix:
		matrixLabel.text+=i+"\n"
	var population:Array[Individual]=[]
	outputLable.clear()
	population.resize(p)
	for i in p:
		population[i] = Individual.new(x,y,_get_random_choromosomes(x*y))
		population[i].evaluete(matrix)
	_live(1,population)

func _live(generation:int,population:Array[Individual]):
	
	population.sort_custom(sort_by_fitness)
	var  bestFitness:int= population[0].fitness
	if bestFitness>betterFitness:
		betterFitness = bestFitness
		betterMatrix = population[0].get_matrix(matrix)
	var  worstFitness:int = population[p-1].fitness
	outputLable.append_text("Generation: [color=blue]%s[/color]\n"%generation)
	outputLable.append_text("Best Fitness: [color=green]%s[/color]\n"%bestFitness)
	outputLable.append_text("Worst Fitness: [color=red]%s[/color]\n"%worstFitness)
	if  generation>=g:
		emit_signal("endProsses")
		outputLable.append_text(str(population[0].chromosomes)+"\n")
		for i in population[0].get_matrix(matrix):
			outputLable.append_text(str(i)+"\n")
		outputLable.scroll_to_line(outputLable.get_line_count())
		return
	var newPopulation:Array[Individual]=[]
	newPopulation.resize(p)
	if sexMode ==1:
		var fsum:int=0
		for i in population:
			fsum+=i.fitness
		var Pi:Array[float]=[]
		Pi.resize(p)
		var pastVal:float=0.0
		var div:float = 1.0/float(population.size())
		for i in p:
			var fit = float(population[i].fitness)
			if fit == 0:
				Pi[i] = div + pastVal
			else:
				Pi[i] = float(population[i].fitness)/fsum +pastVal
			pastVal=Pi[i]
		for i in p:
			var fatherPi:float = randf()
			var motherPi:float = randf()
			var fatherIndx:int=-1
			var motherIndx:int=-1
			for j in p:
				if  fatherPi<Pi[j]:
					fatherIndx=j
					break
			for j in p:
				if  motherPi<Pi[j] and j !=fatherIndx:
					motherIndx=j
					break
			newPopulation[i] = _get_better_kid(population[motherIndx],
									population[fatherIndx])
			
	_live(generation+1,newPopulation)
	
func _get_better_kid(mother:Individual,father:Individual):
	var matrixSize=(x*y)
	var crossLine:int = int(randf() * matrixSize)
	var cA:Array[int]=(mother.chromosomes.slice(0,crossLine) 
						+ father.chromosomes.slice(crossLine,matrixSize))
	var cB:Array[int]=(father.chromosomes.slice(0,crossLine) 
						+ mother.chromosomes.slice(crossLine,matrixSize))
	var randomGenA = int(randf() * matrixSize)
	var randomGenB = int(randf() * matrixSize)
	cA[randomGenA] = int(randf() * ga)
	cB[randomGenB] = int(randf() * ga)
	var son:Individual = Individual.new(x,y,cA)
	var daughter:Individual = Individual.new(x,y,cB)
	son.evaluete(matrix)
	daughter.evaluete(matrix)
	return son if son.fitness>daughter.fitness else daughter


func sort_by_fitness(a:Individual,b:Individual):
	return a.fitness>b.fitness

func _on_generations_value_changed(val: int) -> void:
	g=val


func _on_population_value_changed(val: int) -> void:
	p=val

func _on_x_value_changed(val: int) -> void:
	x=val

func _on_y_value_changed(val: int) -> void:
	y=val


func _on_gasp_amount_value_changed(val) -> void:
	ga = val

func _on_option_button_item_selected(index: int) -> void:
	sexMode = index
	
	$VSplitContainer/Panel2/HBoxContainer/VBoxContainer/Control/Button.disabled = false
func _get_random_choromosomes(sz:int) -> Array[int]:
	var theC:Array[int]=[]
	for i in sz:
		theC.append(int(randf() *(ga+1)))
	return theC

class Individual:
	var chromosomes:Array[int]
	var fitness:int =0
	var x:int
	var y:int
	func _init(_x:int,_y:int,_chromosomes:Array[int]=[]) -> void:
		x = _x
		y = _y
		chromosomes = _chromosomes
	func get_matrix(matrix:Array[String])->Array[String]:
		var trueMatrix:Array[String]=[]
		for i in y:
			var row = ""
			var chars = matrix[i]
			var startPos = i*x
			var chromosomesRow:Array[int] = chromosomes.slice(startPos,startPos+x)
			for j in x:
				row += "_".repeat(chromosomesRow[j])+chars[j]
			trueMatrix.append(row)
		return trueMatrix
	func evaluete(matrix:Array[String]):
		fitness=0
		var trueMatrix:Array[String] = get_matrix(matrix)
		var indx:int=0
		while true:
			var toContinue:bool = false
			var chars:Dictionary ={}
			for i in y:
				if trueMatrix[i].length()<=indx:
					continue
				toContinue=true
				var theChar:String = trueMatrix[i][indx]
				if theChar == "_":
					continue
				if theChar in chars.keys():
					chars[theChar] += 1
					continue
				chars[theChar] =1
			if chars.size()==1:
				var amnt = chars[chars.keys()[0]]
				if amnt >1:
					amnt =int( pow(amnt,2))
				fitness+=amnt
			if !toContinue:
				break
			indx+=1


func _on_end_prosses():
	$Window.popup()
	$Window/Control.set_info(matrix,betterMatrix)
	$VSplitContainer/Panel2/HBoxContainer/VBoxContainer/Control/Button.disabled = false
RSRC                    PackedScene            ��������                                                  VSplitContainer    Panel2    HBoxContainer    ScrollContainer    Label    Panel    RichTextLabel    resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Main.gd ��������   PackedScene    res://intInput.tscn OR?��4e   Script    res://drawMatrix.gd ��������      local://PackedScene_p1ldg �         PackedScene    	      	         names "   H      Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    matrixLabel    outputLable    VSplitContainer    Panel2    size_flags_vertical    Panel    HBoxContainer    VBoxContainer    size_flags_horizontal    Generations    minVal    step    Population    nameing    x    maxVal    y    GaspAmount    OptionButton    item_count 	   selected    popup/item_0/text    popup/item_0/id    popup/item_0/disabled    popup/item_1/text    popup/item_1/id    popup/item_2/text    popup/item_2/id    popup/item_2/disabled    popup/item_3/text    popup/item_3/id    popup/item_3/disabled    Button    anchor_left    anchor_top    offset_left    offset_top    offset_right 	   disabled    text    ScrollContainer    Label    offset_bottom    RichTextLabel    bbcode_enabled    Window 	   position    size    popup_window    ConfirmationDialog    SquereSize    _on_end_prosses    endProsses    _on_generations_value_changed    valueChanged    _on_population_value_changed    _on_x_value_changed    _on_y_value_changed    _on_gasp_amount_value_changed     _on_option_button_item_selected    item_selected    _on_button_pressed    pressed    _on_squere_size_value_changed    	   variants    )                    �?                                                                                 Population    
         X size             Y size       Gasp Amount                    Select the selection mode             Roulette Wheel       Rank       Tournament             ?    ���      �    ��C      Go      ��     �A     �A      Output      �A-       $   -   �  �                �     ��      Square Size             node_count             nodes     }  ��������        ����	                                                @   	  @               
   
   ����                                                        ����                                 ����                                                        ����                           ���                  	      	              ���                  
                          ���                                            ���                                      ���                                      ����                                              !      "      #      $      %      &      '                         ����                           (   (   ����               )      *                  +      ,      -                  .      /                 0   0   ����                           1   1   ����                                        ����                           1   1   ����	            	   )            +      -      2            /                  3   3   ����                           ,   !               4                  9   5   ����   6   "   7   #   8                         ����                                           $              ���:                      )      *                  +   %   ,   &                  '      (      	             conn_count    	         conns     ?           <   ;                     >   =                     >   ?                     >   @                     >   A              	       >   B              
       D   C                     F   E                    >   G                    node_paths              editable_instances              version       
      RSRC       [remap]

path="res://.godot/exported/133200997/export-e65ae97bd506bd76d68c2ca08e71d597-intInput.scn"
           [remap]

path="res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             F�!4��   res://icon.svgOR?��4e   res://intInput.tscn����Q   res://Main.tscn        ECFG      application/config/name4      +   Algoritmo Genético Modelación de sistemas    application/run/main_scene         res://Main.tscn    application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg  #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility            