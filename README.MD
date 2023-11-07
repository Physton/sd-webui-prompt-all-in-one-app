# sd-webui-prompt-all-in-one-app

<div align="center">

### [🇺🇸 English](README.MD) | [🇨🇳 简体中文](README_CN.MD)

</div>

This project is an independent version of [sd-webui-prompt-all-in-one](https://github.com/physton/sd-webui-prompt-all-in-one) that does not require the [stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui) environment. It allows you to write and maintain your prompts in a web interface.

![](./assets/screenshot.jpeg)

----

> If you find this extension helpful, please give it a star on GitHub!
> You can also buy me a coffee: [donate](#捐赠)

----

- [Development Plan](#development-plan)
- [Docker Deployment](#docker-deployment)
- [Manual Run](#manual-run)
- [Donation](#donation)

## Development Plan

- [x] Docker Deployment
- [ ] Windows, MacOS, Linux standalone app

## Docker Deployment

### Deployment

- Deploy using command line
  ```bash
  docker run -d \
  -p 17860:17860 \
  -e APP_PORT=17860 \
  -v ./dockertest/storage:/app/sd-webui-prompt-all-in-one/storage \
  -v ./dockertest/models:/app/sd-webui-prompt-all-in-one/models \
  -v ./dockertest/tags:/app/sd-webui-prompt-all-in-one/tags \
  physton/sd-webui-prompt-all-in-one-app
  ```

- Deploy using docker-compose
  1. Create a `docker-compose.yml` file
  ```yaml
  version: '3.7'
  services:
    sd-webui-prompt-all-in-one-app:
      image: physton/sd-webui-prompt-all-in-one-app
      container_name: sd-webui-prompt-all-in-one-app
      restart: always
      ports:
        - 17860:17860
      environment:
        - APP_PORT=17860
      volumes:
        - ./dockertest/storage:/app/sd-webui-prompt-all-in-one/storage
        - ./dockertest/models:/app/sd-webui-prompt-all-in-one/models
        - ./dockertest/tags:/app/sd-webui-prompt-all-in-one/tags
  ```
  2. Start
  ```bash
  docker-compose up -d
  ```

### Access
[http://localhost:17860](http://localhost:17860)

### Environment Variables
| Parameter | Description | Default Value |
|:-----------:| :----: | :----: |
| APP_PORT | Server port | 17860 |

### Mounted Directories
| Directory |  Description  |
|:-----------:|:-----:|
| /app/sd-webui-prompt-all-in-one/storage | Storage directory  |
| /app/sd-webui-prompt-all-in-one/models | Model directory  |
| /app/sd-webui-prompt-all-in-one/tags | CSV directory |


## Manual Run

1. Install [Python](https://www.python.org/downloads/) 3.9+.
  > Please search for installation tutorials and add Python to the environment variables.

2. Clone this project locally using git clone, or manually [download](https://github.com/Physton/sd-webui-prompt-all-in-one-app/archive/refs/heads/main.zip) and unzip the project.

3. Open the system command line and navigate to the project directory.

  ```bash
  cd sd-webui-prompt-all-in-one-app
  ```

4. Install dependencies.

  ```bash
  pip3 install -r requirements.txt
  python install.py
  ```

5. Run the application.

  ```bash
  python app.py
  ```

6. Access [http://localhost:17860](http://localhost:17860)

## Donation

[Donation List](https://aiodoc.physton.com/zh-CN/Donate.html)

### Buy Me a Coffee

| ko-fi (EN) | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/physton) |
|:-----------:| :----: |
| Paypal (EN) | [https://paypal.me/physton](https://paypal.me/physton) |
| 爱发电 (CN) | [https://afdian.net/a/physton/thank](https://afdian.net/a/physton/thank) |
| 支付宝 (CN) | ![](https://s1.imagehub.cc/images/2023/07/05/alipay.jpeg) |
| 微信赞赏 (CN) | ![](https://s1.imagehub.cc/images/2023/07/05/wechat.jpeg) |