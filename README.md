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
1. _Login:_
   If the container has been built correctly you will be greeted with a login page. In the MULE repo
   navigate to the 'index.html' file in the .login folder.
2. _Open with Live Server:_
   Install the Live Server extension for visual studio code and open the index.html file. You should see this
   page below. Do not change any of the variables! Click the **build login request button** and then click the
   **Login with LTI button**.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/f881a5b5-39ea-4aed-839b-76931ff914c2)
3. _Logged in:_
   You should be navigated to the MULE webdesktop which should look like the screenshot below. If you have not been relocated to
   the MULE try opening localhost in a new tab.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/03d77493-1cdd-44cd-99ca-6a8a40d8f9ec)
5. _Open Codecolab:_
   Navigate to the top left menu button click on it then click the **Other** menu item then
   **codecolab**. The application landing page should open and look like the screenshot below.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/940787dc-c494-4ebc-b693-082d14dad9ed)
7. _Share file:_
   Click the share file button as instructed and select a file from MULES virtaul file system. You should then
   be navigated to the main window which is the code editor and it should look like the screenshot provided.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/86dcc22b-a0b6-4ea4-a8e0-1474568729a8)
9. _Other Users:_
   Using the share link you can copy and paste this into a new tab and it will join that session that
   has been created. You can now start editing the document on either tab and you should see the chnages be reflected
   in both tabs. Below is a screenshot of what the user that joined the session through the link should look like.
   Please note that the menu for other users that join the session is diabled so you will not see it on the
   second tab.
   ![image](https://github.com/aking-a/mule-code-system/assets/118080508/4a0176f9-19ac-4c67-a327-6b264ffef41d)
   

## Contributing
_Please follow these steps to contribute to the project:_
I perosonally used the OS.js documentation to create a application inside OS.js and then I copied and pasted that application
into MULE's directory specifically in **mule/src/packages**. I found it easier to build and test the application without
Docker and then build the container once the finshed product has been realised.
1. _Building an application in OS.js:_
   Go to OS.js and clone it's repository the instructions to set it up on your own machine are explained there. Use the non docker
   setup instructions!
     ```OS.js
     https://manual.os-js.org/
     ```
2. _Copy codecolab and build:_
   Copy the codecolab folder from the MULE repo provided above and copy it into **src/packages** in the OS.js repository on your machine.
   Assuming you have OS.js running on your local machine stop it and run the commands below.
     ```package:discover
     npm run package:discover
     ```
     ```run build
     npm run build
     ```
3. _Serve and Watch:_
   Once the build command has run succesfully OS.js will now be installed as a package. Use the serve command below to start OS.js
   it should be running on **http://localhost:8000/**. (_An important note to mention is the invite link generator does not take into
   account what port or url the server is running on so please change this in the source code. The link generator is locted in codecolab
   /server_modules/newsession.js line 15._). To run a watch on codecolab package use the commands provided below.
    ```
    cd src/packages/codecolab
    ```
    ```
    npm run watch
    ```

## Design Explained
This section will cover OS.js's overall archetecture and codecolabs files and structure along with libraries and packages used.

_This is a screenshot from OS.js that provides a high level overview of how it's framework works_
![image](https://github.com/aking-a/mule-code-system/assets/118080508/10773359-6da4-4b09-8f2b-503644f2f717)
This image shows how applications are built inside a window and contained within OS.js webdesktop.

Codecolab itself is an appliaction and through the use of react I was able to render a react app inside
one of these windows. The react app navigates to its different routes using a react library called BrowserRouter.
The OS.js itslef along with all of its packages is bundled and served using webpack therefore _I would reccommend
researching react and webpack before attemting to make changes to this repo and of course research the OS.js
documentation._

**codecolab file structure and file functionallity:**

![image](https://github.com/aking-a/mule-code-system/assets/118080508/d63b7d09-a598-4dfe-8d25-7b8f46d09987)

_Screenshot of codecolab's file structure_




   





















