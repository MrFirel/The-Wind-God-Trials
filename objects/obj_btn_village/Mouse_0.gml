/// @description Insert description here
// You can write your code in this editor

if(!ds_stack_empty(global.globalRoomsList)) {
	var lastRoom = ds_stack_pop(global.globalRoomsList);
	room_goto(lastRoom);
}