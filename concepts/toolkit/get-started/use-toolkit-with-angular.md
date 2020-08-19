---
title: "Use Microsoft Graph Toolkit with Angular"
description: "How to get started using Microsoft Graph Toolkit in an Angular application."
localization_priority: Normal
author: elisenyang
---

# Using Microsoft Graph Toolkit with Angular

Microsoft Graph Toolkit components work great with web frameworks like Angular in addition to vanilla JavaScript and HTML.

## Adding Microsoft Graph Toolkit

First, you need to enable custom elements in your Angular application by adding the `CUSTOM_ELEMENT_SCHEMA` to the `@NgModule() decorator` in `app.module.ts`. The following example shows how to do this:
```ts
import { BrowserModule } from '@angular/platform-browser';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';

import { AppComponent } from './app.component';

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
```
Next, add Microsoft Graph Toolkit to your project by installing the npm package with:
```bash
npm install @microsoft/mgt
```
## Initializing a Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers.md). The provider you should use depends on the context in which your solution will be used.

For example, to add the [MSAL Provider](../providers/msal.md), import the provider and set it to initialize when the application initializes. Replace `clientId` with the client ID for your application.

```ts
import { Component, OnInit } from '@angular/core';
import { Providers, MsalProvider } from '@microsoft/mgt';

@Component({
    selector: 'app-root,
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

    ngOnInit()
    {
        Providers.globalProvider = new MsalProvider({
            clientId: '<YOUR-CLIENT-ID>'
        });
    }
}
```
### Creating an app/client ID
In order to get a client ID, you need to [register your application](https://docs.microsoft.com/graph/auth-register-app-v2) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**.

## Adding components

Now, you can use any of the Microsoft Graph Toolkit components as you normally would in your HTML templates. For example, to add the [Person component](../components/person.md), you would use:

```html
<mgt-person person-query="me" view="twolines"></mgt-person>
```

## Templating components with Angular

All of the components support [custom templates](../templates.md) which allow you to modify the content of a component. The default syntax for templating is to use double braces to refer to the property data for each of the returned items.

In Angular, double braces are used for databinding and the Angular compiler will throw an error if you try to use a custom template with double braces.

You can avoid these errors by changing the characters used by the Toolkit using the `TemplateHelper`. It is best to do this in your top-level App component so that it applies globally.

Import the TemplateHelper and use `.setBindingSyntax()` to set your custom binding syntax.

```ts
import { Component, OnInit } from '@angular/core';
import { Providers, MsalProvider, TemplateHelper } from '@microsoft/mgt;

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css]
})
export class AppComponent implements OnInit {

    ngOnInit()
    {
        Providers.globalProvider = new MsalProvider({ clientId: '<YOUR-CLIENT-ID>'})
        TemplateHelper.setBindingSyntax('[[',']]');
    }
}
```

## Next Steps




