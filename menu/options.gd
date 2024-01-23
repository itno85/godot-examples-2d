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

extends Control

@onready
var settings = get_node("/root/Settings")

func _ready():
	$VBoxContainer/MusicVolume.value = settings.musicVolume
	$VBoxContainer/FxVolume.value = settings.fxVolume
	$VBoxContainer/HBoxContainer/Difficulty.set_menu_title(0,settings.Difficulty.keys()[settings.difficulty]);
	$VBoxContainer/HBoxContainer/Difficulty/Difficulty.set_focused_item(settings.difficulty); 
	$VBoxContainer/Autosave.set_pressed_no_signal(settings.autosave);
		
func _on_back_pressed():
	get_tree().change_scene_to_file("res://main_menü.tscn")

func _on_fx_volume_value_changed(value):
	settings.fxVolume = value;

func _on_music_volume_value_changed(value):
	settings.musicVolume = value;

func _on_difficulty_index_pressed(index):
	settings.difficulty = index;
	$VBoxContainer/HBoxContainer/Difficulty.set_menu_title(0,settings.Difficulty.keys()[settings.difficulty]);
	
func _on_autosave_toggled(button_pressed):
	settings.autosave = ! settings.autosave; 
