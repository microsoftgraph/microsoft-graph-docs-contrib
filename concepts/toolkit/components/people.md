---
title: "People component in Microsoft Graph Toolkit"
description: "You can use the `mgt-people` web component to display a group of people or contacts by using their photos or initials."
ms.localizationpriority: medium
author: sebastienlevert
---

# People component in Microsoft Graph Toolkit

You can use the `mgt-people` web component to display a group of people or contacts by using their photos or initials. By default, it displays the most frequent contacts for the signed in user.

This component uses multiple [mgt-person](./person.md) controls, but it can be bound to a set of people descriptors. If there are more people to display than the `show-max` value, a number is added to indicate the number of other contacts.

## Example

The following example shows a group of people displayed using the `mgt-people` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-people-html--people&source=docs" height="350"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-people-html--people&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-people-react--people&source=docs" height="350"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-people-react--people&source=docs).

---

## Properties

By default, the `mgt-people` component fetches events from the `/me/people` endpoint with the `personType/class eq 'Person'` filter to display frequently contacted users. You can use several properties to change this behavior.

| Attribute        | Property              | Description                                                                                                                                                            |
| ---------------- | --------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| show-max         | showMax               | Indicates the maximum number of people to show. Default value is 3.                                                                                                    |
| people           | people                | An array of Microsoft Graph person objects. Use this property to access the people loaded by the component. Set this value to load your own people onto the component. |
| group-id         | groupId               | The ID of a Microsoft Entra ID group. This property is used to retrieve the direct members of the group. This property is optional.                                                     |
| user-ids         | userIds               | An array of user IDs to display. This property is optional.                                                                                                                     |
| people-queries   | peopleQueries         | Microsoft Graph queries for customizing the people query response.                                                                                                     |
| person-card      | personCardInteraction | Sets the behavior to show the person card on a rendered person. Default value is set to show the person card on hover(PersonCardInteraction.hover).                   |
| show-presence    | showPresence          | Determines if a person component should render the presence badge. Default value is false.                                                                             |
| resource         | resource              | The resource URL to get from Microsoft Graph (for example, `/me/people`).                                                                                              |
| scopes           | scopes                | A comma delimited string with permissions to be granted to the component. This property is optional.                                                                            |
| version          | version               | The API version to use when making the request. Default value is `v1.0`.                                                                                           |
| fallback-details | fallbackDetails       | Array of Microsoft Graph person objects representing a person or multiple people when no user/person/contact is found in the graph.                                    |

The following example sets the maximum number of people to show.

```html
<mgt-people show-max="4"> </mgt-people>
```

## CSS custom properties

The `mgt-people` component defines the following CSS custom properties.

```html
<mgt-people class="people"></mgt-people>
```

```css
.people {
  --people-list-margin: 12px;
  --people-avatar-gap: 8px;
  --people-overflow-font-color: orange;
  --people-overflow-font-size: 16px;
  --people-overflow-font-weight: 600;
  --people-person-avatar-size: 70px;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Templates

The `mgt-people` supports several [templates](../customize-components/templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` to one of the following values.

| Data type  | Data context                                                                                             | Description                                                                               |
| ---------- | -------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `default`  | `people`: list of person objects                                                                         | The default template replaces the entire component with your own.                         |
| `person`   | `person`: person object                                                                                  | The template used to render each person.                                                  |
| `overflow` | `people`: list of person objects <br> `max`: number of shown people <br> `extra`: number of extra people | The template used to render the number beyond the max to the right of the list of people. |
| `no-data`  | No data context is passed                                                                                | The template used when no data is available.                                              |
| `loading`  | No data context is passed                                                                                | The template used while the component loads state.                                        |

The following examples show how to use the `person` template.

```html
<mgt-people>
  <template>
    <ul>
      <li data-for="person in people">
        <mgt-person person-query="{{ person.userPrincipalName }}"></mgt-person>
        <h3>{{ person.displayName }}</h3>
        <p>{{ person.jobTitle }}</p>
        <p>{{ person.department }}</p>
      </li>
    </ul>
  </template>
</mgt-people>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions. For each API called, the user must have at least one of the permissions listed.

| Configuration         | Permission                                                                                                | API                                                                                         |
| --------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| default configuration | People.Read, People.Read.All                                                                              | [/me/people](/graph/api/user-list-people)                                                   |
| `group-id` set        | GroupMember.Read.All, Group.Read.All, Directory.Read.All, GroupMember.ReadWrite.All, Group.ReadWrite.All  | [/groups/${groupId}/members/microsoft.graph.user](/graph/api/group-list-members)            |
| `user-ids` set        | User.ReadBasic.All, User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All        | [/users/$({userId}](/graph/api/user-get)                                                    |
| `people-queries` set  | People.Read, People.Read.All                                                                              | [/me/people](/graph/api/user-list-people)                                                   |
| `resource` set        | Permissions specified in `scopes`                                                                         | Specified in `resource`                                                                     |
| `show-presence` set   | Presence.Read.All                                                                                         | [/communications/getPresencesByUserId](/graph/api/cloudcommunications-getpresencesbyuserid) |

### Subcomponents

The `mgt-people` component consists of one or more subcomponents that might require other permissions than the ones listed previously. For more information, see the documentation for each subcomponent: [mgt-person](person.md).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

| Object store | Cached data                                 | Remarks                                                                    |
| ------------ | ------------------------------------------- | -------------------------------------------------------------------------- |
| `people`     | Information about people matching the query | Used when `resource` specified                                             |
| `users`      | Information about users matching the query  | Used when `groupId`, `userIds`, `peopleQueries` or no properties specified |
| `presence`   | Presence for the specified set of people    | Used when `showPresence` set to `true`                                     |

> [!NOTE]
> By default, the `mgt-people` component uses the [`mgt-person`](./person.md) component to display information about people. The `mgt-person` component automatically downloads and caches the photo for each person.

For details about how to configure the cache, see [Caching](../customize-components/cache.md).

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method         | Description                                                               |
| -------------- | ------------------------------------------------------------------------- |
| renderLoading  | Renders the loading state.                                                |
| renderNoData   | Renders the empty data state.                                             |
| renderPeople   | Renders a list of people, up to the `show-max` value.                     |
| renderPerson   | Renders an individual person.                                             |
| renderOverflow | Renders a representation of remaining people beyond the `show-max` value. |

## Localization

The control doesn't expose any localization variables.
