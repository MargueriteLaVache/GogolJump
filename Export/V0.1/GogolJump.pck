GDPC                �                                                                      !   P   res://.godot/exported/133200997/export-0c6835a2b535eafd02a3b62c0a86d578-main.scn�      "
      Z��*��I��i�,�v�    X   res://.godot/exported/133200997/export-81711f25fe8e8a581ede9f0f73b4c74a-playerbis.scn   pB      V      �d�Q��hV���"�    T   res://.godot/exported/133200997/export-8e63b53a88b650cb9792f8d8b6d332bc-player.scn  P4      S      ����;;���@���t    X   res://.godot/exported/133200997/export-a0f45c0a65a40728a25b0fd281b8e23d-death_zone.scn  �H            �Y=�}��B�Gۼ�D    T   res://.godot/exported/133200997/export-c0dcf93ee7d30a9f75fd11c1a9660783-platform.scn�,      #      7~QgV�ћxE�Ω���    P   res://.godot/exported/133200997/export-d8d6469a583617c36897612f47fd6832-hud.scn �      6      ������r����B	Z    \   res://.godot/exported/133200997/export-f89508cda8b58fb8d0983507640db6bf-moving_platform.scn �%            ����D����/���    ,   res://.godot/global_script_class_cache.cfg  `�             ��Р�8���8~$}P�    H   res://.godot/imported/Gogol_2.png-c97165642c16ab628db522b21b57cdbd.ctex �K      �      &����X��M9�    L   res://.godot/imported/Platform_1.png-4060514b037e3495c2c8f4aa3e5638b3.ctex  �`      Z       ��c�p\���ħaL    L   res://.godot/imported/Platform_2.png-f86aba5090d019e2e2b9e96ac14d2d59.ctex  �a      \       n�s��B�$���ps�uY    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�b      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  @�      �      ��U��yn`��7��y�X       res://Scenes/HUD/hud.gd         �      ]]
�>.�d~a�FA�        res://Scenes/HUD/hud.tscn.remap `�      `       j�䥍�h��`)l�       res://Scenes/Main/main.gd   �      �      Q��=��VS�,���    $   res://Scenes/Main/main.tscn.remap   ��      a       nQ9�Z8�wTa^l    (   res://Scenes/Platform/moving_platform.gd�"            ���wc�s4GEն    0   res://Scenes/Platform/moving_platform.tscn.remap0�      l       	<���LU	I2X��,    $   res://Scenes/Platform/platform.gd   �*      �      gXs�ָ�!���b^�    ,   res://Scenes/Platform/platform.tscn.remap   ��      e       9s�a�~���<�D�        res://Scenes/Player/player.gd   �1      n      Su$A��:�����2/    (   res://Scenes/Player/player.tscn.remap   �      c       	��Z�z�oŰ|��        res://Scenes/Player/playerbis.gd�9      �      ��}��o�A,f���    (   res://Scenes/Player/playerbis.tscn.remap��      f       ��]���!W���W�    $   res://Scenes/death_zone.tscn.remap  �      g       ���_:�T��
+       res://Sprites/Gogol_2.ico   �p      �%      a����j_d�`���[        res://Sprites/Gogol_2.png.import�_      �       a��p�(;�����l    $   res://Sprites/Platform_1.png.import �`      �       �.��GܜK��<#�_    $   res://Sprites/Platform_2.png.import  b      �       v4��$2_��>�?T       res://icon.svg  ��      �      C��=U���^Qu��U3       res://icon.svg.import   �o      �       ]�͉`�Eu<�<�=       res://project.binary�      �      v;���Oo-�N×    extends CanvasLayer

# Notifies `Main` node that the StartButton has been pressed.
signal start_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	await $MessageTimer.timeout
	
	$Message.text = "Gogol Jump"
	$Message.show()
	# Make a one-shot timer and wait for it to finish.
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()
	print("show_game_over")


func update_score(score):
	$ScoreLabel.text = str(score)
	
	


func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()


func _on_message_timer_timeout():
	$Message.hide()
z�uRSRC                    PackedScene            ��������                                            	      resource_local_to_scene    resource_name    device    action    pressed 	   strength    script    events 	   _bundled       Script    res://Scenes/HUD/hud.gd ��������      local://InputEventAction_b2sk5 �         local://Shortcut_dbpri �         local://PackedScene_y5gf5           InputEventAction       ,      start_game       	   Shortcut                                PackedScene          	         names "          HUD    script    CanvasLayer    ScoreLabel    anchors_preset    anchor_left    anchor_right    offset_left    offset_right    offset_bottom    grow_horizontal $   theme_override_font_sizes/font_size    text    horizontal_alignment    vertical_alignment    Label    Message    anchor_top    anchor_bottom    offset_top    grow_vertical    StartButton 	   shortcut    Button    MessageTimer 
   wait_time 	   one_shot    Timer    _on_start_button_pressed    pressed    _on_message_timer_timeout    timeout    	   variants                             ?     ��     �A     �A         F         0                  #�     F�     #C     FB   <         Gogol Jump            �?     ��     �B          #                  Start Game       @            node_count             nodes     w   ��������       ����                            ����                                 	      
                     	      	                     ����      
                                             	      
                           	      	                     ����                                                   
                                                ����                         conn_count             conns                                                              node_paths              editable_instances              version             RSRCЁr!��v��extends Node


@export var platform_scene: PackedScene
# @export var ground_scene: PackedScene
@export var player_scene: PackedScene
var score
var platform_duration = 15.0


# Called when the node enters the scene tree for the first time.
func _ready():
	$Ground.hide()
	pass
	# new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_down"):	# This is just a test.
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("ui_up"):
		new_game()


func new_game():
	# Resetting the values for a new game.
	score = 0
	platform_duration = 15.0
	$PlatformTimer.wait_time = 3.0
	var player = player_scene.instantiate()
	player.start($StartPosition.position)
	$Ground.start($GroundPosition.position)
	player.show()
	$PlatformTimer.start()
	$MetaGameTimer.start()
	$Ground.show()
	$Ground.disabled = false
	player.connect("on_moving_platform", _on_player_on_moving_platform)
	add_child(player)
	
	$HUD.update_score(score)
	$HUD.show_message("Press Space \nto start jumping")


func game_over():
	$HUD.show_game_over()
	$PlatformTimer.stop()
	$MetaGameTimer.stop()
	get_tree().call_group("moving_platforms", "queue_free")
	# $Player.hide()
	# get_tree().reload_current_scene()



func _on_platform_timer_timeout():
	print("platform_timer_timeout")
	# Create a new instance of the Platform scene.
	var platform = platform_scene.instantiate()
	platform.duration = platform_duration
	print(platform.duration)
	
	# Choose a random location on Path2D.
	var platform_spawn_location = get_node("PlatformSpawnPath/PlatformSpawnLocation")
	platform_spawn_location.progress_ratio = randi()
	
	# Set the platform's direction perpendicular to the path direction.
	var direction = platform_spawn_location.rotation + PI / 2
	
	# Set the platform's position to a random location.
	# print(platform_spawn_location.position)
	platform.position = platform_spawn_location.position	# I don't understand why this doesn't spawn 
	# on the correct location. It does now, and I know why (the platform wasn't centered in the platform scene).
	
	# Add some randomness the direction.
	# direction += randf_range(-PI / 4, PI / 4)
	# platform.rotation = direction
	
	# Choose the velocity for the platform.
	# var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	# platform.linear_velocity = velocity.rotated(direction)
	
	# Spawn the platform by adding it to the Main scene.
	# print(platform.position)
	platform.connect("scored", on_scored)
	add_child(platform)




func _on_death_zone_body_entered(body):	# Triggered when the player enters the death zone 
	# aka exits the screen (bottom)
	if body.is_in_group("player"):
		print("dead : ", score)
		game_over()


func on_scored():
	score += 1
	$HUD.update_score(score)
	

func _on_player_on_moving_platform():	# Connected via code.
	# $Ground.queue_free()
	# $Ground.PROCESS_MODE_DISABLED	# Does not work!
	$Ground.hide()
	$Ground.disabled = true	# Works!

func _on_meta_game_timer_timeout():	# Reduces the delai between two platforms and accelerates 
	# the platforms animations on a fixed timer.
	$PlatformTimer.wait_time -= 0.25
	platform_duration -= 1
	print(platform_duration, " ", $PlatformTimer.wait_time)
�G� 6n�C�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    bake_interval    _data    point_count    script 	   _bundled       Script    res://Scenes/Main/main.gd ��������   PackedScene +   res://Scenes/Platform/moving_platform.tscn �����~   PackedScene #   res://Scenes/Player/playerbis.tscn T?���4   PackedScene $   res://Scenes/Platform/platform.tscn � �L���0   PackedScene    res://Scenes/death_zone.tscn �mґ�$   PackedScene    res://Scenes/HUD/hud.tscn )h<Z-�}      local://Curve2D_vw1py �         local://PackedScene_28o3l          Curve2D                   points %                      -�B  ��                ���C  ��                  PackedScene          	         names "   %      Main    script    platform_scene    player_scene    Node    StartPosition 	   position 	   Marker2D    Ground    scale    falls 
   platforms    PlatformTimer 
   wait_time    Timer    PlatformSpawnPath    curve    Path2D    PlatformSpawnLocation    PathFollow2D 
   WallRight 	   rotation 	   WallLeft    Roof 
   DeathZone    death_zones    MetaGameTimer 
   autostart    GroundPosition    HUD    _on_platform_timer_timeout    timeout    _on_death_zone_body_entered    body_entered    _on_meta_game_timer_timeout 	   new_game    start_game    	   variants                                   
     pC �	D         
     pC  .D
     �@  @@            @@
   ����  �A
   ��?  �?          
   -�B  ��
    ��C  �C   ��?
      A  �?
     ��  �C
     pC  ��
     �@  �?         
     pC �;D     �A                     node_count             nodes     �   ��������       ����                                        ����                     ���               	      
                          ����                           ����      	   	   
                          ����                     ���                     	      
                  ���                     	      
                  ���               	      
                  ���                                   ����                                 ����                     ���                    conn_count             conns                                	       !                  
          "                     $   #                    node_paths              editable_instances              version             RSRCK�фv���P*�+mextends Node2D

signal scored

@export var offset = Vector2(0, 820)
@export var duration = 15.0


# Called when the node enters the scene tree for the first time.
func _ready():
	start_tween()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y == 720:
		queue_free()	# Not working, might be an issue if the platforms overload the engine.
		print("moving_platform_freed")


func start_tween():
	var tween = get_tree().create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	# tween.set_loops().set_parallel(false)
	tween.tween_property($AnimatableBody2D, "position", offset, duration)


func _on_visible_on_screen_notifier_2d_screen_exited():	# This works
	scored.emit()
	queue_free()
	print("moving_platform_freed")
g��!��t�#�j`=RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script )   res://Scenes/Platform/moving_platform.gd ��������
   Texture2D    res://Sprites/Platform_2.png B�U����e      local://RectangleShape2D_0e75j �         local://PackedScene_tqmjm �         RectangleShape2D       
     �B  �A         PackedScene          	         names "         MovingPlatform    script    moving_platforms    Node2D    AnimatableBody2D    VisibleOnScreenNotifier2D 	   Sprite2D    scale    texture    CollisionShape2D    shape    one_way_collision 0   _on_visible_on_screen_notifier_2d_screen_exited    screen_exited    	   variants                 
   ��L>��L>                               node_count             nodes     /   ��������       ����                              ����                       ����                     ����                          	   	   ����   
                      conn_count             conns                                      node_paths              editable_instances              version             RSRC`��#�T��K�extends AnimatableBody2D


@export var falls = true
@export var disabled = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CollisionShape2D.disabled = disabled
	

func start(pos):
	position = pos
	show()


#func _physics_process(delta):
#	if falls:
#		velocity.y = 1
%@��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    animations    script    custom_solver_bias    size 	   _bundled       Script "   res://Scenes/Platform/platform.gd ��������
   Texture2D    res://Sprites/Platform_1.png &��f�P      local://SpriteFrames_ew7sc �         local://RectangleShape2D_m7e10 �         local://PackedScene_l13td �         SpriteFrames                         name ,      idle       speed      �@      loop             frames                   texture             	   duration      �?         RectangleShape2D       
     �B  �A         PackedScene          	         names "   	   	   Platform    script    AnimatableBody2D    AnimatedSprite2D    scale    sprite_frames 
   animation    CollisionShape2D    shape    	   variants                 
   ���>���>          ,      idle                node_count             nodes        ��������       ����                            ����                                       ����                   conn_count              conns               node_paths              editable_instances              version             RSRCަ�9d�c�I��+extends CharacterBody2D

#var velocity = Vector2(0, 250)  # The player's movement vector.

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	'''var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)'''
	pass

func _integrate_forces(state):
	#apply_central_force(Vector2(0, -1000))
	pass

func _on_body_entered(body):
	velocity.y -= 100
	position += velocity 
	print("Hello")

�YRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    animations    script    custom_solver_bias    radius    height 	   _bundled       Script    res://Scenes/Player/player.gd ��������
   Texture2D    res://Sprites/Gogol_2.png )-Rj�0�8      local://SpriteFrames_ndhsx �         local://CapsuleShape2D_p3dck �         local://PackedScene_c5kdo �         SpriteFrames                         name ,      walk       speed      �@      loop             frames                   texture             	   duration      �?         CapsuleShape2D            �A        `B         PackedScene          	         names "   
      Player    script    CharacterBody2D    AnimatedSprite2D 	   position    scale    sprite_frames 
   animation    CollisionShape2D    shape    	   variants                 
     C @D
   ��L>��L>          ,      walk                node_count             nodes     #   ��������       ����                            ����                                             ����         	                conn_count              conns               node_paths              editable_instances              version             RSRC�x	$��fxV��extends RigidBody2D

signal on_moving_platform

var thrust = Vector2(0, -15000)
var lateral_thrust = Vector2(0, -400)
# var torque = 20000
var jump1 = false	# Whether the Player is on the floor (platforms and moving ones only).
var jump2 = false	# Whether the key to start jumping has been pressed.
var on_moving_platform_count = 0

@export var start_pressed = false

func _integrate_forces(state):
	# if Input.is_action_pressed("ui_up"):
	if jump1 and jump2:
		state.apply_central_force(thrust)
	else:
		state.apply_force(Vector2())
	var rotation_direction = 0
	if Input.is_action_pressed("ui_right"):
		rotation_direction += 1
		state.apply_central_force(lateral_thrust.rotated(rotation_direction * PI / 2))  # This is done here to prevent it from being always active.
	if Input.is_action_pressed("ui_left"):
		rotation_direction -= 1
		state.apply_central_force(lateral_thrust.rotated(rotation_direction * PI / 2))
	# state.apply_torque(rotation_direction * torque)


# Called when the node enters the scene tree for the first time.
func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(1000)  # Au pif value, to be changed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("start_jumping"):
		start_pressed = true
		jump2 = true


func _on_body_entered(body):
	# print("hello")
	if body.is_in_group("platforms"):	
		print("hi")
		jump1 = true
	if body.is_in_group("moving_platforms"):
		print("hi2")
		jump1 = true
		on_moving_platform_count += 1
		if on_moving_platform_count == 1:	# This is to prevent a crash in main (queue free on a null value).
			on_moving_platform.emit()
			print("on_moving_platform for the first time")

# Another way to do this could be to use something like is_on_ground().
# Apparently you can't with a RigidBody2D.

func _on_body_exited(_body):
	print("goodbye")
	# await get_tree().create_timer(0.3).timeout	# This causes error when the character isn't jumping or maybe is on ground
	jump1 = false


func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false	# Not sure if these do anything.


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	print("player_freed")
S���,RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    animations    script    custom_solver_bias    radius    height 	   _bundled       Script !   res://Scenes/Player/playerbis.gd ��������
   Texture2D    res://Sprites/Gogol_2.png )-Rj�0�8      local://SpriteFrames_ndhsx �         local://CapsuleShape2D_p3dck �         local://PackedScene_ejj8r �         SpriteFrames                         name ,      walk       speed      �@      loop             frames                   texture             	   duration      �?         CapsuleShape2D            �A        `B         PackedScene          	         names "         Player    script    player    RigidBody2D    AnimatedSprite2D    scale    sprite_frames 
   animation    CollisionShape2D    shape    VisibleOnScreenNotifier2D    _on_body_entered    body_entered    _on_body_exited    body_exited 0   _on_visible_on_screen_notifier_2d_screen_exited    screen_exited    	   variants                 
   ��L>��L>          ,      walk                node_count             nodes     '   ��������       ����                              ����                                       ����   	                  
   
   ����              conn_count             conns                                                                                        node_paths              editable_instances              version             RSRC�F�X^��]�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled           local://RectangleShape2D_kj1wf +         local://PackedScene_cbs1r \         RectangleShape2D       
     �B  �A         PackedScene          	         names "      
   DeathZone    Area2D    CollisionShape2D    scale    shape    	   variants       
      A  @@                node_count             nodes        ��������       ����                      ����                          conn_count              conns               node_paths              editable_instances              version             RSRC�C1C�_��.�O�GST2     1     ����               1       �  RIFF�  WEBPVP8L�  /L�(hۆI���� �ڰ�m�b
�,������m�j[������RJ��ȸ��-"r���3�c�1����#��@۶�7;�۶m�vmێQ�۠�m�6��uI�$��g�u�����4Z�I�ڶm��`m۶��3��m۶m۶��3]]�7_2�7�Q$I���@N0v�!�� �Hn$)��][5�{O�Fm��H�����Z���6��m۶m۶mk��m�=m��_>��۶�fijԈz`2�!W�N�'�n�ùȑl�nZ���"S �d�3?dȮ��6�$��@Fgf�޻�_x���	�ݾ7%7��w IϽ��D�rt�n�w�15�h%���x��d�;����wCM��u��B�{�Z�P����*���]��7S�AZ�v�	���.�\�#=n)�ʕ��E�%�v�J<w�H:Ou^
�X\4��ο�=o,U�����i�w}AV1e㷭Fj���v�Q���Y�(��^�e����&�~�4�鬟8%>�,��Eo�����Q��V#�tvA��&���2{���qU�S��:<Y�)u�pr�� ��g�V6&�}��Ѭ�铥���	���8��zZ�Xj@#q�ݖ����L�T�`5�Wo��P,].W�[h*/�t������??���9�F���b?��rTu�F��rN9��&����1e�5����<�!/��0ZL�}�C����t�N�Lg,c�hF2���M�N9�LVR���X�.~���4G��F��}'l��8A��a���c��Fr�������	C@��m ����C�z�t�l4^'~r�G��^vq|~�|9&?��nN>�4Izn��ŊI���?�2Dqs>�d 2Ac�4��E^��.��|ٸ�g 0¦)\�N"�k.�ɼ�yC�J$�ꖋ�HrCGa�]��"�X�#����5�����F�45��{HqW;ގ�2��Ԃ��֜ON��O�����H��������iʕ�=�*��n�T�5����{Ymڪ�tU�ԼI���qV�ƚ��ȯ�"D�����Z@<��S��훼�j��\]��[���'Ym�;¥��=�ͼ�or��OG�ӞX_`q{ $%*FU�7"��O��N�$'RU���UiAHՉ&�B�Qh&�z�໤�I��s��H��!l�)�2QgI���!l_�_�t�i��$���h��Q!�|!��?��5P"��"�I�N6�Gr����2#l�b�bֱ`���/�; �tGbG%n�/Ճܲ�"[�8G0�v|�Jy�= �Ht&�W�J�;����;�=2AȆ�g��BW�8a���n����0���H<� F	�kb�$��n�K����?Ѐo��F���҂���g�3�L��f��&z��cy��Q�?���D�c�3���x|�ƭ��
^S�X�3"+� ���ܧ�)^ ����H:��LR�4@���@�|GL��L��5�+`!�8C��D�C�$ @���#����k�o�M�136$��X�+j��L���ߔ�*�l�
174��@~�O�#����^�]2FI�P
;���D���c�ڄ`���.�&�N@N�҇l�*�@���'<�`4�-/Q����#Y��Dt��z��Y�_w�`��|2ѧ����C%Ű,6]W���8�b�+ꧦ�(*n��yt�e,�sQRM�9��p��W}���l�~1(�=� ��X�ô�z�v�Dm^Lr���� ���Ŝa-o�Z���̓Y�2Dq�R�/+�1�@�^^�`xɞ����RV��T�:z�"{@��7
�d�r��ӟ.@�e�c-�\Y<u{�\���F��TM���	�&�*ó��,,��0pxX�D
*	�@�Ie1@ �:�r����p��T�x�Qk�SE=nP�Q,}+�#
�UTK]%��5A�jCy��7��xI@MF�l�c����LP]@TF���e���I��p�?�WQ2���J����[Q3�����	�yA��y�+#�
T͝`~n���Qv8�b�M>��u3&�MG	���#��nj	�us)��{>� �V=Eힹ�_��|Q�tk�/�z�(�k�^@{*ޣrޅ�t�T��� J�@Z���,��L���v�'��x�2~K  �{��)dߖ,��	��4�0v���Bzn��T	�M���~\�O�L'���i(��
��� L5$@3�gf�� �D;YHW$t ���F0�79�Z&��jk��qN1XA����
Ј���<�f�,�#I�\g-=)F" ʔ���������8�'饋�Yc��,c�X�Zֱ�,f2�逃�$��RX�&��IA�`�B
��@AFm���o��FΩ��Z���K`�!��'J����x����h���D� "#�:a���>c�N�ld�gHML�R��1����[a���V�Ɖw��qKI��Ϥ$N���؎[��f%���<�!���mJЋ����A����`�&�1�A73���	�V�M&j��Yt����C,�l
Ŭ�n	�y�@!�`6��9���.f3`�V�Tg��1[�M~�0�2O7�?C��u���)9A����E_:ӊ�X��B���Jp/h��8�0���e/g���\���2Oo,i�7�E";e��O�\"���bx�C�$�ma����emE�%������y&C���p�:�$7A3���q\̳k���O�I�#�/v��Q�x�'k��p�׺�ȫ&��(�?Ȫ�p�F�o �j0�7Bc~
�.��K&����]DQJ�=1� �&+��H�m����i+ip�#�aM~����_�D�!������=��$RjM^w�w�u�!RjBV.L8�:�R����m��2���  T@JHo~��Y�H��{;�eꊽ) W�#�������d�X��ѹ������\t���-R�T)ّ`� �	+>Y����mnפ�*��j$�)D�D��%B�`�dז�Y�@:~�6�ּ�5����1ٓl�C��mdӘ����Aecw}#DU�~u=E�-Sg�U>�!�N��;H�C�i��jU�Lݳ9�eJQ�H�+�at�'wm@�Ue���M�D.=�KF=GI 廾�\ݖ�R��׾{�!�3RD���r�"	��8[����G&�,�V3��Iض��Vo$2 �\%�����5 ���<泐\)�dj��%vS�嚉4�Cl���X�o���&!�CS(�fh����B�^���u� �щE4n���:!���)F{7V`;�T�#E��Nk2�M`U���� t�56����:��e�BՔb�����y�MA�W����fξ����	�cHk
[y�r0�pP�!>�t�\��sDV� �������#lZ��B`L� r8`?_�A� 9���x��p�=��=��T�0��jf�-�I<#.�1Ɖ]�pM�H[�F���&��s̔��@~ �ߒB��)�Hb9.�c��dbK-����Ď�+~���| ��@�S�vLf���Y�V,�Jal0m4�B�σ!	(ܦ4Sxg�a-jaI������x� ��"E�)���>A u�%.c��ĥ|�W��s 
0N�Eo9A��Ƶ��w��S=��["�	(�%ɝ>�p1?�C�_�w����,L=0Uv6{E@��D�,D#���6�!/1��\�&W8�^6���e(��I7�Й.t���� 1���Kp����)vԗD��6\���!v���y���k�0'���嚈hB@V)�n`ڑ��ѪԪ��m0�P)�;��M���J��
���~���A���\ hɃqUJ&�+99����E�L|�'�&a��L���H ���A�����j�5�!,8�,G"٭��Bu~���i�D`�*�a�*�i�W�f`/,���DhF�\�M�����\Q��� �R0ݛ$�����D�j�O`���L�#:���X*�P�N�Evl��J��@�niO��0d�$w��GVI�c�]��K��&���Ք�NI S�� ,9JJ ��e����_bu'��<5{lM���!��A���b�tD-;Hf#)�0��?�4ŴQ�3=�`��Bw �#A�.�*�z�\�e/�K+�1W����8E���ܥ;)1�p��6mT�C�c!���S+ ^"3?�A8f�I�_���
Q���LDr�R�͆�H\Ն/�LUDb�t���c4 0�-��|ߥ ���0�ǧVa6�󂱄b�UI��	0aw@x"bRe8�DvRR�~SW�����������3���j����J�nbo
{S�wC�s���c�O�(��# ����@D�Bh�Rvә��Ek���kd�z�ը���f�GE�H�D�����<�T�*��|��bAxG墕F8N��������	% o���lx�G09�Oq�PըMZѕ�,��A��$�	��s�����h�|�Ga�j�S7@��zü����Q��T��%��G�ܢ#�u"HqD�-��Hk��E+����"���F��Oi��çe��>�7�#]����?���Uc�l!!Z�{���sO}�i��s���m�0�s�kw?kX:�!Ydv���z��FiwlX��Ų�ظ�cQk��=t��q[<�u�S/Q�}w���UD���=~�`+�a���om/?�M,�\m���J*}h�{&�e;Y��x>�G�mfQp���>i;��Fz~��!���Zz&��n]-t,>�K,��[g�����|��'����$��r-n8��x6ϷF�6E���m+�<�:[6�D��J�No���{A���r1��Misk���i�����������Q���{{+c�
�!��6)��n)r2������ xцX����uƲ��׷������d'|�b���:c%��_�Pf�h�����S��I���J���;�����  [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://byohlodthna22"
path="res://.godot/imported/Gogol_2.png-c97165642c16ab628db522b21b57cdbd.ctex"
metadata={
"vram_texture": false
}
 C=��͜䢈�GST2   k  `      ����               k`        "   RIFF   WEBPVP8L   /j� �DD����פ�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://coydwxsre4d3s"
path="res://.godot/imported/Platform_1.png-4060514b037e3495c2c8f4aa3e5638b3.ctex"
metadata={
"vram_texture": false
}
 A�4�!�VGST2   k  `      ����               k`        $   RIFF   WEBPVP8L   /j� ���"�� ��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dcm3nx2kasf2i"
path="res://.godot/imported/Platform_2.png-f86aba5090d019e2e2b9e96ac14d2d59.ctex"
metadata={
"vram_texture": false
}
 ��W����GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ��W��İ|�:%[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://du3rf3a7iba1q"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 {lA<)dU|�<
    00      �%     (   0   `           $                  ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                G   �   R   �   ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���    W)))�nnn�������������������������������������rrr�(((�   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� OQQQ�����������������������������������������������������������������|||��   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� *]]]�������������������������������������������������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ```�������������������������������������������������������������������������������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������������������������������������������������������������������������������������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������������������������������������������������������������������������������������������]]]�   0��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� lll���������������������������������������������������������������������������������������������������������������������)))���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �����������������������������������������������������ǵ��̼��²������������������ȸ��������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� rrr�����������������������������������������hpq�s<2�\$B�g�b�	p��� }�~���	o�'&P�ttn�������������������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������������������������������NOO�N��("��C4��GY�&��#��(��)!��)!��)!��) ��'������	L�wxh�����������������������������###���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������z���5��-%��LB��ND��GA��I0��6����( ��) ��) ��) ��) ��)!��) ��( ��&��  r�OPG�����������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���{������������������������@??�\��H?��MD��F=��LC��OE��NF��D,�`q���
��	��	��	��	����'��$��+#��  t�{{q�������������������������"""���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��������������������Y\\�N��5-��OF��G>��MC��LB��0(��$�k �K00��yp�����~~y�|}w�y�z�{{w�EDS�	l�!��$��#��I�����������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������JKK�t��PF��JA��I@��LB��,%�P�YVU�������������������������������������������������
h�%��) ��n�����������������������������&&&���� ��� ��� ��� ��� ��� ��� ��� ��� ��� sss]����������������W��UJ��D<��KB��A8�J�Z[[���������������������������������������������������������'&I���*!��k�����������������������������rrr���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������>..��>3��I@��KA��?6�/�����������������������������������������������������������������#!_���) ��q��ô�������������������������ppp���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������Z��II��E@��D:�1���������������������������������������������������������������������V�!��"��T���������������������������������   N��� ��� ��� ��� ��� ��� ��� ��� ��� ������������\[]�.����(��Q@�G�������������������������������������������������������������������������\�'��	��[Za���������������������������������   ���� ��� ��� ��� ��� ��� ��� ��� ��� ������������K�D��A��1|�|r}�������������������������������������������������������������������������u�.$�������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ������������� �M��F��R�����������������������������������������;�m� L�rrk��ʺ�������������ss_���,#��
o��³������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ������������� �O��6� �BT9�������������������������������������uvp�	��/&��#��	��r�n�e�%#U�n�#����%#W����������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ������������� �P��3� �J\C���������������������������������������~�  y�
��������������$��*!��	��GFY����������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ���������y��� �N��>��.P!�����������������������������������������fgc�wwu�ppm�``g�SS_�TT^�GFV�('P�W�r�  I�����������������������������������������   ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������p �L��I��]�ĺ���������������������������������������������������������������������������ͽ���������������������������������������������   ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������@	�E�
�J��)� �[[Z���������������������������������������������������������������������������������������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������JNI�.� �H��H��N���������������������������������������������������������������������������������������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������c �L��J��%� �mjn�����������������������������������������������������������������������������������������������������������������ccc���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������+C!�=��F��C�	�!C��������������������������������������������������������������������������������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������ojq�#� �K��K�� � �dYi�������������������������������������������������������������������������������������������������������������   #��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������ƾ��G�J��A��L��b �|jt������������������������������������������������������������������������������������������������������������ ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��������������������ZU]� � �O��9�3���� ���3>?�������������������������������������������������������������������������������������������������333���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �����������������������1L�އ���� ������ ��� cg�0Z\�J`a�[dd��}}�Ŵ��������������������������������������������������������������������������9��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������������������ FY������� ������ ��� ��� ��� ��� ��� ty�WZ�M^^�����ɸ������Ƕ����������������������������������������������sss���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���������������������������@D� ������ ��� ��������������� ��� ��� ��� ��� kq�ek� rt� ^e������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������$57� ��� ������ ��� ��� ��� ��� ��� ��������� ��� ��� ������	HK���������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������fYY�RU� ��� �����������������������������������������������������������������������+++���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������˹��VZ[�	_b� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� mt�����������������������������vvv���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������������������rqp�Vfg�L\]�N^_�K[\�=\^�-Z[�)TV�!RT�cf�8BB�������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������������������������������������������������������������������������������UUU���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ������������������������������������������������������������������������������������rrr���� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����������������������������������������������������������������������� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��������������������������������������������```��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                                                                                                                                                                                                                                                                                                                                                                                 fq[remap]

path="res://.godot/exported/133200997/export-d8d6469a583617c36897612f47fd6832-hud.scn"
[remap]

path="res://.godot/exported/133200997/export-0c6835a2b535eafd02a3b62c0a86d578-main.scn"
�	;��)���
�9���[remap]

path="res://.godot/exported/133200997/export-f89508cda8b58fb8d0983507640db6bf-moving_platform.scn"
s֤z[remap]

path="res://.godot/exported/133200997/export-c0dcf93ee7d30a9f75fd11c1a9660783-platform.scn"
x=O	�'�%X[remap]

path="res://.godot/exported/133200997/export-8e63b53a88b650cb9792f8d8b6d332bc-player.scn"
��J��8��O�[remap]

path="res://.godot/exported/133200997/export-81711f25fe8e8a581ede9f0f73b4c74a-playerbis.scn"
|�J���^�[remap]

path="res://.godot/exported/133200997/export-a0f45c0a65a40728a25b0fd281b8e23d-death_zone.scn"
��(j}zq�list=Array[Dictionary]([])
��E<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
���F��y`�   )h<Z-�}   res://Scenes/HUD/hud.tscn�����g/   res://Scenes/Main/main.tscn�����~*   res://Scenes/Platform/moving_platform.tscn� �L���0#   res://Scenes/Platform/platform.tscn���?;ݿ   res://Scenes/Player/player.tscnT?���4"   res://Scenes/Player/playerbis.tscn�mґ�$   res://Scenes/death_zone.tscn)-Rj�0�8   res://Sprites/Gogol_2.png&��f�P   res://Sprites/Platform_1.pngB�U����e   res://Sprites/Platform_2.png�6�e��w   res://icon.svg<����e���)ECFG
      application/config/name      	   GogolJump      application/run/main_scene$         res://Scenes/Main/main.tscn    application/config/features   "         4.1    Mobile     application/config/icon         res://icon.svg  &   application/config/windows_native_icon$         res://Sprites/Gogol_2.ico   "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �     input/start_jumping�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script         input/start_game�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      #   rendering/renderer/rendering_method         mobile  κ+�	"t6ӣ�