# ansible_docker
A repository with files for automatic installation and launch of docker containers (Ubuntu/Debian)
1) Clone repository
2) Create .env with ANSIBLE_HOST, ANSIBLE_PASSWORD, ANSIBLE_USER, DOCKER_USERNAME, DOCKER_PASSWORD (the last three are optional)
3) Build image
   docker build -t ansible-image .
4) Run compose
   docker compose up
