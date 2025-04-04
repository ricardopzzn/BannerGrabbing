#!/usr/bin/env python3

import socket

def banner_grabbing(ip, port):
    try:
        # Criando o socket
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(3)  # Definir um tempo limite para conexão
        
        # Conectando ao IP e porta
        s.connect((ip, port))
        
        # Recebendo o banner
        banner = s.recv(1024).decode().strip()
        
        print(f"[+] Banner encontrado em {ip}:{port} -> {banner}")
        
        s.close()
    except socket.timeout:
        print(f"[-] Timeout ao conectar em {ip}:{port}")
    except socket.error:
        print(f"[-] Não foi possível conectar em {ip}:{port}")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print(f"Uso: {sys.argv[0]} <IP> <Porta>")
        sys.exit(1)
    
    ip = sys.argv[1]
    port = int(sys.argv[2])
    banner_grabbing(ip, port)
