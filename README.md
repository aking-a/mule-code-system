# Codecolab

## Description
This project is a plugin that has been built inside OS.js. MULE itself is a plugin built on top of OS.js's framework with multiple packages that allow it to create
a learning environment for Maynooth university students. Codecolab (the project itslef) has been installed inside MULE as a plugin to allow for anyone using the
MULE environment to have the ability to collaboratively edit code documents in real time with their friends. Once MULE has been installed on your machine using 
Docker, MULE should be running on port 80. Codecolab  will be located in the menu on the top left under the 'Other' menu item. 

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/aking-a/mule-code-system
    ```

2. Install the docker desktop:
    ```Website
    https://www.docker.com/products/docker-desktop/
    ```
3. Enable linux subsystem wsl2 if you are using windows:
    ```wsl setup instructions
    https://learn.microsoft.com/en-us/windows/wsl/install
    ```
4. Build and Run the container:
    ```bash
    docker-compose up -d
    ```
## Usage
1. Start the application:
    ```bash
    npm start
    ```

2. Open your browser and navigate to `http://localhost:3000`.

## Contributing
Please follow these steps to contribute to the project:

1. Fork the repository.

2. Create a new branch:
    ```bash
    git checkout -b feature/your-feature
    ```

3. Make your changes and commit them:
    ```bash
    git commit -m "Add your commit message here"
    ```

4. Push your changes to your forked repository:
    ```bash
    git push origin feature/your-feature
    ```

5. Open a pull request in the original repository.

## License
This project is licensed under the [MIT License](LICENSE).
