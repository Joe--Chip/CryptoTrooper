#!/bin/bash

WKEY='a0edfd06081e270ae02de736e206e72c'
KEY=key.enc
IV=$(cat key.iv)

openssl enc -d -aes-128-cbc -K $WKEY -iv "$IV" -in "$KEY" -out ${KEY%.*}

