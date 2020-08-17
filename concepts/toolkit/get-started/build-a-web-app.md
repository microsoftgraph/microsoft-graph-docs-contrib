---
title: "Build a web application with Microsoft Graph Toolkit"
description: "How to get started with building a web application using Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a web application with Microsoft Graph Toolkit

## Add Microsoft Graph Toolkit to your application
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

#### Polyfills

If you're using the ES6 modules from the npm package, you will need to include polyfills in your project as they are not automatically included. Polyfills help to fill in missing browser capabilities in browsers that are still in the process of updating to support Web Component standards. To learn more, see polyfills. To install polyfills, run:

```bash
npm install @webcomponents/webcomponents.js
```

The polyfills are already included if you are using the Toolkit via the mgt-loader script.

## Add the MSAL Provider
The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see Providers. The MSAL Provider uses MSAL.js to sign in users and acquire tokens. You can initialize the MSAL provider in your HTML or JavaScript.

### Initialize in your HTML page
Add the `mgt-msal-provider` component to your HTML page and set the `client-id` to your application client-id.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID"></mgt-msal-provider>
```
### Initialize in JavaScript
To initialize the MSAL provider in your JavaScript, add the following code to your application:

```js
import {Providers, MsalProvider} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider(config: {
    clientId: "<YOUR_CLIENT_ID>"
})
```
### Creating an app/client ID
In order to get a client ID, you need to register your application with Azure Active Directory.
