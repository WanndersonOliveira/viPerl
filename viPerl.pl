for(my $i = 0; $i < 5; $i=$i+1){
	print("-");
}

print("VI Perl");

for(my $i = 0; $i < 5; $i=$i+1){
	print("-");
}

print("\n\n");

our @conteudo;


my $entrada = "";

while($entrada ne "0"){
	$entrada = <>;
	chomp($entrada);
	push(@conteudo, $entrada);	
}

pop(@conteudo);

foreach(@conteudo){
	print("$_ \n");
}

print("\n\nGravar - S");
print("\nSair sem gravar - D\n\n");

my $choice = <>;
chomp($choice);
$choice = uc($choice);

if($choice eq "S"){
	my $diretorio = "c:/users/sedis/desktop/";
	print("Nome_arquivo: ");
	my $arquivo = <>;
	chomp($arquivo);
	$diretorio = $diretorio.$arquivo;
	open(DATA, "> $diretorio");
		foreach $linha (@conteudo){
			$linha = $linha."\n";
			print DATA $linha;
		}
	close(DATA);
	
	print("Arquivo gravado com sucesso!");
}
