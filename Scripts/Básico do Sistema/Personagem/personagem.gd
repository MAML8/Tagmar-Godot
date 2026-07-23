extends Resource
class_name Personagem

@export_group("Diferenciais")
@export var nome : String;
@export var raça : Raça;
@export var profissão : Profissão;
@export var estágio : int;

@export_group("Atributos Principais")
@export var aura : int;
@export var agilidade : int;
@export var carisma : int;
@export var fisíco : int;
@export var força : int;
@export var intelecto : int;
@export var percepção : int;

var resistência_fisíca : int;
var resistência_mágica : int;
var velocidade_base : int;

func calc_rf(bonus : int = 0):
	resistência_fisíca = fisíco + estágio + bonus;

func calc_rm(bonus : int = 0):
	resistência_mágica = aura + estágio + bonus;

func calc_vb(bonus : int = 0):
	velocidade_base = raça.velocidade_base + fisíco + bonus;
