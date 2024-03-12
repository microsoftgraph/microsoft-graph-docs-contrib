---
title: "Build a web application with Microsoft Graph Toolkit"
description: "Get started building a web application using Microsoft Graph Toolkit."
ms.localizationpriority: medium
author: sebastienlevert
---

# Build a web application with the Microsoft Graph Toolkit

This topic describes how to get started with Microsoft Graph Toolkit in a web application written in vanilla JavaScript. For a step-by-step tutorial, try the [Get started with Microsoft Graph Toolkit module](/training/modules/msgraph-toolkit-intro/). If you would like to learn how to use the Toolkit with a web framework, see [Build a web app (React)](./use-toolkit-with-react.md) or [Build a web app (Angular)](./use-toolkit-with-angular.md).

Getting started with the Toolkit involves the following steps:

1. Add Microsoft Graph Toolkit to your project.
2. Initialize the Microsoft Authentication Library 2(MSAL2) Provider.
3. Add components.
4. Test your application.

## Add Microsoft Graph Toolkit to your project

You can use Microsoft Graph Toolkit in your application by installing the npm packages or loading it from a Content Delivery Network(CDN).

# [CDN](#tab/cdn)

To use the toolkit via a CDN, add the following script and markup to your HTML page:

```html
<script type="module">
  import {
    registerMgtComponents,
    Providers,
    Msal2Provider,
  } from "https://unpkg.com/@microsoft/mgt@4";
  Providers.globalProvider = new Msal2Provider({ clientId: "[CLIENT-ID]" });
  registerMgtComponents();
</script>
```

# [npm](#tab/npm)

Using the Toolkit via ES6 modules gives you the full control of the bundling process and allows you to bundle only the code you need for your application. To use the ES6 modules, add the following npm packages to your project:

```cmd
npm install @microsoft/mgt-components
npm install @microsoft/mgt-msal2-provider
```

---

## Initialize the MSAL2 Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [MSAL2 Provider](../providers/msal2.md) uses MSAL-browser to sign in users and acquire tokens. You can initialize this provider in your HTML or JavaScript.

> **Note**: If you're currently using the MSAL Provider and would like to update to MSAL2 Provider, see [Migrating from MSAL Provider to MSAL2 Provider](../providers/msal2.md#migrating-from-msal-provider-to-msal2-provider).
> If you want to use your own backend authentication, use the [Proxy Provider](../providers/proxy.md) in place of the MSAL2 Provider.

You can choose to initialize the provider in either your JavaScript code or HTML.

# [JavaScript](#tab/javascript)

To initialize the MSAL provider in your JavaScript, add the following code to your application:

```javascript
import { Providers } from "@microsoft/mgt-element";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";

Providers.globalProvider = new Msal2Provider({
  clientId: "<YOUR_CLIENT_ID>",
});
```

# [HTML](#tab/html)

If you prefer to use a declarative approach, you can alter the initialization script and add the `mgt-msal2-provider` component to your HTML page, and set the `client-id` to your application client-id.

```html
<script type="module">
  import {
    registerMgtComponents,
    registerMgtMsal2Provider,
  } from "https://unpkg.com/@microsoft/mgt@4";
  registerMgtMsal2Provider();
  registerMgtComponents();
</script>
<mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal2-provider>
```

---

The client ID is the only property required to initialize the provider, but you can set more options. For the full list, see [MSAL2 Provider](../providers/msal2.md).

### Creating an app/client ID

In order to get a client ID, you need to [register your application](./add-aad-app-registration.md) in Microsoft Entra ID.

## Add components

After you initialize the MSAL2 provider, you can start using any of the Toolkit components.

# [JavaScript](#tab/javascript)

This example is using the ES6 modules, the MSAL2 Provider initialized in JavaScript, and the `Login` component:

```javascript
import { Providers } from "@microsoft/mgt-element";
import { registerMgtLoginComponent } from "@microsoft/mgt-components";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";

Providers.globalProvider = new Msal2Provider({
  clientId: "<YOUR_CLIENT_ID>",
});

registerMgtLoginComponent();

function component() {
  const element = document.createElement("div");
  element.innerHTML = "<mgt-login></mgt-login>";
  return element;
}

document.body.appendChild(component());
```

# [HTML](#tab/html)

The following example shows a fully working usage that is loading Microsoft Graph Toolkit from a CDN, the MSAL2 Provider initialized in JavaScript, and the `Login` component:

```html
<script type="module">
  import {
    registerMgtComponents,
    Providers,
    Msal2Provider,
  } from "https://unpkg.com/@microsoft/mgt@4";
  Providers.globalProvider = new Msal2Provider({ clientId: "[CLIENT-ID]" });
  registerMgtComponents();
</script>
<mgt-login></mgt-login>
```

---

The following example uses the ES6 modules, the MSAL2 Provider initialized in HTML, and the sign-in component:

```html
<script type="module">
  import { registerMgtMsal2Provider } from "node_modules/@microsoft/mgt-msal2-provider/dist/es6/index.js";
  import { registerMgtLoginComponent } from "node_modules/@microsoft/mgt-components/dist/es6/index.js";
  registerMgtMsal2Provider();
  registerMgtLoginComponent();
</script>

<mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal2-provider>
<mgt-login></mgt-login>
```

---

## Test your app

To test your app, MSAL requires the page to be hosted in a web server for the authentication redirects.

If you're just getting started and want to play around, you can use [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) in Visual Studio Code or any similar lightweight development server. Download the extension and open your HTML file using live server.

> **Note:** Make sure the **redirect URI** in your app registration is set to the localhost port your application is hosted on. Go to your app registration in the [Microsoft Entra admin center](https://entra.microsoft.com), click **Authentication** under manage, and add the correct **redirect URI**.

## Track a user's sign in state

You can detect when a user is successfully signed in and display specific components accordingly. For example, display the agenda component if the user is signed in. Otherwise, display the sign in interface.

The package `mgt-element` provides the `isSignedIn` utility function that you can call to ascertain if a user is signed in.

# [JavaScript](#tab/javascript)

If you're using the toolkit via the npm packages, you can import the `Provider` and `ProviderState` from `@microsoft/mgt-element`.

```javascript
import { Providers } from "@microsoft/mgt-element";
import {
  registerMgtLoginComponent,
  registerMgtAgendaComponent,
} from "@microsoft/mgt-components";
import { Msal2Provider } from "@microsoft/mgt-msal2-provider";
import { isSignedIn } from "@microsoft/mgt-element";

Providers.globalProvider = new Msal2Provider({
  clientId: "<YOUR_CLIENT_ID>",
});

registerMgtLoginComponent();
registerMgtAgendaComponent();

const loadAgenda = () => {
  if (isSignedIn()) {
    document.getElementById("main").innerHTML = "<mgt-agenda></mgt-agenda>";
  }
};

Providers.onProviderUpdated(loadAgenda);
```

# [HTML](#tab/html)

If you're using the toolkit from a CDN, you need to access JavaScript functions and objects by using a module script in the same way that you do when using the toolkit via npm packages.

```html
<!DOCTYPE html>
<html>
  <head> </head>
  <body>
    <script type="module">
      import {
        registerMgtComponents,
        Providers,
        Msal2Provider,
      } from "https://unpkg.com/@microsoft/mgt@4";
      Providers.globalProvider = new Msal2Provider({ clientId: "[CLIENT-ID]" });
      registerMgtComponents();
      const loadAgenda = () => {
        if (Providers.globalProvider.state === ProviderState.SignedIn) {
          document.getElementById("main").innerHTML =
            "<mgt-agenda></mgt-agenda>";
        }
      };
      Providers.onProviderUpdated(loadAgenda);
    </script>
    <div id="main">
      <mgt-login></mgt-login>
    </div>
    <script></script>
  </body>
</html>
```

---

## Next Steps

- Check out the [Get started with Microsoft Graph Toolkit](/training/modules/msgraph-toolkit-intro/) step-by-step tutorial.
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
