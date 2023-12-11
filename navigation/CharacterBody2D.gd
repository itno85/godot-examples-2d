#Copyright 2023 Tino Schnittke
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

extends CharacterBody2D

const SPEED = 300.0
var direction = Vector2.ZERO

func _physics_process(delta):
	# Add the gravity.
	velocity = direction * SPEED;
	move_and_slide()

func _unhandled_input(event: InputEvent):
	direction.x = Input.get_axis("ui_left", "ui_right");
	direction.y = Input.get_axis("ui_up","ui_down");
	direction = direction.normalized();
