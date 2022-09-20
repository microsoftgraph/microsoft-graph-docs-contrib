---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this step, you will run your sample app in the browser by using Live Server.

1. Select `CTRL + SHIFT + P` to open the panel in Visual Studio Code, type `Preferences` on the panel and select `Preferences: Open Workspace Settings (JSON)` from the options.

1. In the `settings.json` file that opens, add the following code.

    ```json
    {
    "liveServer.settings.host": "localhost",
    "liveServer.settings.port": 3000
    }
    ```

1. Select `CTRL + SHIFT + P` to open the panel in Visual Studio Code, type `Live Server` on the panel and select `Live Server: Open with Live Server` from the options. Live Server will run the app in your browser.

1. Select **Sign in** and use your Microsoft 365 Developer Program tenant to sign in.

1. Consent to the required permissions to use the application features such as viewing calendar events, to-do tasks, and file folders.

1. To make sure that One Productivity Hub app works properly, add some calendar events, to-do tasks, and file folders in your Microsoft 365 Developer tenant.

    ![Screenshot showing the One Productivity Hub sample app](../../../images/mgt-one-productivity-hub/one-productivity-hub-overview.gif)
