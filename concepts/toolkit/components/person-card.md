---
title: "Person-Card component in Microsoft Graph Toolkit"
description: "A Person-Card component is a component to display more information relating to a person."
ms.localizationpriority: medium
author: sebastienlevert
---

# Person-Card component in Microsoft Graph Toolkit

A Person-Card component is a responsive component to display more information related to a person. It is generally used as a flyout on the `mgt-person` component.

For more information about the `mgt-person` component, see [mgt-person](./person.md).

## Example using mgt-person

The following example shows the use of the `mgt-person-card` component with a `mgt-person` component. Hover or click on the person to see the Person Card.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person-properties--person-card&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person-properties--person-card&source=docs)

## Example using mgt-person-card as a standalone component

The following example shows the use of the `mgt-person-card` component. Use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person-card--person-card&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person-card--person-card&source=docs)

## Global component configuration

The `MgtPersonCard` class exposes a static `config` object that configures all person card components in the application. The config object configures what sections and what APIs are used by the person card to fetch details about a user from Microsoft Graph.

By default, all sections and APIs are enabled. The following example shows how to use the config object to disable sections or APIs.

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

MgtPersonCard.config.useContactApis = false;
MgtPersonCard.config.sections.profile = false;
```

The following properties are available on the config object.

| Property       | Description                                                                                                                                                    |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| useContactApis | `boolean` - Indicates whether the person card component can use Microsoft Graph Contact API to search for contact details and photos. Default value is `true`. |
| sections       | `object` - Configures what sections are shown in the person card.                                                                                              |

### Person card sections

The person card contains several configurable sections for displaying person details:

- Contact - Contact information such as email, phone, position, location, and more.
- Organization - Organizational graph with managers, direct reports, and relevant people.
- Messages - Most relevant email messages with the current signed in user.
- Files - Most relevant shared files with the current signed in user.
- Profile - Profile information such as projects, skills, languages, and more.

Sections are loaded by default, but they can be disabled globally via the `MgtPersonCard.config.sections` object property. The following properties are available.

| Property            | Description                                                                                                                         |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| organization        | `boolean` - Indicates whether the person card organization section is shown. Default value is `true`.                               |
| mailMessages        | `boolean` - Indicates whether the person card messages section is shown. Default value is `true`.                                   |
| files               | `boolean` - Indicates whether the person card files section is shown. Default value is `true`.                                      |
| profile             | `boolean` - Indicates whether the person card profile section is shown. Default value is `true`.                                    |
| lock-tab-navigation | `boolean` - Allows the locking of navigation using tabs so that it does not flow out of the card section. Default value is `false`. |

To disable a section, simply set the property to `false` in your app initialization code:

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

MgtPersonCard.config.sections.profile = false;
```

## Setup for Teams integrations

The Person-Card component allows the user to contact the target person, including via Teams chat. If using the component inside a Teams tab app, you can ensure that the component deep links directly to a chat instead of opening a browser window by setting the `microsoftTeamsLib` in `TeamsHelper`.

If the Person-Card component is unable to detect the Teams lib, the component will attempt to open the Teams web client instead.

```ts
import * as microsoftTeams from "@microsoft/teams-js";
import { TeamsHelper } from "@microsoft/mgt";

TeamsHelper.microsoftTeamsLib = microsoftTeams;
```

## Properties

By default, the `mgt-person` component will pass the person details to the `mgt-person-card` component. However, you can use these attributes to change this when templating the `mgt-person` component or when using the `mgt-person-card` component as a standalone component.

| Attribute       | Type                                                                       | Description                                                                                                                                                                      |
| --------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| person-details  | MicrosoftGraph.User <br> MicrosoftGraph.Person <br> MicrosoftGraph.Contact | Person object as defined by Microsoft Graph, containing details related to the user.                                                                                             |
| person-image    | string                                                                     | Image uri related to the person displayed in the card.                                                                                                                           |
| inherit-details | None.                                                                      | Allows person-card to walk parent tree for `mgt-person` component to use the same `person-details` and `person-image` data.                                                      |
| user-id         | string                                                                     | Allows developers to supply user-id to retrieve data shown on person-card component                                                                                              |
| person-query    | string                                                                     | Allows developers to supply person-query to retrieve data shown on person-card component                                                                                         |
| person-card     | string                                                                     | Specifies wheter the `person-card` component can be shown as a pop up card when you hover or click on the the `mgt-person` component. The allowed values are `hover` or `click`. |

## CSS custom properties

The `mgt-person-card` component defines the following CSS custom properties.

```html
<mgt-person-card class="person-card" person-query="me"></mgt-person-card>
```

```css
.person-card {
  --person-card-nav-back-arrow-hover-color: green;
  --person-card-icon-color: red;
  --person-card-line1-font-size: 30px;
  --person-card-line1-font-weight: 800;
  --person-card-line1-line-height: 38px;
  --person-card-line2-font-size: 24px;
  --person-card-line2-font-weight: 600;
  --person-card-line2-line-height: 30px;
  --person-card-line3-font-size: 24px;
  --person-card-line3-font-weight: 300;
  --person-card-line3-line-height: 29px;
  --person-card-avatar-size: 85px;
  --person-card-details-left-spacing: 25px;
  --person-card-avatar-top-spacing: 25px;
  --person-card-details-bottom-spacing: 20px;
  --person-card-background-color: pink;
  --person-card-expanded-background-color-hover: blue;
  --person-card-icon-hover-color: magenta;
  --person-card-show-more-color: blue;
  --person-card-show-more-hover-color: green;
  --person-card-fluent-background-color: yellow;
  --person-card-line1-text-color: purple;
  --person-card-line2-text-color: blue;
  --person-card-line3-text-color: green;
  --person-card-fluent-background-color-hover: orange;
  --person-card-base-icons-left-spacing: 110px;

  /** person-card sections tokens */

  /** Organization */
  --organization-active-org-member-target-background-color: blue;
  --organization-title-color: green;
  --organization-sub-title-color: yellow;
  --organization-hover-color: grey;
  --organization-coworker-hover-color: grey;
  --organization-coworker-border-color: purple;
  --organization-active-org-member-border-color: red;

  /** Files: Uses custom css properties for mgt-file-list and mgt-file */

  /** Messages */

  --message-subject-color: purple;
  --message-from-color: blue;
  --message-color: black;
  --message-hover-color: grey;

  /** Contact */

  --contact-title-color: blue;
  --contact-value-color: green;
  --contact-link-color: red;
  --contact-link-hover-color: purple;
  --contact-background-color: grey;
  --contact-copy-icon-color: yellow;

  /** Profile */

  --profile-title-color: blue;
  --profile-background-color: grey;
  --profile-token-item-color: blue;
  --profile-token-overflow-color: purple;
  --profile-section-title-color: black;
  --profile-token-item-background-color: yellow;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Templates

The Person-Card component uses [templates](../customize-components/templates.md) that allow you to add or replace portions of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following.

| Data type          | Data context                                                                 | Description                                                                  |
| ------------------ | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| no-data            | null                                                                         | The template used when no data is available.                                 |
| default            | `person`: The person details object <br> `personImage`: The URL of the image | The default template replaces the entire component with your own.            |
| person-details     | `person`: The person details object                                          | The template used to render the top part of the person card.                 |
| additional-details | `person`: The person details object <br> `personImage`: the URL of the image | The template used to add custom content to the additional details container. |

For example, you can use a template to customize the component attached to the `mgt-person` component and a template to add additional details in the card.

```html
<mgt-person person-query="me" view="twolines" person-card="hover">
  <template data-type="person-card">
    <mgt-person-card inherit-details>
      <template data-type="additional-details">
        <h3>Stuffed Animal Friends:</h3>
        <ul>
          <li>Giraffe</li>
          <li>lion</li>
          <li>Rabbit</li>
        </ul>
      </template>
    </mgt-person-card>
  </template>
</mgt-person>
```

## Events

The following events are fired from the component.

| Event      | When is it emitted                                           | Custom data | Cancelable | Bubbles |          Works with custom template           |
| ---------- | ------------------------------------------------------------ | ----------- | :--------: | :-----: | :-------------------------------------------: |
| `expanded` | The user has opened the expanded details section of the card | None        |     No     |   Yes   | Yes, unless you override the default template |

For more information about handling events, see [events](../customize-components/events.md).

## Microsoft Graph permissions

The Person-Card control uses the following Microsoft Graph APIs and permissions.

| Configuration                                                                                          | Permission         | API                                                                                                           | Section      |
| ------------------------------------------------------------------------------------------------------ | ------------------ | ------------------------------------------------------------------------------------------------------------- | ------------ |
| `personDetails` set with user's `id` but without e-mail, or `userId` set, or `personQuery` set to `me` | User.ReadBasic.All | [/users/{id}](/graph/api/user-list-people), [/users/{id}/photo/$value](/graph/api/profilephoto-get)           | Default      |
| `personQuery` set to a value different than `me`                                                       | People.Read        | [/me/people/?$search=](/graph/api/user-list-people)                                                           | Default      |
| `personQuery` set to a value different than `me` and `config.useContactApis` set to `true` (default)   | Contacts.Read      | [/me/contacts/\*](/graph/api/user-list-contacts)                                                              | Default      |
| `showPresence` set to `true`                                                                           | Presence.Read.All  | [/users/{id}/presence](/graph/api/presence-get)                                                               | Default      |
| `sections.organization` enabled (default)                                                              | User.Read.All      | [/users/{id}/manager](/graph/api/user-list-manager)                                                           | Organization |
| `sections.organization.showWorksWith` set (default)                                                    | People.Read.All    | [/users/{id}/people](/graph/api/user-list-people)                                                             | Organization |
| `sections.mailMessages` enabled (default)                                                              | Mail.ReadBasic     | [/me/messages](/graph/api/user-list-messages)                                                                 | Messages     |
| `sections.files` enabled (default)                                                                     | Sites.Read.All     | [/me/insights/shared](/graph/api/insights-list-shared) and [/me/insights/used](/graph/api/insights-list-used) | Files        |
| `sections.profile` enabled (default)                                                                   | User.Read.All      | [/users/{id}/profile](/graph/api/profile-get?view=graph-rest-beta&preserve-view=true)                         | Profile      |

The `MgtPersonCard` class also exposes a `getScopes` static method that returns an array of scopes required for the person card to function based on the global person card configuration.

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

const neededScopes = MgtPersonCard.getScopes();
```

## Authentication

The Person-Card control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

> [!IMPORTANT]
> The `mgt-person-card` component retrieves the basic person data from the parent `mgt-person` component without calling Microsoft Graph. When `mgt-person-card` is used separately, it will retrieve the necessary data itself and cache it. The data displayed in card's sections is retrieved separately and is not cached.

| Object store | Cached data               | Remarks                                                                   |
| ------------ | ------------------------- | ------------------------------------------------------------------------- |
| `people`     | Person's information      | Used when `personQuery` is specified and its value is different than `me` |
| `photos`     | Person's photo            |
| `presence`   | Person's presence         | Used, when `showPresence` is set to `true`                                |
| `users`      | Person's user information | Used when `userId` is specified or the `personQuery` is set to `me`       |

See [Caching](../customize-components/cache.md) for more details on how to configure the cache.

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name                | Default value             |
| -------------------------- | ------------------------- |
| endOfCard                  | `End of the card`         |
| quickMessage               | `Send a quick message`    |
| expandDetailsLabel         | `Expand details`          |
| renderOverviewSectionLabel | `Render overview section` |
| sendMessageLabel           | `Send message`            |
| emailButtonLabel           | `Email`                   |
| callButtonLabel            | `Call`                    |
| chatButtonLabel            | `Chat`                    |
| videoButtonLabel           | `Video`                   |
| closeCardLabel             | `Close card`              |
