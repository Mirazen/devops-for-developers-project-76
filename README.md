### Hexlet tests and linter status:
[![Actions Status](https://github.com/Mirazen/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Mirazen/devops-for-developers-project-76/actions)
# Hexlet DevOps Project

Этот проект представляет собой автоматизированную инфраструктуру в Yandex Cloud (L7-балансировщик, кластер PostgreSQL, 2 web-сервера на Ubuntu). Управление конфигурацией серверов осуществляется с помощью Ansible.

## Требования для локальной машины
* GNU Make
* Ansible
* Настроенный SSH-доступ к серверам

## Установка зависимостей
Перед началом работы необходимо установить внешние роли Ansible (geerlingguy.pip, geerlingguy.docker):
\`\`\`bash
make install-requirements
\`\`\`

## Подготовка серверов (Provisioning)
Для базовой настройки серверов (установка pip и модуля docker для Python) выполните команду:
\`\`\`bash
make setup
\`\`\`

## Деплой (Deploy)
Для автоматического развертывания приложения (Redmine) на серверах выполните команду:
\`\`\`bash
make deploy
\`\`\`

**Приложение доступно по адресу:** [https://danya-hexlet-devops.ru](https://danya-hexlet-devops.ru)