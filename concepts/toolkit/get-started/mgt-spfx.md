---
title: "Microsoft Graph Toolkit in SharePoint Framework solutions"
description: "Use Microsoft Graph Toolkit to develop SharePoint Framework solutions."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Graph Toolkit in SharePoint Framework solutions

Use Microsoft Graph Toolkit in your SharePoint Framework solutions.

> [!IMPORTANT]
> The `@microsoft/mgt-spfx` package has been discontinued. Use [disambiguation](../customize-components/disambiguation.md) for your SharePoint Framework web parts. 

## Installation

To load Microsoft Graph Toolkit components from the library, add the `@microsoft/mgt-element`, `@microsoft/mgt-components`, and `@microsoft/mgt-sharepoint-provider` packages as a runtime dependency to your SharePoint Framework project:

```bash
npm install @microsoft/mgt-element @microsoft/mgt-components @microsoft/mgt-sharepoint-provider
```

or

```bash
yarn add @microsoft/mgt-element @microsoft/mgt-components @microsoft/mgt-sharepoint-provider
```

## Usage

When building SharePoint Framework web parts and extensions, reference the Microsoft Graph Toolkit `customElementsHelper`, `Provider`, and `SharePointProvider` from the `@microsoft/mgt-element` and `@microsoft/mgt-sharepoint-provider`. If you aren't using React, you should also import the component registration functions from `@microsoft/mgt-components` packages.

### For non-React based solutions

```ts
import { customElementsHelper, Providers } from '@microsoft/mgt-element';
import { SharePointProvider } from "@microsoft/mgt-sharepoint-provider";
import { registerMgtPersonComponent } from '@microsoft/mgt-components';

// [...] trimmed for brevity

export default class MgtWebPart extends BaseClientSideWebPart<IMgtWebPartProps> {
  protected async onInit() {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
    customElementsHelper.withDisambigutaion('contoso-hr-solution');
    registerMgtPersonComponent();
  }

  public render(): void {
    this.domElement.innerHTML = `
      <div>
        <mgt-contoso-hr-solution-person person-query="me"></mgt-person>
      </div>`;
  }

  // [...] trimmed for brevity
}
```

### React

If you're building a web part using React, you can use the `@microsoft/mgt-react` package and skip the manual registration of components. However, make sure that you lazy load your React component from the web part to make use of disambiguation.

```ts
// [...] trimmed for brevity
import { Providers, customElementHelper } from "@microsoft/mgt-element";
import { SharePointProvider } from "@microsoft/mgt-sharepoint-provider";
import { lazyLoadComponent } from "@microsoft/mgt-spfx-utils";


// Async import of component that imports the React Components
const MgtReact = React.lazy(
  () =>
    import(/* webpackChunkName: 'mgt-react-component' */ "./components/MgtReact")
);

// set the disambiguation before initializing any web part
customElementHelper.withDisambiguation("mgt-demo-client-side-solution");

export default class MgtDemoWebPart extends BaseClientSideWebPart<IMgtDemoWebPartProps> {
  // set the global provider
  protected async onInit(): Promise<void> {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
    return super.onInit();
  }

  public render(): void {
    const element = lazyLoadComponent(MgtReact, {
      description: this.properties.description
    });

    ReactDom.render(element, this.domElement);
  }
// [...] trimmed for brevity
}
```

In the underlying React components, the Microsoft Graph Toolkit component can be used directly.

```tsx
import { Person } from '@microsoft/mgt-react';
import { ViewType } from '@microsoft/mgt-components';

// [...] trimmed for brevity

export default class MgtReact extends React.Component<IMgtReactProps, {}> {
  public render(): React.ReactElement<IMgtReactProps> {
    return (
      <div className={ styles.mgtReact }>
        <Person personQuery="me" view={ViewType.image}></Person>
      </div>
    );
  }
}
```

> [!IMPORTANT]
> Make sure that your root web part class does not import any Microsoft Graph Toolkit resources from `@microsoft/mgt-react`. These should only be imported inside the lazy loaded React components.

## Configure webpack

To build your web part, you must update the SharePoint Framework webpack configuration to correctly handle modern JavaScript with optional chaining and nullish coalescing through additional Babel transforms.

> ![IMPORTANT]
> If you don't configure webpack to process modern JavaScript, you won't be able to build web parts that use Microsoft Graph Toolkit. 

### Install Babel packages

To correctly handle dependencies that emit ES2021 based code, add a babel loader and some transforms as dev dependencies to the project.

```bash
npm i --save-dev babel-loader@8.3.0 @babel/plugin-transform-optional-chaining @babel/plugin-transform-nullish-coalescing-operator @babel/plugin-transform-logical-assignment-operators
```

### Modify the webpack configuration

SharePoint Framework provides an extensibility model to [modify the webpack configuration](/sharepoint/dev/spfx/toolchain/extending-webpack-in-build-pipeline) used to bundle the web parts. Locate and open `gulpfile.js`. Add the following code above the line that contains `build.initialize(require('gulp'));`:

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


## Related content

* [Build a SharePoint web part with the Microsoft Graph Toolkit](./build-a-sharepoint-web-part.md)
* [Learn about authentication providers](../providers/providers.md)
* [Disambiguation of Microsoft Graph Toolkit components](../customize-components/disambiguation.md) 
