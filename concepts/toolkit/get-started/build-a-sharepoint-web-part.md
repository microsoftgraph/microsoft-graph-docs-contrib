---
title: "Build a SharePoint web part with the Microsoft Graph Toolkit"
description: "Get started using the Microsoft Graph Toolkit to build a SharePoint web part."
ms.localizationpriority: medium
author: sebastienlevert
---

# Build a SharePoint web part with the Microsoft Graph Toolkit

This article covers how to use Microsoft Graph Toolkit components in a [SharePoint client-side web part](/sharepoint/dev/spfx/web-parts/overview-client-side-web-parts). Getting started involves the following steps:

1. Set up your development environment.
1. Create your web part project.
1. Add the Microsoft Graph Toolkit packages.
1. Add the SharePoint Provider.
1. Add components.
1. Configure permissions.
1. Configure webpack
1. Build and deploy your web part.
1. Test your web part.

## Set up your SharePoint Framework development environment and create a new web part

Follow the steps to [Set up your SharePoint Framework development environment](/sharepoint/dev/spfx/set-up-your-development-environment).


# [React based web parts](#tab/react)

## Create your web part project

Follow the directions to [create a new web part](/sharepoint/dev/spfx/web-parts/get-started/build-a-hello-world-web-part). When asked what template you would like to use, choose React.

> [!IMPORTANT]
> You must choose React when selecting your framework when you use `yo @microsoft/sharepoint`.

## Add the Microsoft Graph Toolkit packages

The Microsoft Graph Toolkit publishes multiple packages that are needed to build a SharePoint Framework web part. Installing the `@microsoft/mgt-element`, `@microsoft/mgt-react`, `@microsoft/mgt-sharepoint-provider`, and `@microsoft/mgt-spfx-utils` packages installs the necessary dependencies.

```bash
npm install @microsoft/mgt-element @microsoft/mgt-react @microsoft/mgt-sharepoint-provider @microsoft/mgt-spfx-utils
```

## Add the SharePoint Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). SharePoint web parts always exist in an authenticated context because the user is authenticated in order to get to the page that hosts your web part. Use this context to initialize the [SharePoint provider](../providers/sharepoint.md).

First, add the provider to your web part. Locate the `src\webparts\<your-project>\<your-web-part>.ts` file in your project folder, and add the following line to the top of your file, right below the existing `import` statements:

```ts
import { Providers } from '@microsoft/mgt-element';
import { SharePointProvider } from "@microsoft/mgt-sharepoint-provider";
```

Next, initialize the provider with the authenticated context inside the `onInit()` method of your web part. In the same file, add the following code right before the `public render(): void {` line:

```ts
protected async onInit() {
  if (!Providers.globalProvider) {
    Providers.globalProvider = new SharePointProvider(this.context);
  }
}
```

## Set up disambiguation

To ensure that your web part works if there are multiple web part solutions using Microsoft Graph Toolkit in a single page, you must use disambiguation. For more information, see the [disambiguation](../customize-components/disambiguation.md).

First, update your imports from `@microsoft/mgt-element` and add one for the `lazyLoadComponent` helper.

```ts
import { Providers, customElementHelper } from "@microsoft/mgt-element";
import { lazyLoadComponent } from "@microsoft/mgt-spfx-utils";
```

Next, update the `onInit()` method of the root web part to set up disambiguation. The string used for disambiguation must be unique to your SharePoint Framework solution:

```ts
protected async onInit(): Promise<void> {
  if (!Providers.globalProvider) {
    Providers.globalProvider = new SharePointProvider(this.context);
  }
  customElementHelper.withDisambiguation('contoso-hr-solution');
  return super.onInit();
}
```

## Update the import and rendering of the React component

First, convert the import of the component to use [`React.lazy`](https://react.dev/reference/react/lazy#reference). Locate the statement `import <WebPartName> from './components/<WebPartName>;` and update it to the following:

```ts
const MgtComponent = React.lazy(
  () =>
    import(/* webpackChunkName: 'mgt-react-component' */ "./components/<WebPartName>")
);
```

Next, modify the render method to use the `lazyLoadComponent` helper:

```ts
  public render(): void {
    const element = lazyLoadComponent<IHelloWorldProps>(MgtComponent, {
      description: this.properties.description,
      isDarkTheme: this._isDarkTheme,
      environmentMessage: this._environmentMessage,
      hasTeamsContext: !!this.context.sdks.microsoftTeams,
      userDisplayName: this.context.pageContext.user.displayName
    });

    ReactDom.render(element, this.domElement);
  }
```

Now your web part should look like this:

```ts
import * as React from "react";
import * as ReactDom from "react-dom";
import { Version } from "@microsoft/sp-core-library";
import {
  type IPropertyPaneConfiguration,
  PropertyPaneTextField,
} from "@microsoft/sp-property-pane";
import { BaseClientSideWebPart } from "@microsoft/sp-webpart-base";
import { IReadonlyTheme } from "@microsoft/sp-component-base";
import { Providers, customElementHelper } from "@microsoft/mgt-element";
import { lazyLoadComponent } from "@microsoft/mgt-spfx-utils";
import { SharePointProvider } from "@microsoft/mgt-sharepoint-provider";

import * as strings from "HelloWorldWebPartStrings";
const HelloWorld = React.lazy(
  () =>
    import(
      /* webpackChunkName: 'mgt-react-component' */ "./components/HelloWorld"
    )
);
import { IHelloWorldProps } from "./components/IHelloWorldProps";

export interface IHelloWorldWebPartProps {
  description: string;
}

export default class HelloWorldWebPart extends BaseClientSideWebPart<IHelloWorldWebPartProps> {
  private _isDarkTheme: boolean = false;
  private _environmentMessage: string = "";

  public render(): void {
    const element = lazyLoadComponent<IHelloWorldProps>(HelloWorld, {
      description: this.properties.description,
      isDarkTheme: this._isDarkTheme,
      environmentMessage: this._environmentMessage,
      hasTeamsContext: !!this.context.sdks.microsoftTeams,
      userDisplayName: this.context.pageContext.user.displayName,
    });

    ReactDom.render(element, this.domElement);
  }

  protected async onInit(): Promise<void> {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
    customElementHelper.withDisambiguation("contoso-hr-solution");
    return super.onInit();
  }
  // [...] trimmed for brevity
}
```

## Add components

Add the components to the React component. Locate and open the `src\webparts\<your-project>\components\<your-component>.tsx` file and add the import for the component you want to use - in this case, the `Person` component - and then update the `render()` method to use the Person component. Now your component should look like this:

```tsx
import * as React from 'react';
import type { IHelloWorldProps } from './IHelloWorldProps';
import { Person } from '@microsoft/mgt-react';

export default class HelloWorld extends React.Component<IHelloWorldProps, {}> {
  public render(): React.ReactElement<IHelloWorldProps> {
    return (<Person personQuery="me" view="twolines" />);
  }
}
```

Or if you prefer to use React Functional Components:

```tsx
import * as React from 'react';
import type { IHelloWorldProps } from './IHelloWorldProps';
import { Person, ViewType } from '@microsoft/mgt-react';

const HelloWorld = (props: IHelloWorldProps): React.ReactElement => <Person personQuery="me" view={ViewType.twolines} />;

export default HelloWorld;
```


# [No framework web parts](#tab/html)

## Create your web part project

Follow the directions to [create a new web part](/sharepoint/dev/spfx/web-parts/get-started/build-a-hello-world-web-part).

## Add the Microsoft Graph Toolkit packages

The Microsoft Graph Toolkit publishes multiple packages that are needed to build a SharePoint Framework web part. Install the Microsoft Graph Toolkit npm packages by using the following command:

```bash
npm install @microsoft/mgt-element @microsoft/mgt-components @microsoft/mgt-sharepoint-provider
```

## Add the SharePoint Provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). SharePoint web parts always exist in an authenticated context because the user is authenticated in order to get to the page that hosts your web part. Use this context to initialize the [SharePoint provider](../providers/sharepoint.md).

First, add the provider to your web part. Locate the `src\webparts\<your-project>\<your-web-part>.ts` file in your project folder, and add the following line to the top of your file, right below the existing `import` statements:

```ts
import { Providers } from '@microsoft/mgt-element';
import { SharePointProvider } from "@microsoft/mgt-sharepoint-provider";
```

Next, initialize the provider with the authenticated context inside the `onInit()` method of your web part. In the same file, add the following code right before the `public render(): void {` line:

```ts
protected async onInit() {
  if (!Providers.globalProvider) {
    Providers.globalProvider = new SharePointProvider(this.context);
  }
}
```

## Set up disambiguation

To ensure that your web part works if there are multiple web part solutions using Microsoft Graph Toolkit in a single page, you must use disambiguation. For more information, see the [disambiguation](../customize-components/disambiguation.md) article.

First, update your imports from `@microsoft/mgt-element`

```ts
import { Providers, customElementHelper } from '@microsoft/mgt-element';
```

Next, update the `onInit()` method to set up disambiguation. The string used for disambiguation must be unique to your SharePoint Framework solution:

```ts
protected async onInit() {
  if (!Providers.globalProvider) {
    Providers.globalProvider = new SharePointProvider(this.context);
  }
  customElementsHelper.withDisambiguation('contoso-hr-solution');
}
```

## Add components

Now, you can start adding components to your web part. First import the relevant register functions:

```ts
import { registerMgtPersonComponent } from '@microsoft/mgt-components';
```

> [!NOTE]
> The registration functions use a naming convention of `registerMgt{Name}Component()`. For the people picker control, this function would be `registerMgtPeoplePickerComponent()`.

Call the register functions after configuring disambiguation in your `onInit()` method:

```ts
protected async onInit() {
  if (!Providers.globalProvider) {
    Providers.globalProvider = new SharePointProvider(this.context);
  }
  customElementsHelper.withDisambiguation('contoso-hr-solution');
  registerMgtPersonComponent();
}
```

Add the components to the HTML inside of the `render()` method, and the components use the SharePoint context to access Microsoft Graph. For example, to add the [Person component](../components/person.md), your code looks like:

```ts
public render(): void {
    this.domElement.innerHTML = `
      <mgt-contoso-hr-solution-person person-query="me" view="twolines"></mgt-person>
    `;
}
```

---

## Configure permissions

To call Microsoft Graph from your SharePoint Framework application, you need to request the needed permissions in your solution package and a Microsoft 365 tenant administrator needs to approve the requested permissions.

To add the permissions to your solution package, locate and open the `config\package-solution.json` file and set:

```json
"isDomainIsolated": false,
```

Just below that line, add the following line:

```json
"webApiPermissionRequests":[],
```

Determine which Microsoft Graph API permissions you need to depend on the components you're using. Each component's documentation page provides a list of the permissions that component requires. You'll need to add each required permission to `webApiPermissionRequests`. For example, if you're using the Person component and the Agenda component, your `webApiPermissionRequests` might look like:

```json
"webApiPermissionRequests": [
  {
    "resource": "Microsoft Graph",
    "scope": "User.Read"
  },
  {
    "resource": "Microsoft Graph",
    "scope": "Calendars.Read"
  }
]
```

## Configure webpack

In order to build your web part, the SharePoint Framework webpack configuration must be updated to correctly handle modern JavaScript with optional chaining and nullish coalescing through additional Babel transforms.

### Install Babel packages

To correctly handle dependencies that emit ES2021 based code, a babel loader and some transforms need to be added as dev dependencies to the project.

```bash
npm i --save-dev babel-loader@8.3.0 @babel/plugin-transform-optional-chaining @babel/plugin-transform-nullish-coalescing-operator @babel/plugin-transform-logical-assignment-operators
```

### Modify the webpack configuration

SharePoint Framework provides an extensibility model to [modify the webpack configuration](/sharepoint/dev/spfx/toolchain/extending-webpack-in-build-pipeline) used to bundle the web parts. Locate and open `gulpfile.js`. Add the following code above the line containing `build.initialize(require('gulp'));`

```JavaScript
const path = require("path");
const litFolders = [
  `node_modules${path.sep}lit${path.sep}`,
  `node_modules${path.sep}@lit${path.sep}`,
  `node_modules${path.sep}lit-html${path.sep}`
];
build.configureWebpack.mergeConfig({
  additionalConfiguration: generatedConfiguration => {
    generatedConfiguration.module.rules.push({
      test: /\.js$/,
      // only run on lit packages
      include: resourcePath => 
        litFolders.some(litFolder => resourcePath.includes(litFolder)),
      use: {
        loader: 'babel-loader',
        options: {
          plugins: [
            '@babel/plugin-transform-optional-chaining',
            '@babel/plugin-transform-nullish-coalescing-operator',
            '@babel/plugin-transform-logical-assignment-operators'
          ]
        }
      }
    });
    return generatedConfiguration;
  }
});
```

This ensures that the code from the `lit` library is correctly processed by the SharePoint Framework build chain.

## Build and deploy your web part

Now, you'll build your application and deploy it to SharePoint. Build your application by running the following commands:

```bash
gulp build
gulp bundle
gulp package-solution
```

In the `sharepoint/solution` folder, there is a new `.sppkg` file. You need to upload this file to your SharePoint Online App Catalog. Go to the [More features page of your SharePoint admin center](https://admin.microsoft.com/sharepoint?page=classicfeatures&modern=true). Select **Open** under **Apps**, then select **App Catalog**, and **Distribute apps for SharePoint**. Upload your `.sppkg` file, and select **Deploy**.

Next, you need to approve the permissions as an administrator.

Go to your **SharePoint Admin center**. In the left-hand navigation, select **Advanced** and then **API Access**. You should see pending requests for each of the permissions you added in your `config\package-solution.json` file. Select and approve each permission.

## Test your web part

You're now ready to add your web part to a SharePoint page and test it out. You'll need to use the hosted workbench to test web parts that use the Microsoft Graph Toolkit because the components need the authenticated context in order to call Microsoft Graph. You can find your hosted workbench at **https://<YOUR_TENANT>.sharepoint.com/\_layouts/15/workbench.aspx**.

Open the `config\serve.json` file in your project and replace the value of `initialPage` with the URL for your hosted workbench:

```json
"initialPage": "https://<YOUR_TENANT>.sharepoint.com/_layouts/15/workbench.aspx",
```

Save the file and then run the following command in the console to build and preview your web part:

```bash
gulp serve
```

Your hosted workbench automatically opens in your browser. Add your web part to the page and you should see your web part with the Microsoft Graph Toolkit components in action! As long as the gulp serve command is still running in your console, you can continue to make edits to your code and then just refresh your browser to see your changes.

## Next Steps

- Check out this step-by-step tutorial on [building a SharePoint web part](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-9-microsoft-graph-toolkit-sharepoint-provider/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
