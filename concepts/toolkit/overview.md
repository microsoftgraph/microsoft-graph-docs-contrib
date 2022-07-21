---
title: "Microsoft Graph Toolkit overview"
description: "Use Microsoft Graph Toolkit to find authentication providers and reusable, framework-agnostic web components for accessing and working with Microsoft Graph."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Graph Toolkit overview 

Microsoft Graph Toolkit is a collection of reusable, framework-agnostic components and authentication providers for accessing and working with Microsoft Graph. The components are fully functional right of out of the box, with built-in providers that authenticate with and fetch data from Microsoft Graph.

Microsoft Graph Toolkit makes it easy to use Microsoft Graph in your application. In the following example, a signed-in user and their calendar events are displayed with just two lines of code by using the [Login](./components/login.md) and [Agenda](./components/agenda.md) components.

<iframe src="https://mgt.dev/iframe.html?id=samples-general--login-to-show-agenda&source=docs&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/samples-general--login-to-show-agenda&source=docs).

## What's in Microsoft Graph Toolkit?

### Components

Microsoft Graph Toolkit includes a collection of web components for the most commonly built experiences powered by Microsoft Graph APIs.

The components are also available as [React components](./get-started/mgt-react.md).

|Component|Description|
|---------|-----------|
|[Login](./components/login.md)|A button and a flyout control to authenticate a user with the Microsoft Identity platform and display the user's profile information when they sign in.|
|[Person](./components/person.md)|Displays a person or contact by their photo, name, and/or email address.|
|[People](./components/people.md)|Displays a group of people or contacts by their photos or initials.|
|[Agenda](./components/agenda.md)|Displays events in a user's or group's calendar.|
|[People picker](./components/people-picker.md)|Provides the ability to search for people and renders the list of results.|
|[Person card](./components/person-card.md)|A flyout used on the person component to display more profile information about a user.|
|[File](./components/file.md)|Represents a file or folder with an icon, a file name, an author, and more.|
|[File list](./components/file-list.md)|Displays a list of multiple files or folders.|
|[Get](./components/get.md)|Lets you make a GET query to any Microsoft Graph API directly in your HTML.|
|[Channel picker](./components/teams-channel-picker.md)|Provides the ability to search for Microsoft Teams channels to select a channel from a rendered list of results.|
|[To Do](./components/todo.md)|Displays and enables adding, removing, completing, or editing of tasks from Microsoft To Do.|
|[Tasks](./components/tasks.md)|Displays and enables adding, removing, completing, or editing of tasks from Microsoft Planner or Microsoft To Do.|

### Providers

[Providers](./providers/providers.md) enable authentication, provide the implementation for acquiring access tokens on various platforms, and expose a Microsoft Graph client for calling the Microsoft Graph APIs. The components work best when used with a provider, but the providers can be used on their own.

|Providers|Description|
|---------|-----------|
|[MSAL](./providers/msal.md)|Uses msal.js to sign in users and acquire tokens to use with Microsoft Graph.|
|[MSAL2](./providers/msal2.md)| Uses msal-browser to sign in users and acquire tokens to use with Microsoft Graph.|
|[Electron](./providers/electron.md)|Authenticates and provides Microsoft Graph access to components inside of Electron apps.|
|[SharePoint](./providers/sharepoint.md)|Authenticates and provides Microsoft Graph access to components inside of SharePoint web parts.|
|[Teams](./providers/teams.md)|Uses msal.js to sign in users and acquire tokens on the client on Microsoft Teams tabs.|
|[Teams MSAL2](./providers/teams-msal2.md)|Uses msal-browser to sign in users and acquire tokens on Microsoft Teams tabs. Supports single sign-on (SSO) with a custom backend. |
|[Proxy](./providers/proxy.md)|Allows the use of backend authentication by routing all calls to Microsoft Graph through your backend.|
|[Custom](./providers/custom.md)|Creates a custom provider to enable authentication and access to Microsoft Graph by using your application's existing authentication code.|

## Why use Microsoft Graph Toolkit?

Microsoft Graph Toolkit enables you to quickly and easily integrate common experiences powered by Microsoft Graph into your own application. The toolkit:

- **Cuts development time**. The work to connect to Microsoft Graph APIs and render the data in a UI that looks and feels like a Microsoft 365 experience is done for you, with no customization required.

- **Works everywhere**. All components are based on web standards and work seamlessly with any modern browser and web framework (such as React, Angular, or Vue). 

- **Is beautiful but flexible**. The components are designed to look and feel like Microsoft 365 experiences but are also customizable by using [CSS custom properties](./customize-components/style.md) and [templating](./customize-components/templates.md).

## Who should use it?

Microsoft Graph Toolkit is great for developers of all experience levels that want to develop an app that connects to and accesses data from Microsoft Graph, such as a:
- Web app
- Microsoft Teams tab
- Progressive Web App (PWA)
- Electron app
- SharePoint web part

## Where can I use it?

Microsoft Graph Toolkit is supported in the following browsers:

|![Edge](images/edgeIcon.png)|![Firefox](images/firefoxIcon.png)|![Chrome](images/chromeIcon.png)|![Safari](images/safariIcon.png)|![Opera](images/operaIcon.png)|![Samsung Internet](images/samsungInternetIcon.png)|
|----|----|----|----|----|----|----|
|**Edge**|**Firefox**|**Chrome**|**Safari**|**Opera**|**Samsung**|

## Next steps

- Try out the components in the [playground](https://mgt.dev).
- [Get started](./get-started/overview.md) with Microsoft Graph Toolkit.
- Check out Microsoft Graph Toolkit on [GitHub](https://aka.ms/mgt).
