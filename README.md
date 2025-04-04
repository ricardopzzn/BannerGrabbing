# 🔍 Banner Grabbing com Python

Este projeto é um simples script de **Banner Grabbing** desenvolvido em Python. Ele permite capturar banners de serviços que estejam rodando em portas específicas de um host remoto, o que pode ser útil em análises de segurança, mapeamento de serviços e testes de reconhecimento.

## 📌 O que é Banner Grabbing?

Banner Grabbing é uma técnica usada para coletar informações sobre serviços de rede expostos, como servidores web, FTP, SSH, entre outros. Muitos serviços enviam banners com dados como nome da aplicação, versão e sistema operacional ao estabelecer uma conexão — dados que podem ser valiosos para um analista de segurança ou pentester.

---

## ⚙️ Como Funciona

O script realiza os seguintes passos:

1. Estabelece uma conexão com o host e porta especificados.
2. Envia um pequeno payload (opcional) para estimular uma resposta do serviço.
3. Captura e exibe o banner retornado pelo serviço.

---

## 🧪 Exemplo de Uso

```bash
python banner_grabber.py 192.168.0.1 21
```

Saída esperada:
```
[+] Conectado a 192.168.0.1:21
[+] Banner recebido: 220 FTP Server ready.
```

---

## 📄 Requisitos

- Python 3.x
- Conexão de rede com o host de destino
- Biblioteca `socket` (padrão do Python)

---

## 🧰 Instalação

Clone este repositório:

```bash
git clone https://github.com/seu-usuario/banner-grabbing-python.git
cd banner-grabbing-python
```

Execute o script:

```bash
python banner_grabber.py <IP> <PORTA>
```

---

## 🛡️ Aviso Legal

> Este script foi criado apenas para fins educacionais e de teste em ambientes autorizados. **Não utilize este script para atacar redes sem permissão explícita. O uso indevido pode violar leis locais e internacionais.**

---

## 👨‍💻 Autor

Desenvolvido por [Seu Nome ou Usuário GitHub].

---

## 📃 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais detalhes.
