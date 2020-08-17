---
title: "Build a web application with Microsoft Graph Toolkit"
description: "How to get started with building a web application using Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a web application with Microsoft Graph Toolkit

To get started with Microsoft Graph Toolkit in your web application, you will need to:
1. Add Microsoft Graph Toolkit to your project
2. Initialize the MSAL Provider
3. Add components

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
In order to get a client ID, you need to [register your application](https://docs.microsoft.com/en-us/graph/auth-register-app-v2) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## Add components
Once you've initialized the MSAL provider, you can start using any of the Toolkit components.

The following is a full working example using mgt-loader, the MSAL Provider initialized in HTML, and the Login component:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="[CLIENT-ID]"></mgt-msal-provider>
<mgt-login></mgt-login>
```
This is an example using the ES6 modules, the MSAL Provider initialized in JavaScript, and the Login Component:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/providers/mgt-msal-provider.js"></script>
<script src="node_modules/@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js"></script>
<script type="module">
    import {Providers, MsalProvider} from '@microsoft/mgt'

    Providers.globalProvider = new MsalProvider({
        clientId: "<YOUR_CLIENT_ID>"
    })
</script>
<mgt-login></mgt-login>
```
## Next Steps
