---
title: "File component in the Microsoft Graph Toolkit"
description: "The file component is used to display a file by showing the icon, and name"
localization_priority: Normal
author: beth-panx
---

# File component in the Microsoft Graph Toolkit

The File component is used to represent an individual file/folder from OneDrive or SharePoint by displaying information such as the file/folder name, an icon indicating the file type, and other properties such as the author, last modified date, or other details selected by the developer. The developer or application provides the identifiers for a file and the component will generate the query to retreive the file based on the identifiers provided. This component can be used on it's own or as part of the [mgt-file-list](./file-list.md) components.

## Example

The following example displays a file using the `mgt-file` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-file--file&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-file--file&source=docs)

## Properties

You can use several properties to customize the component.

| Attribute | Property | Description |
| --------- | -------- | ----------- |
| `file-query` | `fileQuery` | The full query or path to the file to be retrieved. |
| `drive-id` | `driveId` | The Id of the drive the file belongs to. Must also provide either `item-id` or `item-path`. |
| `group-id` | `groupId` | Id of the group the file belongs to. Must also provide either `item-id` or `item-path`. |
| `site-id` | `siteId` | Id of the site the file belongs to. Must also provide either `{item-id}` or `{item-path}`. Provide the `{list-id}` too if you’re referencing a file from a specific list. |
| `list-id` | `listId` | Id of the list the file belongs to. Must also provide `{site-id}` and `{item-id}`. |
| `item-id` | `itemId` | Id of the file. Default query is `/me/drive/items`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| `item-path` | `itemPath` | Item path of the file. Default query is `/me/drive/root`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| `insight-type` | `insightType` | Type of insight the file is retrieved from. Can be `trending`, `used`, or `shared`. |
| `insight-id` | `insightId` | Id of the insight resource. |
| `file-details` | `fileDetails` | Set to an object representing a file |
| `file-icon` | `fileIcon` | Set to an icon to show for the file |
| `view` | `view` | Set to control how the file is rendered. The default is `oneline`. <br>`image` - show only the icon <br>`oneline` - show the icon and one line of text (default is file `name`) <br>`twolines` - show the icon and two lines of text (`name` and `lastModifiedDateTime` by default)<br> `threelines` - show the icon and three lines of text (`name`, `lastModifiedDateTime`, and `displayName` of the author by default) |
| `line1-property` | `line1Property` | Sets the property of `fileDetails` to use for the first line of text. Default is `name` of the file. |
| `line2-property` | `line2Property` | Sets the property of `fileDetails` to use for the second line of text. Default is `lastModifiedDateTime`. |
| `line3-property` | `line3Property` | Sets the property of `fileDetails` to use for the third line of text. Default is `size` of the file. |

## CSS custom properties

The `mgt-file` component defines the following CSS custom properties.

```css
mgt-file {
  --file-type-icon-size: 28px;
  --file-border: none;
  --file-box-shadow: none;
  --file-background-color: #ffffff;

  --font-family: 'Segoe UI';
  --font-size: 14px;
  --font-weight: 400;
  --text-transform: none;
  --color: #323130;

  --line2-font-size: 12px;
  --line2-font-weight: 400;
  --line2-color: #797775;
  --line2-text-transform: none;

  --line3-font-size: 12px;
  --line3-font-weight: 400;
  --line3-color: #797775;
  --line3-text-transform: none;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Microsoft Graph APIs and permissions

This control uses the following Microsoft Graph APIs and permissions.

| Query | Use if | Permission Scopes |
| ----- | ------ | ----------------- |
| `GET /drives/{drive-id}/items/{item-id}` | `{drive-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All |
| `GET /drives/{drive-id}/root:/{item-path}` | `{drive-id}` AND `{item-path}` | " |
| `GET /groups/{group-id}/drive/items/{item-id}` | `{group-id}` AND `{item-id}` | " |
| `GET /groups/{group-id}/drive/root:/{item-path}` | `{group-id}` AND `{item-path}` | " |
| `GET /me/drive/items/{item-id}` | ONLY `{item-id}` | " |
| `GET /me/drive/root:/{item-path}` | ONLY `{item-path}` | " |
| `GET /sites/{site-id}/drive/items/{item-id}` | `{site-id}` AND `{item-id}` | " |
| `GET /sites/{site-id}/drive/root:/{item-path}` | `{site-id}` AND `{item-path}` | " |
| `GET /sites/{site-id}/lists/{list-id}/items/{item-id}/driveItem` | `{site-id}` AND `{list-id}` AND `{item-id}` | " |
| `GET /users/{user-id}/drive/items/{item-id}` | `{user-id}` AND `{item-id}` | " |
| `GET /users/{user-id}/drive/root:/{item-path}` | `{user-id}` AND `{item-path}` | " |
| `GET /me/insights/trending/{id}/resource` | `insight-type` is `trending` AND `{id}` | Sites.Read.All |
| `GET /users/{id or userPrincipalName}/insights/trending/{id}/resource` | `{user-id or upn}` AND `insight-type` is `trending` AND `{id}` | " |
| `GET /me/insights/used/{id}/resource` | `insight-type` is `used` AND `{id}` | " |
| `GET /users/{id or userPrincipalName}/insights/used/{id}/resource` | `{user-id or upn}` AND `insight-type` is `used` AND `{id}` | " |
| `GET /me/insights/shared/{id}/resource` | `insight-type` is `shared` AND `{id}` | " |
| `GET /users/{id or userPrincipalName}/insights/shared/{id}/resource` | `{user-id or upn}` AND `insight-type` is `shared` AND `{id}` | " |

## Templates

The `mgt-file` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following:

| Data Type | Data Context | Description |
| ----------- | -------------- | ------------- |
| loading | none | The template to render while the component is in a loading state. |
| no-data | none | The template to render when no file data is available. |
| default | file: the file details object | The default template replaces the entire component with your own. |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

