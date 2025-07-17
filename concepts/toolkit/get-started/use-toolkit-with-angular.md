---
title: "Use the Microsoft Graph Toolkit with Angular"
description: "Get started using the Microsoft Graph Toolkit in an Angular application."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---

# Use the Microsoft Graph Toolkit with Angular

Microsoft Graph Toolkit components work great with web frameworks like Angular in addition to vanilla JavaScript and HTML. This topic describes how to use the Microsoft Graph Toolkit with Angular. For a step-by-step walkthrough that describes how to create a new Angular application and use the Microsoft Graph Toolkit, see [Using Microsoft Graph Toolkit with Angular](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-14-using-microsoft-graph-toolkit-with-angular/).

## Add the Microsoft Graph Toolkit

First, you need to enable custom elements in your Angular application by adding the `CUSTOM_ELEMENTS_SCHEMA` to the `@NgModule() decorator` in `app.module.ts`. The following example shows how to do this:

```TypeScript
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

Next, add the Microsoft Graph Toolkit to your project by installing the npm package with:

```Command Line
npm install @microsoft/mgt
```

## Initialize a provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The provider you use depends on the context in which your solution will be used.

The following example shows how to add the [MSAL2 Provider](../providers/msal2.md), but you can follow the same model with any of the providers.

> [!NOTE]
> If you are currently using the MSAL Provider and would like to update to the MSAL2 Provider, follow the steps in the [MSAL2 Provider](../providers/msal2.md#migrating-from-msal-provider-to-msal2-provider) article.

Import the provider and set it to initialize when the application initializes. Replace `<YOUR-CLIENT-ID>` with the client ID for your application.

```TypeScript
import { Component, OnInit } from '@angular/core';
import { Providers, Msal2Provider } from '@microsoft/mgt';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

    ngOnInit()
    {
        Providers.globalProvider = new Msal2Provider({
            clientId: '<YOUR-CLIENT-ID>'
        });
    }
}
```

### Create an app/client ID

In order to get a client ID, you need to [register your application](../../auth-register-app-v2.md) in Microsoft Entra ID.

## Add components

Now, you can register and use any of the Microsoft Graph Toolkit components as you normally would in your HTML templates. For example, to add the [Person component](../components/person.md), update the app to register the component:


```TypeScript
import { Component, OnInit } from '@angular/core';
import { Providers } from '@microsoft/mgt-element';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';
import { registerMgtPersonComponent } from '@microsoft/mgt-components';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

    ngOnInit()
    {
        Providers.globalProvider = new Msal2Provider({
            clientId: '<YOUR-CLIENT-ID>'
        });
        registerMgtPersonComponent();
    }
}
```

And then add the following to your template:

```html
<mgt-person person-query="me" view="twolines"></mgt-person>
```

> **Note:** The register component functions should be invoked close to their use in subcomponents. This ensures that in larger applications where code splitting and tree shaking are used during bundling, the weight of those components can be deferred until necessary.

## Customizing components with Angular

All Microsoft Graph Toolkit components support [custom templates](../customize-components/templates.md), which allow you to modify the content of a component. The default syntax for customizing the components is to use double braces to refer to the property data for each of the returned items, as shown:

```html
<!-- Double braces are used for data binding in Angular. This will throw an error. -->
<mgt-agenda>
  <template data-type="event">
    <div>{{event.subject}}</div>
  </template>
</mgt-agenda>
```

In Angular, however, double braces are used for data binding and the Angular compiler will throw an error if you try to use the double brace syntax.

You can avoid these errors by changing the default characters used by the Toolkit to something other than double braces by using the `TemplateHelper`. It is best to do this in your top-level App component so that it applies globally.

Import the `TemplateHelper` and use the `.setBindingSyntax()` method to set your custom binding syntax.

```TypeScript
import { Component, OnInit } from '@angular/core';
import { Providers, TemplateHelper } from '@microsoft/mgt-element';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';
import { registerMgtPersonComponent } from '@microsoft/mgt-components';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

    ngOnInit()
    {
        Providers.globalProvider = new Msal2Provider({ clientId: '<YOUR-CLIENT-ID>'})
        TemplateHelper.setBindingSyntax('[[',']]');
        registerMgtPersonComponent();
    }
}
```

Now, you can use your custom binding syntax to define custom templates.

```html
<mgt-agenda>
  <template data-type="event">
    <div>[[event.subject]]</div>
  </template>
</mgt-agenda>
```

## Next steps

- Check out this step-by-step tutorial on [building an Angular app](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-14-using-microsoft-graph-toolkit-with-angular/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
