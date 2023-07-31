---
title: "Microsoft Graph Toolkit component disambiguation"
description: "Learn about the disambiguation feature of Microsoft Graph Toolkit and how to use it."
ms.localizationpriority: medium
author: gavinbarron
---

# Microsoft Graph Toolkit component disambiguation

The Microsoft Graph Toolkit is built using [web components](https://developer.mozilla.org/en-US/docs/Web/Web_Components). Web components use their tag name as a unique key when registering within a browser. Any attempt to register a component using a previously registered tag name results in an error when calling `CustomElementRegistry.define()`. In scenarios where multiple custom applications can be loaded into a single page, this creates issues for Microsoft Graph Toolkit, most notably when developing solutions using SharePoint Framework.

The [`mgt-spfx`](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/packages/mgt-spfx) package helps to mitigate this challenge. By using `mgt-spfx`, you can centralize the registration of Microsoft Graph Toolkit web components across all SPFx solutions deployed on the tenant. By reusing toolkit components from a central location, web parts from different solutions can be loaded into a single page without throwing errors. When you use `mgt-spfx`, all Microsoft Graph Toolkit-based web parts in a SharePoint tenant use the same version of the toolkit.

The disambiguation feature enables you to build web parts using the latest version of Microsoft Graph Toolkit and load them on pages along with web parts that use v2.x. By using this feature, you can specify a unique string to add to the tag name of all toolkit web components in their application. When using disambiguation, the supplied value is inserted as the second segment of the tag name, so when using `customElementHelper.withDisambiguation('foo')` the `<mgt-login>` tag is referenced using `<mgt-foo-login>`.

## Usage in SharePoint Framework web parts with React

When building SharePoint Framework web parts using React, any component that imports from the `@microsoft/mgt-react` library must be asynchronously loaded after configuring the disambiguation setting. The `lazyLoadComponent` helper function exists to facilitate using `React.lazy` and `React.Suspense` to lazy load these components from the top-level web part. The `lazyLoadComponent` function is provided in the `@microsft/mgt-spfx-utils` package. Because the disambiguation value is only used when rendering the web component, there is no change to the way a given component is referenced in React code.

The following example shows a minimal web part that shows how to use Microsoft Graph Toolkit with disambiguation in React-based SharePoint Framework web parts. For a more complete examples, see the [React SharePoint Web Part Sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/blob/main/samples/sp-webpart/src/webparts/mgtDemo/MgtDemoWebPart.ts).

```ts
// [...] trimmed for brevity
import { Providers } from '@microsoft/mgt-element/dist/es6/providers/Providers';
import { customElementHelper } from '@microsoft/mgt-element/dist/es6/components/customElementHelper';
import { SharePointProvider } from '@microsoft/mgt-sharepoint-provider/dist/es6/SharePointProvider';
import { lazyLoadComponent } from '@microsoft/mgt-spfx-utils';

// Async import of component that imports the React Components
const MgtDemo = React.lazy(() => import('./components/MgtDemo'));

export interface IMgtDemoWebPartProps {
  description: string;
}
// set the disambiguation before initializing any webpart
// Use the solution name to ensure unique tag names
customElementHelper.withDisambiguation('spfx-solution-name');

export default class MgtDemoWebPart extends BaseClientSideWebPart<IMgtDemoWebPartProps> {
  // set the global provider
  protected async onInit() {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
  }

  public render(): void {
    const element = lazyLoadComponent(MgtDemo, { description: this.properties.description });

    ReactDom.render(element, this.domElement);
  }

  // [...] trimmed for brevity
}
```

> **Note:** If the top-level web part imports any code from either `@microsoft/mgt-react` or `@microsoft/mgt-components`, the disambiguation will have no effect.

The underlying components can then use toolkit components from the `@microsoft/mgt-react` package as usual. Because of the earlier setup steps, the toolkit React components will render HTML using the disambiguated tag names:

```tsx
import { Person } from '@microsoft/mgt-react';

// [...] trimmed for brevity

export default class MgtReact extends React.Component<IMgtReactProps, {}> {
  public render(): React.ReactElement<IMgtReactProps> {
    return (
      <div className={ styles.mgtReact }>
        <Person personQuery="me" />
      </div>
    );
  }
}
```

## Usage in React

To make use of disambiguation in a React application, call `customElementHelper.withDisambiguation()` before loading and rendering your root component. To help with lazy loading in this secnario, React provides the `lazy` function and `Suspense` component in React version 16.6 and up.

```TypeScript
import React, { lazy, Suspense } from 'react';
import ReactDOM from 'react-dom';
import { customElementHelper, Providers } from '@microsoft/mgt-element';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';

customElementHelper.withDisambiguation('contoso');

Providers.globalProvider = new Msal2Provider({ clientId: 'clientId' });

const App = lazy(() => import('./App'));
ReactDOM.render(<Suspense fallback='...'><App /></Suspense>, document.getElementById('root'));
```

## Usage in standard HTML and JavaScript

To make use of the disambiguation feature when using standard HTML and JavaScript, call `customElementHelper.withDisambiguation()` prior to importing the `@microsoft/mgt-components` module.

```html
<script type="module">
  import { Providers, customElementHelper } from '@microsoft/mgt-element';
  import { Msal2Provider } from '@microsoft/mgt-msal2-provider';
  // configure disambiguation
  customElementHelper.withDisambiguation('contoso');

  // initialize the auth provider globally
  Providers.globalProvider = new Msal2Provider({clientId: 'clientId'});

  // import the components using dynamic import to avoid hoisting
  import('@microsoft/mgt-components');
</script>

<mgt-contoso-login></mgt-contoso-login>
<mgt-contoso-person person-query="Bill Gates" person-card="hover"></mgt-contoso-person>
<mgt-contoso-agenda group-by-day></mgt-contoso-agenda>
```

> [!Important]
> The `import` of `mgt-components` must use a [dynamic import](#dynamic-imports-lazy-loading) to ensure that the disambiguation is applied before the components are imported. If a static import is used, it is [hoisted](https://developer.mozilla.org/en-US/docs/Glossary/Hoisting) and the import will occur before disambiguation can be applied.

## Dynamic imports (lazy loading)

Using dynamic imports, you can load dependencies asynchronously. This pattern allows you to load dependencies only when needed. For example, you might want to load a component only when a user clicks a button. This is a great way to reduce the initial load time of your application. In the context of disambiguation, you need to use this technique because components register themselves in the browser when they are imported.

> **Important:** If you import the components before you have applied the disambiguation, the disambiguation will not be applied and using the disambiguated tag name will not work.

When using an `import` statement, the import statement is [hoisted](https://developer.mozilla.org/en-US/docs/Glossary/Hoisting) and runs before any other code in the code block. To use dynamic imports, you must use the `import()` function. The `import()` function returns a promise that resolves to the module. You can also use the `then` method to run code after the module is loaded and the `catch` method to handle any errors if necessary.

### Example using dynamic imports

```typescript
// static import via a statement
import { Providers, customElementHelper } from '@microsoft/mgt-element';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';

customElementHelper.withDisambiguation('contoso');
Providers.globalProvider = new Msal2Provider({clientId: 'clientId'});

// dynamic import via a function
import('@microsoft/mgt-components').then(() => {
  // code to execute after the module is loaded
  document.body.innerHTML = '<mgt-contoso-login></mgt-contoso-login>';
}).catch((e) => {
  // handle any errors
});
```

### Example using static imports

```typescript
// static import via a statement
import { Provider } from '@microsoft/mgt-element';
import { Msal2Provider } from '@microsoft/mgt-msal2-provider';
import '@microsoft/mgt-components';

Providers.globalProvider = new Msal2Provider({clientId: 'clientId'});

document.body.innerHTML = '<mgt-login></mgt-login>';
```

> **Note:** You can't use disambiguation with static imports.
