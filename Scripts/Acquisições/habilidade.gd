extends Acquisição
class_name Habilidade

enum Categoria_Habilidade {Profissional, Manobra, Conhecimento, Subterfúgio, Influência, Geral}

@export var categoria : Categoria_Habilidade;
@export var total : int = -7;
@export_enum("aura", "agilidade", "carisma", "fisíco", "força", "intelecto", "percepção")
var ajuste : String;

@export var somente_treinada : bool = false;
@export var restrita : bool = false;
@export var tem_área_de_atuação : bool = false;
@export var área_de_atuação : String = "NULL";

@export var penalidade_armadura : bool = false;
@export var penalidade_elmo : bool = false;
@export var penalidade_carga : bool = false;

func calc_total(ajuste : int):
	if nível == 0:
		total = ajuste + nível;
	else:
		total = ajuste - 7;

func testar(valor_rolado : int, dificuldade : Resolução.Cor_resolução) -> bool:
	return dificuldade <= Resolução.resolver_ação(valor_rolado, total);
