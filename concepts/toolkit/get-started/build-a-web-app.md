---
title: "Build a web application with Microsoft Graph Toolkit"
description: "How to get started building a web application using Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a web application with Microsoft Graph Toolkit

This topic describes how to get started with Microsoft Graph Toolkit in a web application written in vanilla JavaScript. If you would like to learn how to use the Toolkit with a web framework, see [Use Toolkit with React](./use-toolkit-with-react.md) or [Use Toolkit with Angular](./use-toolkit-with-angular.md).

To get started with Microsoft Graph Toolkit in your web application, the high-level steps you will need to follow include:
1. Add Microsoft Graph Toolkit to your project
2. Initialize the MSAL Provider
3. Add components
4. Test your application

## Add Microsoft Graph Toolkit to your project
You can use Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package.

### Use via mgt-loader
To use the Toolkit via mgt-loader, add the reference in a script to your code:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm package to your project:

```bash
npm install @microsoft/mgt
```
You will need to include polyfills in your project as they are not automatically included. Polyfills help to fill in missing browser capabilities in browsers that are still in the process of updating to support Web Component standards. To learn more, see [polyfills](https://www.webcomponents.org/polyfills). To install polyfills, run:

```bash
npm install @webcomponents/webcomponentsjs
```

The polyfills are already included if you are using the Toolkit via the mgt-loader script.

Now, you can reference the all of the Toolkit components in your application with:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components.js"></script>
```
Or, reference only the components you need and avoid loading everything else. For example, to add the MSAL Provider:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/providers/mgt-msal-provider.js"></script>
```

## Initialize the MSAL Provider
The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers.md). The [MSAL Provider](../providers/msal.md) uses MSAL.js to sign in users and acquire tokens. You can initialize the MSAL provider in your HTML or JavaScript.

If you would like to use your own backend authentication, use the [Proxy Provider](../providers/proxy.md) in place of the MSAL provider.

You can choose to initialize the provider in either your HTML or your JavaScript code. Both methods are shown below.

### Initialize in your HTML page
Add the `mgt-msal-provider` component to your HTML page and set the `client-id` to your application client-id.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID"></mgt-msal-provider>
```
### Initialize in JavaScript
To initialize the MSAL provider in your JavaScript, add the following code to your application:

```js
import {Providers, MsalProvider} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider({
    clientId: "<YOUR_CLIENT_ID>"
})
```
The client ID is the only property required to initialize the provider, but there are additional options you can set. See [Msal Provider](../providers/msal.md) for the full list.

### Creating an app/client ID
In order to get a client ID, you need to [register your application](https://docs.microsoft.com/graph/auth-register-app-v2) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## Add components
Once you've initialized the MSAL provider, you can start using any of the Toolkit components.

The following is a full working example using mgt-loader, the MSAL Provider initialized in HTML, and the Login component:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>
<mgt-login></mgt-login>
```

This is an example using the ES6 modules, the MSAL Provider initialized in HTML, and the Login Component:
```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/providers/mgt-msal-provider.js"></script>
<script src="node_modules/@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js"></script>
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>
<mgt-login></mgt-login>
```

This is an example using the ES6 modules, the MSAL Provider initialized in JavaScript, and the Login Component:

```js
import {Providers, MsalProvider} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider({
    clientId: "<YOUR_CLIENT_ID>"
})

function component() {
    const element = document.createElement('div');
    element.innerHTML = '<mgt-login></mgt-login>'
    return element;
}

document.body.appendChild((component()));
```

## Test your app

In order to test your app, MSAL requires the page to be hosted in a web server for the authentication redirects. 

If you're just getting started and want to play around, you can use [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) in Visual Studio Code or any similar lightweight development server. Download the extension and open your HTML file using live server. 
> **NOTE:** Make sure the **redirect URI** in your app registration is set to the localhost port your application is hosted on. Go to your app registration in the [Azure portal](https://portal.azure.com), click **Authentication** under manage, and add the correct **redirect URI**.

## Next Steps
- Check out this step-by-step tutorial on [building a simple web app](https://developer.microsoft.com/microsoft-365/blogs/a-lap-around-microsoft-graph-toolkit-day-2-zero-to-hero/)
- Try out the components in the [playground](https://mgt.dev)
- Ask a question on [StackOverflow](https:aka.ms/mgt-question)
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt)
