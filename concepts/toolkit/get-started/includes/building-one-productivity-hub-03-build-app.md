---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this step, you'll create a web app and enable authentication with the Microsoft Graph Toolkit MSAL2 provider.

## Create a web app

1. Create a new folder and name it **OneProductivityHub**. Right-click and open the folder with Visual Studio Code.

1. Create a new file in the **OneProductivityHub** folder and name it **index.html**.

1. Select `CTRL + SPACE` and choose **HTML sample** from the options.

1. To enable authentication with Microsoft Graph Toolkit via mgt-loader, add the following reference in **index.html** inside the `<body></body>` section:

    ```HTML
    <script src="https://unpkg.com/@microsoft/mgt@2.6.0/dist/bundle/mgt-loader.js"></script>
    ```

### Initialize the MSAL2 provider

1. In **index.html**, add the MSAL2 provider in the `<body></body>` section as follows:

    ```HTML
    <mgt-msal2-provider
        client-id="<YOUR_CLIENT_ID>"
        scopes="User.Read,
        User.ReadBasic.All,
        Calendars.Read,
        Files.Read,
        Files.Read.All,
        Sites.Read.All,
        Tasks.Read,
        Tasks.ReadWrite,
        People.Read">
    </mgt-msal2-provider>
    ```

    > [!IMPORTANT]
    > The following scopes defined in the provider will be shown as a list of required permissions to request user's consent during the authentication process: `User.Read, User.ReadBasic.All, Calendars.Read, Files.Read, Files.Read.All, Sites.Read.All, Tasks.Read, Tasks.ReadWrite, People.Read`.

1. Replace `<YOUR_CLIENT_ID>` with the client ID you copied from the Azure AD application.

1. Make sure that the final version of **index.html** is similar to the following example:

    ```html
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset='utf-8'>
      <meta http-equiv='X-UA-Compatible' content='IE=edge'>
      <title>One Productivity Hub</title>
      <meta name='viewport' content='width=device-width, initial-scale=1'>
      <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
      <script src='main.js'></script>
    </head>
    <body>
      <script src="https://unpkg.com/@microsoft/mgt@2.6.0/dist/bundle/mgt-loader.js"></script>
      <mgt-msal2-provider
          client-id="<YOUR_CLIENT_ID>"
          scopes="User.Read,
          User.ReadBasic.All,
          Calendars.Read,
          Files.Read,
          Files.Read.All,
          Sites.Read.All,
          Tasks.Read
          Tasks.ReadWrite,
          People.Read">
      </mgt-msal2-provider>
    </body>
    </html>
    ```
