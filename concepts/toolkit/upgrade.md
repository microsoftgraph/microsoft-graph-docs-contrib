---
title: "Upgrade to the latest version of Microsoft Graph Toolkit"
description: "Upgrade guide to help you move from a previous version of the Toolkit to the most recent."
ms.localizationpriority: medium
author: sebastienlevert
---

# Upgrade to the latest version of Microsoft Graph Toolkit

This article provides a summary of the breaking changes introduced in Microsoft Graph Toolkit versions and how these changes might affect your solution.

## Microsoft Graph Toolkit v4.0

### Dropping support for ES5 and `mgt-loader`

Microsoft Graph Toolkit v4.0 drops support for ES5 and using `mgt-loader` as the way to import the toolkit in your application via CDN. If you're using `mgt-loader`, you must change your code to import the modules.

The following code:

```html
<script src="https://unpkg.com/@microsoft/mgt@3/dist/bundle/mgt-loader.js"></script>
<mgt-msal2-provider client-id="[CLIENT-ID]"></mgt-msal2-provider>
<mgt-login></mgt-login>
```

Becomes the following:

```html
<script type="module">
  import { registerMgtComponents, Providers, Msal2Provider } from 'https://unpkg.com/@microsoft/mgt@4';
  Providers.globalProvider = new Msal2Provider({clientId: '[CLIENT-ID]'});
  registerMgtComponents();
</script>

<mgt-login></mgt-login>
```

### Removing the `mgt-spfx` package for building SharePoint Framework web parts

Microsoft Graph Toolkit v4.0 removes the `@microsoft/mgt-spfx` package for building SharePoint Framework web parts. To ensure a great experience for our SharePoint developers, we improved our `@microsoft/mgt-spfx-utils` package and our [disambiguation](./customize-components/disambiguation.md) capabilities to offer seamless integration between SPFx and the toolkit. This breaking change paves the way for a better developer experience and more features in the future.

### Enums are now string unions

Microsoft Graph Toolkit v4.0 changes the way enums are defined. Instead of using `enum` to define the values, the toolkit now uses string unions. This change provides better typings and a better and uniform developer experience, especially for React developers. This change affects `AvatarType`, `ViewType`, `UserType`, `PersonType`, `GroupType`, `ResponseType`, and `PersonCardInteraction`. For example, instead of using `ViewType` like this:

```ts
<Person personQuery="me" view={ViewType.twolines}></Person>
```

You now use `ViewType` like this:

```ts
<Person personQuery="me" view="twolines"></Person>
```

### `mgt-tasks` is now `mgt-planner`

To better align with the Microsoft 365 naming, `mgt-tasks` was renamed to `mgt-planner`. It also means that the updated `mgt-planner` component doesn't support `data-source` switching to Outlook tasks anymore.

### Required permissions for `mgt-person` and `mgt-planner`

We took the opportunity to simplify and adhere to a least privileged approach for the permissions required by `mgt-person` and `mgt-planner`.

* In applications using `mgt-person`, users might need to consent to new permissions scopes; for details, see the [permissions table](./components/person.md#microsoft-graph-permissions) for the component.
* Minimal permission for `mgt-planner` changed from `Group.ReadWrite.All` to `Tasks.ReadWrite` for write operations and from `Group.Read.All` to `Tasks.Read` for read operations.

### `prepScopes()` is now aware of the consented permission scopes

The `prepScopes()` function now accepts an array of scopes that is checked against the set of currently consented permission scopes for the current user. If any of the supplied scopes are found, no extra scopes are requested. If no match is found, the user is prompted to consent to the first scope in the supplied array of scopes. This helps with the user experience and allows developers to use a least privileged approach.

### Registering components is now required

Developers must explicitly call the register function for all web components used in their application when using components from` @microsoft/mgt-components`. Importing from the root of `@microsoft/mgt-components` no longer has an automatic registration side effect. For example, instead of using `import { Person } from '@microsoft/mgt-components';` you must use `import { Person } from '@microsoft/mgt-components;` and call `registerMgtPersonComponent()`.

> [!NOTE]
> Components from `@microsoft/mgt-react` automatically register the underlying web component when they are used for the first time. In cases where the React components aren't used, components won't automatically be registered in the browser. This leads to a breaking change when these applications emit raw web component markup rather than using the wrapper components. Make sure you use the `registerMgt{Name}Component()` functions.

### `MgtPersonCard` no longer has a static config property

This config moved to the `MgtPersonCardConfig` class to allow developers to import the config and associated `getMgtPersonCardScopes()` function at the top level of their application without automatically adding the weight of the full `mgt-person-card` component and dependencies to the entry file for their applications. This helps with smaller bundle sizes and a better overall developer experience.

### `mgt-people-picker` doesn't show presence by default

The default behavior of `mgt-people-picker` changes so that the user presence isn't shown unless the `show-presence` attribute or the `showPresence` property is set. This change helps improve performance for applications that don't need to show presence and to embrace a least privileged approach.

## Microsoft Graph Toolkit v3.0

### Changed the design framework to Fluent UI web components

To stay compliant and to align with the modern look and feel of Microsoft 365, Microsoft Graph Toolkit now uses Fluent UI [web components](/fluent-ui/web-components/). We recommend that you update some of your styling with the Fluent 2 design system.

Many of the design tokens provided to customize the look and feel of our components changed. For details, see the CSS custom properties section of the articles for each component.

### Upgraded Microsoft Graph JS SDK from 2.x to 3.x

If you've been using the Microsoft Graph client via the `globalProvider`, it was updated to 3.x. For details about how this change might affect you, see [Microsoft Graph JS SDK upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/changelogs/v3-upgrade-guide.md).

### Upgraded from Lit 1.x to Lit 2.x

If you have been building custom components on top of the toolkit, review the [Lit upgrade guide](https://lit.dev/docs/v2/releases/upgrade/) for details about how this change might affect you.

### Object structures changed and typings are available for events emitted by our components

In this release, the object structures of some events changed to provide a better developer experience. All events are accurately typed using the `CustomEvent<T>` generic type to help you deliver high-quality code. For details, see the Events section of the articles for each component.

### Permissions changed in the Teams channel picker

The `MgtTeamsChannelPickerConfig` was removed and the Teams channel picker component now only uses `Team.ReadBasic.All` and `Channel.ReadBasic.All` scopes instead of the legacy `User.Read.All` and `Group.Read.All` scopes. This change enables your application to use a least privileged approach.

### Removed multiple providers

In this release, multiple providers were removed to ensure your apps stay secure and provide the best experience possible for your users (support for conditional access, continuous access evaluation, and so on). The following providers were removed:

- Teams Provider
- Teams MSAL2 Provider
- MSAL Provider

### Next steps

- Update your solutions to the Toolkit version 3.
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
