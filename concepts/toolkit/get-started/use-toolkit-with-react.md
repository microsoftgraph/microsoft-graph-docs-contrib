---
title: "Use the Microsoft Graph Toolkit with React"
description: "Get started using the Microsoft Graph Toolkit in a React application."
localization_priority: Normal
author: waldekmastykarz
---

# Use the Microsoft Graph Toolkit with React

Microsoft Graph Toolkit (MGT) is a set of web components that simplify connecting to Microsoft Graph and allow you to focus on your application instead. Microsoft Graph Toolkit is available as a generic set of web components distributed through the **@microsoft/mgt** npm package.

If you're building apps with React, you can use the **@microsoft/mgt-react** package which wraps MGT web components in React components making it easier to pass complex data.

Following sections take you step-by-step through the process of using Microsoft Graph Toolkit React to create a React app and connect it to Microsoft 365. After completing the steps, you'll have a React app that shows the upcoming appointments of the currently signed in user from Microsoft 365:

![Finished app](../images/mgt-finished-app.png)

## Prerequisites

To follow the steps in this article, you'll need a Microsoft 365 development environment as well as a few tools. See the [getting started](./overview.md) page for the exact instructions to setup your machine.

## Create a React app

Start, with creating a new React app by executing in the terminal:

```cmd
npx create-react-app my-m365-app --template typescript
```

This will create a new React app using TypeScript, which will help you write more robust code and avoid runtime errors.

Change the working directory to the newly created app:

```cmd
cd my-m365-app
```

Next, install the **mgt-react** npm package which contains Microsoft Graph Toolkit React components, by executing:

```cmd
npm i @microsoft/mgt-react
```

Confirm that you can run the app by executing:

```cmd
HTTPS=true npm start
```

> [!IMPORTANT]
> Your app need to run on HTTPS in order to be able to authenticate against Microsoft 365. For local testing, with the React scripts, you can configure the local web server to run on HTTPS, by setting the `HTTPS` environment variable to `true`. You can do this either each time, by prefixing the `npm start` command with `HTTPS=true` or by setting the environment variable globally on your machine.

You should be able to open your app in the browser via `https://localhost:3000`.

![Newly created React app running in the browser](../images/mgt-base-react-app.png)

[!INCLUDE [AAD with implicit flow app registration](../includes/aad-app-registration-spa.md)]

## Connect React app to Microsoft 365

Now that we have registered our application with Azure Active Directory, we can connect the React app to Microsoft 365. We'll start with allowing users to log in to the app using their Microsoft account.

1. In the Azure Portal, navigate to your application registration
1. Ensure that you are on the **Overview** page
1. From the **Essentials** section, copy the value of the **Application (client) ID** property
   ![Application ID copied from the app registration overview page in the Azure Portal](../images/mgt-azure-add-appreg-copyappid.png)
1. In the code editor open the **src/App.tsx** file, and modify its contents to the following:

      ```tsx
      import { MsalProvider, Providers } from '@microsoft/mgt';
      import { Login } from '@microsoft/mgt-react';
      import React from 'react';
      import './App.css';
      
      function App() {
        Providers.globalProvider = new MsalProvider({
          clientId: 'REPLACE_WITH_CLIENTID'
        });
      
        return (
          <div className="App">
            <header>
              <Login />
            </header>
          </div>
        );
      }
      
      export default App;
      ```

    We start, with configuring the authentication provider that should be used by Microsoft Graph Toolkit. In this case we use MSAL, which is a good default for building standalone applications. If you use any of the extensibility points in Microsoft 365, like Teams or SharePoint, you would use other providers.

    Next, in the provider, we specify the ID of our Azure AD application.

    Finally, we add the **Login** Microsoft Graph Toolkit React component which will display the **Sign In** button people can use to sign in with their Microsoft account to your app.

1. Replace the value of the `clientId` property with the value of the `Application (client) ID` property you copied previously in the Azure Portal
1. Go back to the browser where your React app is running. You should now see a **Sign In** button
   ![React app showing the Sign In button](../images/mgt-react-signin-button.png)
1. If you click the **Sign In** button, you will be prompted to sign in with your Microsoft account (you can use the same account as the one you accessed the Azure Portal with)
1. Since this is the first time you're using this Azure AD application, you need to consent its use in your organization
1. After signing in, you will be redirected to your React app. Notice, how the **Sign In** button changed to show your user's name
  ![React app showing user info retrieved from Microsoft 365 using Microsoft Graph Toolkit](../images/mgt-react-userinfo.png)

## Load data from Microsoft 365

Microsoft Graph Toolkit not only simplifies authentication to Microsoft 365 but also loading its data. In this example, we'll show the signed in person's calendar.

![Person's calendar displayed using Microsoft Graph Toolkit](../images/mgt-finished-app.png)

1. In the code editor, change the contents of the **src/App.tsx** file to:

    ```tsx
    import { MsalProvider, Providers, ProviderState } from '@microsoft/mgt';
    import { Agenda, Login } from '@microsoft/mgt-react';
    import React, { useState } from 'react';
    import './App.css';
    
    function App() {
      const [isLoggedIn, setIsLoggedIn] = useState(false);
      Providers.globalProvider = new MsalProvider({
        clientId: 'REPLACE_WITH_CLIENTID',
        scopes: ['calendars.read', 'user.read', 'openid', 'profile', 'people.read', 'user.readbasic.all']
      });
      Providers.globalProvider.onStateChanged(e => {
        if (Providers.globalProvider.state !== ProviderState.Loading) {
          setIsLoggedIn(Providers.globalProvider.state === ProviderState.SignedIn);
        }
      });
    
      return (
        <div className="App">
          <header>
            <Login />
          </header>
          <div>
            {isLoggedIn &&
              <Agenda />}
          </div>
        </div>
      );
    }
    
    export default App;
    ```

    We start, by enabling tracking state, so that we can tell when user has signed in and when we should load data from Microsoft 365.

    Next, we specify the list of scopes we need for our application in order for it to be able to access user's data. These scopes differ depending on what kind of information you want to show in your application. In our case, we need access to people's calendar as well as we need basic access to information about people which is also displayed in the calendar.

    Then, we add an event handler to the `stateChanged` event on the authentication provider to track sign in state.

    We finish, by including the **Agenda** component and showing it conditionally, after the user has signed in.

1. To see the changes, close the browser and open it again, navigating to `https://localhost:3000`. This is necessary, because we changed the value of the `scopes` property, which affects the access token that we request from Azure AD.
1. Choose the **Sign In** button and sign in using your Microsoft account. Notice, that the list of permissions requested in the consent prompt extended. This is, because we included additional permissions in the `scope` property.
1. After consenting the use of the application, you should see information about the current user as well as their calendar.

![Finished app](../images/mgt-finished-app.png)

## Next steps

- See [what's in the Microsoft Graph Toolkit](../overview.md)
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
