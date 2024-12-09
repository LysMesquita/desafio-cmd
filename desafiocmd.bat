@echo off
REM Passo 1: Clonar o repositório Git para a unidade C:
echo Clonando repositório Git para C:\
git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git C:\meu_repositorio

REM Passo 2: Acessar a pasta do repositório clonado
cd C:\meu_repositorio

REM Passo 3: Configurar Nome de Usuário e Email do Git
echo Configurando o nome de usuário e email do Git...
git config user.name "Seu Nome"
git config user.email "seuemail@dominio.com"

REM Passo 4: Criar um arquivo de texto com o hostname da máquina
echo Criando arquivo de texto com o hostname da máquina...
hostname > C:\meu_repositorio\hostname.txt

REM Passo 5: Criar um arquivo de texto com o IP da máquina
echo Criando arquivo de texto com o IP da máquina...
ipconfig | findstr /i "IPv4" > C:\meu_repositorio\ip.txt

REM Passo 6: Fazer o commit dos arquivos
echo Realizando commit dos arquivos...
git add hostname.txt ip.txt
git commit -m "Adicionando arquivos de hostname e IP"

REM Passo 7: Enviar os arquivos para o repositório do GitHub
echo Enviando os arquivos para o repositório no GitHub...
git push origin main

echo Processo concluído.
pause
