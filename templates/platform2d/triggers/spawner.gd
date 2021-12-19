extends Trigger


enum EnemyType { ROBOT, SHOOTER }

export (EnemyType) var enemy_type

onready var world: Node2D = get_node("/root/Main/World")
onready var enemies: Node2D = world.get_node("Enemies")


func _on_trigger():
	match enemy_type:
		EnemyType.ROBOT:
			spawn(preload("res://enemies/robot.tscn"))
		EnemyType.SHOOTER:
			spawn(preload("res://enemies/robot.tscn"))


func spawn(enemy_scene: PackedScene):
	var enemy: Enemy = enemy_scene.instance()
	enemies.add_child(enemy)
	enemy.position = position + Vector2.UP*50
