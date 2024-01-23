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

extends Node

var difficulty: Difficulty = Difficulty.MEDIUM;
var musicVolume: int = 60;
var fxVolume: int = 75;
var autosave: bool = true;

enum Difficulty {
	EASY,
	MEDIUM,
	HARD
};

