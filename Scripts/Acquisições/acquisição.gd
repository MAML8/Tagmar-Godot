extends Resource
class_name Acquisição

var nível : int = 0;
var custo : int;

func adquirir(pontos : int) -> int:
	var retorno := pontos - custo;
	if retorno >= 0:
		nível += 1;
	return retorno;
