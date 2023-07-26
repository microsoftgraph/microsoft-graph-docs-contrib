---
title: "People picker component in Microsoft Graph Toolkit"
description: "You can use the mgt-people-picker web component to search for people and render the list of results from Microsoft Graph in a dropdown."
ms.localizationpriority: medium
author: sebastienlevert
---

# People picker component in Microsoft Graph Toolkit

You can use the `mgt-people-picker` web component to search for people and/or groups. By default, the component will search for all people and users in the organization, but you can change the behavior to also search for groups, or only groups. You can also filter the search to a specific group. Additionally, you can allow the user to enter and select any email address.

## Example

The following example shows the `mgt-people-picker` component. Start searching for a name to see the results render and use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-people-picker--people-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-people-picker--people-picker&source=docs)

## Properties

By default, the `mgt-people-picker` component fetches people from the `/me/people` and `/users` endpoints. Use the following attributes to change this behavior.

| Attribute                  | Property                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------- | ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| show-max                   | showMax                 | A number value to indicate the maximum number of people to show. The default value is 6.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| group-id                   | groupId                 | A string value that belongs to a Microsoft Graph defined group for further filtering of the search results.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| transitive-search          | transitiveSearch        | A Boolean value to perform a transitive search returning a flat list of all nested members - by default transitive search is not used.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| type                       | type                    | The type of entities to search for. Available options are: `person`, `group`, `any`. Default value is `person`. This attribute has no effect if `group-id` property is set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| user-type                  | userType                | The type of user to search for. Available options are: `any`, `user` for organizational users, or `contact` for contacts. Default value is `any`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| group-type                 | groupType               | The group type to search for. Available options are: `unified`, `security`, `mailenabledsecurity`, `distribution`, `any`. Default value is `any`. This attribute has no effect if the `type` property is set to `person`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| selected-people            | selectedPeople          | An array of selected people. Set this value to select people programmatically.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| people                     | people                  | An array of people found and rendered in the search result                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| placeholder                | placeholder             | The default text that appears to explain how to use the component. Default value is `Start typing a name`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| default-selected-user-ids  | defaultSelectedUserIds  | When provided a string of comma-separated Microsoft Graph user IDs, the component renders the respective users as selected upon initialization.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| default-selected-group-ids | defaultSelectedGroupIds | Similar to default-selected-user-ids, when provided a string of comma-separated Microsoft Graph group IDs, the component renders the respective groups as selected upon initialization.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| selection-mode             | selectionMode           | Used to indicate whether to allow selecting multiple items (users or groups) or just a single item. Available options are: `single`, `multiple`. Default value is `multiple`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| disabled                   | disabled                | Sets whether the people picker is disabled. When disabled, the user is not able to search or select people. Default is `false`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| disable-images             | disableImages           | Sets whether to disable fetching and display of person images. When set to `true`, user initials are displayed instead. Default is `false`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| allow-any-email            | allowAnyEmail           | Indicates whether the people picker can accept email addresses without selecting a person. Default value is `false`. When you finish typing an email address, you can press comma (`,`), semicolon (`;`), tab or enter keys to add it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| user-ids                   | userIds                 | A string of comma-separated user IDs. They will only appear on the dropdown menu or your search results when you type a query. For example `48d31887-5fad-4d73-a9f5-3c356e68a038,24fcbca3-c3e2-48bf-9ffc-c7f81b81483d` will only display the two users in the dropdown when the input is focused. When you type a search text, it will return results that match the users in the two user IDs only.                                                                                                                                                                                                                                                                                                                                                                               |
| user-filters               | userFilters             | Specifies the filter criteria to use when querying the users endpoint. It requires the `user-type` to be set to `user` or `contact`. By default, the `user-type` is `any` and this leads the querying to take place in the `people` endpoint block. Example: `user-filters="startsWith(displayName,'a')"`. This attribute is optional. Learn more about [the support for filter on user properties of Azure AD directory objects](/graph/aad-advanced-queries?tabs=http#user-properties).                                                                                                                                                                                                                                                                                          |
| group-filters              | groupFilters            | Specifies the filter criteria to use when querying the `groups` endpoint. It requires the `type` to be set to `group`. Example: `group-filters="startsWith(displayName,'a')"`. This attribute is optional.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| people-filters             | peopleFilters           | Specifies the filter criteria to use when querying the `people` endpoint. It is used as it is. Example: `people-filters="jobTitle eq 'Web Marketing Manager'"`. This attribute is optional. Learn more about [filtering and the supported capabilities on the people resource](/graph/people-insights-overview).                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| group-ids                  | groupIds                | A string of comma-separated group IDs. The available results should be limited to the specified groups. Users that will appear on the dropdown menu and via the search experience should only come from the specified group IDs. For example, `02bd9fd6-8f93-4758-87c3-1fb73740a315,06f62f70-9827-4e6e-93ef-8e0f2d9b7b23` will only display users belonging to these groups. When you type a search text, it will return results that match the users in the two group IDs only. This property is not used if `group-id` is defined. If the property is set, the `type` is `group` by default and `transitive-search` is `true` by default. If the `group-type` is set with the property, the `type` can be `any` or `group`. If the `type` is `person`, the property is not used. |
| aria-label                 | ariaLabel               | A string provided to help assitive technologies provide context for the people picker.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |

The following is a `show-max` example.

```html
<mgt-people-picker show-max="4"> </mgt-people-picker>
```

## Selected people

The selected people section of the component renders each person chosen by the developer or user.

![mgt-people-picker](./images/selected-people.png)

You can populate selected people data by doing one of the following:

- Setting the `selectedPeople` property directly, as shown in the following example.

  ```javascript
  // personObject is the User or Person object from Microsoft Graph
  document.querySelector("mgt-people-picker").selectedPeople.push(personObject);
  ```

- Using the `selectUsersById()` method, which accepts an array of Microsoft graph [user ids](/graph/api/resources/users) to find associated user details for selection.

  > **Note:** If no user is found for an `id`, no data will be rendered for that `id`.

  ```javascript
  // id = Microsoft graph User "id"
  document.querySelector("mgt-people-picker").selectUsersById(["id", "id"]);
  ```

- Using the `selectGroupsById()` method, which accepts an array of Microsoft graph [group ids](/graph/api/resources/group) to find the group(s) with associated users.

  ```javascript
  // groupid = Microsoft graph group "id"
  document
    .querySelector("mgt-people-picker")
    .selectGroupsById(["groupid", "groupid"]);
  ```

## CSS custom properties

The `mgt-people-picker` component defines the following CSS custom properties.

```html
<mgt-people-picker class="people-picker"></mgt-people-picker>
```

```css
.people-picker {
  --people-picker-selected-option-background-color: orange;
  --people-picker-selected-option-highlight-background-color: red;
  --people-picker-dropdown-background-color: blue;
  --people-picker-dropdown-result-background-color: yellow;
  --people-picker-dropdown-result-hover-background-color: gold;
  --people-picker-dropdown-result-focus-background-color: green;
  --people-picker-no-results-text-color: orange;
  --people-picker-input-background: gray;
  --people-picker-input-border-color: yellow;
  --people-picker-input-hover-background: green;
  --people-picker-input-hover-border-color: red;
  --people-picker-input-focus-background: purple;
  --people-picker-input-focus-border-color: orange;

  --people-picker-input-placeholder-focus-text-color: yellow;
  --people-picker-input-placeholder-hover-text-color: gold;
  --people-picker-input-placeholder-text-color: white;
  --people-picker-search-icon-color: yellow;
  --people-picker-remove-selected-close-icon-color: blue;

  /** You can also change the person tokens **/
  --person-line1-text-color: blue;
  --person-line2-text-color: red;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Events

The following events are fired from the component.

| Event              | When is it emitted                                                         | Custom data                                                                                                                                                                                                                                                     | Cancelable | Bubbles |          Works with custom template           |
| ------------------ | -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------: | :-----: | :-------------------------------------------: |
| `selectionChanged` | The user added or removed a person from the list of selected/picked people | Array of selected people, where a person can be a Graph [user](/graph/api/resources/user), [person](/graph/api/resources/person) or [contact](/graph/api/resources/contact) with an additional `personImage` property that contains the URL of the user's photo |     No     |   No    | Yes, unless you override the default template |

For more information about handling events, see [events](../customize-components/events.md).

## Templates

`mgt-people-picker` supports several [templates](../customize-components/templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type       | Data context                      | Description                                                                           |
| --------------- | --------------------------------- | ------------------------------------------------------------------------------------- |
| default         | null: no data                     | The template used to override the rendering of the entire component.                  |
| loading         | null: no data                     | The template used to render the state of picker while request to graph is being made. |
| error           | null: no data                     | The template used if user search returns no users.                                    |
| no-data         | null: no data                     | An alternative template used if user search returns no users.                         |
| selected-person | person: The person details object | The template to render selected people.                                               |
| person          | person: The person details object | The template to render people in the dropdown.                                        |

The following examples shows how to use the `error` template.

```html
<mgt-people-picker>
  <template data-type="error">
    <p>Sorry, no people were found</p>
  </template>
</mgt-people-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions.

| Configuration                                                                   | Permission                                       | API                                                                       |
| ------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------------- |
| `group-id` set                                                                  | People.Read, User.Read.All, GroupMember.Read.All | [/groups/\${groupId}/members](/graph/api/group-list-members)              |
| `type` set to `Person` or `any`                                                 | People.Read                                      | [/me/people](/graph/api/user-list-people)                                 |
| `type` set to `Group` or searching for users and `type` set to `Group` or `any` | Group.Read.All                                   | [/groups](/graph/api/group-list)                                          |
| `default-selected-user-ids` set                                                 | User.ReadBasic.All                               | [/users](/graph/api/user-list)                                            |
| searching for users and `type` set to `Person` or `any`                         | People.Read, User.ReadBasic.All                  | [/me/people](/graph/api/user-list-people), [/users](/graph/api/user-list) |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

| Object store | Cached data    | Remarks                                                            |
| ------------ | -------------- | ------------------------------------------------------------------ |
| `groups`     | List of groups | Used when `type` is set to `PersonType.group`                      |
| `people`     | List of people | Used when `type` is set to `PersonType.person` or `PersonType.any` |
| `users`      | List of users  | Used when `groupId` specified                                      |

See [Caching](../customize-components/cache.md) for more details on how to configure the cache.

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method               | Description                                                       |
| -------------------- | ----------------------------------------------------------------- |
| renderInput          | Renders the input text box.                                       |
| renderSelectedPeople | Renders the selected people tokens.                               |
| renderSelectedPerson | Renders an individual person token.                               |
| renderFlyout         | Renders the flyout chrome.                                        |
| renderFlyoutContent  | Renders the appropriate state in the results flyout.              |
| renderLoading        | Renders the loading state.                                        |
| renderNoData         | Renders the state when no results are found for the search query. |
| renderSearchResults  | Renders the list of search results.                               |
| renderPersonResult   | Renders an individual person search result.                       |

## Localization

The control exposes the following variables that can be localized. For details about localization, see [Localizing components](../customize-components/localization.md).

| String name              | Default value                  |
| ------------------------ | ------------------------------ |
| inputPlaceholderText     | `Start typing a name`          |
| maxSelectionsPlaceHolder | `Maxiumum reached`             |
| maxSelectionsAriaLabel   | `You can only select 1 person` |
| noResultsFound           | `We didn't find any matches.`  |
| loadingMessage           | `Loading...`                   |
| selected                 | `selected`                     |
| removeSelectedUser       | `Remove `                      |
| selectContact            | `select a contact`             |
| suggestionsTitle         | `Suggested contacts`           |
