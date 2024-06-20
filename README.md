# FastMap

O `fastmap` é uma ferramenta de script shell projetada para automatizar o processo de mapeamento rápido de portas usando o `nmap`. Ele realiza inicialmente um escaneamento rápido de todas portas para identificar portas abertas e, em seguida, executa um escaneamento mais detalhado nas portas encontradas para identificar serviços e vulnerabilidades potenciais e gera um arquivo `nmap.txt` com os resultados do escaneamento.

## Pré-requisitos

Antes de usar o `fastmap`, certifique-se de que o `nmap` está instalado em seu sistema. O `nmap` pode ser instalado na maioria das distribuições Linux usando o gerenciador de pacotes padrão. Por exemplo, no Debian-based systems (incluindo Ubuntu e Kali Linux):

```bash
sudo apt-get update
sudo apt-get install nmap
```

## Instalação

Para instalar o `fastmap` em seu sistema e torna-lo um executável, siga os passos abaixo:

```bash
git clone https://github.com/wsbwzfyvt/fastmap.git
cd fastmap
sudo bash install.sh
```

## Uso

Após a instalação, você pode usar o `fastmap` diretamente de qualquer terminal passando o IP alvo como argumento:

```bash
fastmap <ip_alvo>
```

Isso iniciará o processo de escaneamento, e os resultados serão salvos em `nmap.txt` no diretório atual.

## Contribuições

Contribuições são sempre bem-vindas! Se você tem alguma sugestão para melhorar o `fastmap`, sinta-se à vontade para criar uma issue ou um pull request no repositório.

