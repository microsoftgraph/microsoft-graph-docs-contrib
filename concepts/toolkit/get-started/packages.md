---
title: "Microsoft Graph Toolkit NPM packages"
description: "The Microsoft Graph Toolkit is made up of several npm packages"
localization_priority: Normal
author: nmetulev
---

# Microsoft Graph Toolkit NPM packages

The Microsoft Graph Toolkit is made up of several NPM packages allowing you to only include the code you need for your applications.

## Mgt Element

The `@microsoft/mgt-element` is the core package that contains only the base classes used for building components and providers. This package exposes all  necessary classes and interfaces needed to build your own components and exports the [IProvider interface and SimpleProvider class](../providers/custom) for building custom providers.

## Providers 

Providers are available via a single package and can be installed as needed. The following provider packages are available:

* [`@micosoft/mgt-msal-provider`](../providers/msal) contains the `MsalProvider` and `mgt-msal-provider` component. The msal provider leverages msal.js for authenticating in web apps and PWAs.

* [`@microsoft/mgt-teams-provider`](../providers/teams) contains the `TeamsProvider` and `mgt-teams-provider` component. The Microsoft Teams provider enables authentication in Microsoft Teams tab application.

* [`@microsoft/mgt-sharepoint-provider`](../providers/sharepoint) contains the `SharePointProvider` for authenticating in a SharePoint environment. 

* [`@microsoft/mgt-proxy-provider`](../providers/proxy) contains the `ProxyProvider` for application that proxy Graph calls through a backend service. 

## Components 

The `@microsoft/mgt-components` package contains all Microsoft Graph connected web components, such as `Person`, `PeoplePicker`, and more. 

## MGT 

The `@microsoft/mgt` is the main package that includes all above packages and re-exports them so they are available via a single package you can install. 

## React

The [`@microsoft/mgt-react`](./mgt-react) package contains all auto-generated React components and takes dependency on the `@microsoft/mgt` package.