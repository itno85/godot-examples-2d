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

@export var target: Node2D;
@onready
var navigationAgent = $NavigationAgent2D as NavigationAgent2D
const SPEED = 200

func _physics_process(delta:float) -> void:
	var direction = to_local(navigationAgent.get_next_path_position()).normalized();
	velocity = direction * SPEED;
	move_and_slide()

func update_path() -> void:
	navigationAgent.target_position = target.global_position;

func _on_timer_timeout():
	update_path();
