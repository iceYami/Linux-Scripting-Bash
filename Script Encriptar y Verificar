encrypt_file()
{

    file="$1"

    encrypted_file="$file.enc"

    passphrase="$2"
    
    iv=$(openssl rand -hex 16)

    openssl enc -aes-256-cbc -salt -in "$file" -out "$encrypted_file" -K "$(echo -n "$passphrase" | sha256sum | cut -d ' ' -f 1)" -iv "$iv"
    
    echo "Archivo encriptado."
}

verify_integrity() 

{

    file="$1"

    expected_hash="$2"
    
    actual_hash=$(sha256sum "$file" | cut -d ' ' -f 1)
    
    if [ "$actual_hash" == "$expected_hash" ]; then

        echo "Integridad correcta."

    else

        echo "ERROR: La integridad no coincide."

    fi

}

archivo="archivo.txt"

contraseña="mi_contraseña_secreta"

hash_esperado="HASH_ESPERADO_DEL_ARCHIVO"

encrypt_file "$archivo" "$contraseña"

verify_integrity "$archivo.enc" "$hash_esperado"
