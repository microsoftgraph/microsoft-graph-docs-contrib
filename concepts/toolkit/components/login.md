---
title: "Login component in Microsoft Graph Toolkit"
description: "A Login component is a button and flyout control to facilitate Microsoft identity platform authentication."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---

# Login component in Microsoft Graph Toolkit

A Login component is a button and flyout control to facilitate Microsoft identity platform authentication. It provides two states:

- When user is not signed in, the control is a simple button to initiate the sign in process.
- When user is signed in, the control displays the current signed in user name, profile image, and email. When clicked, a flyout is opened with a command to sign out.

You can also allow signing in with multiple accounts. This lists all your signed in accounts and give you an option to sign in with other new accounts.

## Example

The following example shows the `mgt-login` component with a signed-in user.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-login-html--login&source=docs" height="350"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-login-html--login&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-login-react--login&source=docs" height="350"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-login-react--login&source=docs).

---

## Using the control without an authentication provider

The component works with a provider and Microsoft Graph out of the box. However, if you want to provide your own logic and authentication, you can use the `userDetails` property to set the signed in user's details.

| Attribute     | Property     | Description                                                                                                                                    |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| login-view    | loginView    | Determines the view style to apply to the logged in user. Options are 'full', 'compact', 'avatar', defaults to 'full'                          |
| show-presence | showPresence | Determines whether the presence indicator for the current user on the `mgt-person` control is shown with an authenticated user. Default is `false`. |
| user-details  | userDetails  | Allows setting the user object details that the component will display.                                                                        |

The following example sets the person details.

```js
let loginControl = document.getElementById("myLoginControl");
loginControl.userDetails = {
  displayName: "Nikola Metulev",
  mail: "nikola@contoso.com",
  personImage: "url to the image",
};
```

Setting `userDetails` to `null` goes to the signed out state.

## CSS custom properties

The `mgt-login` component defines the following CSS custom properties.

```html
<mgt-login class="login"></mgt-login>
```

```css
.login {
  --login-signed-out-button-background: red;
  --login-signed-out-button-hover-background: orange;
  --login-signed-out-button-text-color: purple;
  --login-signed-in-background: red;
  --login-signed-in-hover-background: green;
  --login-button-padding: 5px;
  --login-popup-background-color: blue;
  --login-popup-text-color: brown;
  --login-popup-command-button-background-color: orange;
  --login-popup-padding: 8px;
  --login-add-account-button-text-color: yellow;
  --login-add-account-button-background-color: red;
  --login-add-account-button-hover-background-color: purple;
  --login-command-button-background-color: orange;
  --login-command-button-hover-background-color: purple;
  --login-command-button-text-color: black;
  --login-person-avatar-size: 60px;

  /** person component tokens **/
  --person-line1-text-color: whitesmoke;
  --person-line2-text-color: white;
  --person-background-color: blue;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Events

The following events are fired from the control.

| Event             | When is it emitted                                             | Custom data | Cancelable | Bubbles | Works with custom template |
| ----------------- | -------------------------------------------------------------- | ----------- | :--------: | :-----: | :------------------------: |
| `loginInitiated`  | The user clicked the sign in button to start the login process | None        |    Yes     |   No    |            Yes             |
| `loginCompleted`  | The login process was successful and the user is now signed in | None        |     No     |   No    |            Yes             |
| `loginFailed`     | The user canceled the login process or was unable to sign in   | None        |     No     |   No    |            Yes             |
| `logoutInitiated` | The user started to logout                                     | None        |    Yes     |   No    |            Yes             |
| `logoutCompleted` | The user signed out                                            | None        |     No     |   No    |            Yes             |

Use the `loginInitiated` and `logoutInitiated` events to handle signing in and out.

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-login` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the values listed in the following table.

| Data type                 | Data context                                                       | Description                                                                           |
| ------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------- |
| signed-in-button-content  | `personDetails`: person object, `personImage`: person image string | The template used to render the content in the button when the user is signed in.     |
| signed-out-button-content | null                                                               | The template used to render the content in the button when the user is not signed in. |
| flyout-commands           | `handleSignOut`: sign out function                                 | The template used to render the commands in the flyout                                |
| flyout-person-details     | `personDetails`: person object, personImage: person image string   | The template used to render the person details in the flyout.                         |

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs. For each of the API requests, one of the permissions listed is required.

| Configuration | Permission | API                               |
| ------------- | ---------- | --------------------------------- |
| default       | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All   | [/users/me/](/graph/api/user-get) |
| default       | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All                                                | [/users/me//photo/$value](/graph/api/profilephoto-get) |

### Subcomponents

The `mgt-login` component consists of one or more subcomponents that might require other permissions than the ones listed previously. For more information, see the documentation for each subcomponent: [mgt-person](person.md).

## Authentication

The login control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

This component uses the [Person component](./person.md) to display the user and inherits all cache configuration from it.

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method                       | Description                                               |
| ---------------------------- | --------------------------------------------------------- |
| renderButton                 | Renders the button chrome.                                |
| renderButtonContent          | Renders the button content.                               |
| renderSignedInButtonContent  | Render the button content when the user is signed in.     |
| renderSignedOutButtonContent | Render the button content when the user isn't signed in. |
| renderFlyout                 | Renders the flyout chrome.                                |
| renderFlyoutContent          | Renders the flyout content.                               |
| renderFlyoutPersonDetails    | Render the flyout person details.                         |
| renderFlyoutCommands         | Render the flyout commands.                               |

### Bring your own flyout

It is possible to use your own flyout component in place of the built-in one, by overriding the `renderFlyout()` method and providing the new flyout.

In this case, ensure the login component continues to work as expected by overriding the `protected` flyout display methods to update the visibility of your alternative flyout.

| Method       | Description                      |
| ------------ | -------------------------------- |
| hideFlyout   | Dismisses the flyout.            |
| showFlyout   | Displays the flyout.             |
| toggleFlyout | Toggles the state of the flyout. |

## Localization

The control exposes the following variables that can be localized. For details, see [Localizing components](../customize-components/localization.md).

| String name                 | Default value                      |
| --------------------------- | ---------------------------------- |
| signInLinkSubtitle          | `Sign In`                          |
| signOutLinkSubtitle         | `Sign Out`                         |
| signInWithADifferentAccount | `Sign in with a different account` |
