rm -rf ./sd-webui-prompt-all-in-one
git clone https://github.com/Physton/sd-webui-prompt-all-in-one.git

docker build -t sd-webui-prompt-all-in-one-app .

docker run --rm -it \
    -p 17860:17860 \
    -e APP_PORT=17860 \
    -e APP_USERNAME=admin \
    -e APP_PASSWORD= \
    -v ./dockertest/storage:/app/sd-webui-prompt-all-in-one/storage \
    -v ./dockertest/models:/app/sd-webui-prompt-all-in-one/models \
    -v ./dockertest/tags:/app/sd-webui-prompt-all-in-one/tags \
    sd-webui-prompt-all-in-one-app