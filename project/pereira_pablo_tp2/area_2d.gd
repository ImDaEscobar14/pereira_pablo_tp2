extends Area2D

@export var zoom_in_value := Vector2(5,5)
@export var zoom_out_value := Vector2(3, 3)


func _on_body_entered(body):
	print("Entré :", body)  # juste pour voir si ça détecte
	var camera = body.get_node("Camera2D")
	if camera:
		camera.zoom = zoom_in_value

func _on_body_exited(body):
	print("Sorti :", body)
	var camera = body.get_node("Camera2D")
	if camera:
		camera.zoom = zoom_out_value
