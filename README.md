# Codecolab

## Description
This project is a plugin that has been built inside OS.js. MULE itself is a plugin built on top of OS.js's framework with multiple packages that allow it to create
a learning environment for Maynooth university students. Codecolab (the project itslef) has been installed inside MULE as a plugin to allow for anyone using the
MULE environment to have the ability to collaboratively edit code documents in real time with their friends. Once MULE has been installed on your machine using 
Docker, MULE should be running on port 80. Codecolab  will be located in the menu on the top left under the 'Other' menu item. 

## Installation
This will guide you to enable you to be able to install and build MULE with the codecolab plugin already installed. Please note that wsl2 and docker is slow
and it will take time for the application to work properly if you are using a windows system. This is a known issue and is caused by windows and wsl2. I was
unable to find a solution to this so I used ubuntu to run and build the MULE contianer, I would reccommned this approach to run and build the application if
possible.
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
5. Open your browser on localhost:
    ```localhost
    http://localhost:80/
    ```
## Usage
1. Login:
   If the container has been built correctly you will be greeted with a login page. In the MULE repo
   navigate to the 'index.html' file in the .login folder.
2. Open with Live Server:
   Install the Live Server extension for visual studio code and open the index.html file. You should see this
   page below. Do not change any of the variables! Click the **build login request button** and then click the
   **Login with LTI button**.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/f881a5b5-39ea-4aed-839b-76931ff914c2)
3. Logged in: You should be navigated to the MULE webdesktop which should look like the screenshot below. If you have not been relocated to
   the MULE try opening localhost in a new tab.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/03d77493-1cdd-44cd-99ca-6a8a40d8f9ec)
4. Open Codecolab: Navigate to the top left menu button click on it then click the **Other** menu item then
   **codecolab**. The application landing page should open and look like the screenshot below.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/940787dc-c494-4ebc-b693-082d14dad9ed)
5. Share file: Click the share file button as instructed and select a file from MULES virtaul file system. You should then
   be navigated to the main window which is the code editor and it should look like the screenshot provided.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/86dcc22b-a0b6-4ea4-a8e0-1474568729a8)
6. Other Users: Using the share link you can copy and paste this into a new tab and it will join that session that
   has been created. You can now start editing the document on either tab and you should see the chnages be reflected
   in both tabs. Below is a screenshot of what the user that joined the session through the link should look like.
   Please note that the menu for other users that join the session is diabled so you will not see it on the
   second tab.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/4a0176f9-19ac-4c67-a327-6b264ffef41d)

   




8. Open your browser and navigate to `http://localhost:3000`.

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
