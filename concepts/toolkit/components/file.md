---
title: "File component in Microsoft Graph Toolkit"
description: "The file component is used to display a file by showing the icon, and name"
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---

# File component in Microsoft Graph Toolkit

The File component is used to represent an individual [file/folder from OneDrive or SharePoint](/graph/onedrive-concept-overview). The component displays information such as the file or folder name, the file type icon, and the author and last modified date. You can provide the identifiers for a file and the component generates the query to retrieve the file based on the identifiers provided. This component can be used on its own or as part of the [mgt-file-list](./file-list.md) components.

## Example

The following example displays a file using the `mgt-file` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-file-html--file&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-file-html--file&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-file-react--file&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-file-react--file&source=docs).

---

## Properties

You can use several properties to customize the component.

| Attribute      | Property      | Description                                                                                                                                                                                                                                                                                                                                                                                                               |
| -------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| file-query     | fileQuery     | The full query or path to the file to be retrieved.                                                                                                                                                                                                                                                                                                                                                                       |
| user-id        | userId        | ID of the user. This property is used to get the file for a specified user. Must also provide `item-id`, `item-path`, `insight-type` or `insight-id`.                                                                                                                                                                                                                                                                              |
| drive-id       | driveId       | The ID of the drive the file belongs to. Must also provide either `item-id` or `item-path`.                                                                                                                                                                                                                                                                                                                               |
| group-id       | groupId       | ID of the group the file belongs to. Must also provide either `item-id` or `item-path`.                                                                                                                                                                                                                                                                                                                                   |
| site-id        | siteId        | ID of the site the file belongs to. Must also provide either `item-id` or `item-path`. Provide the `list-id` too if you’re referencing a file from a specific list.                                                                                                                                                                                                                                                       |
| list-id        | listId        | ID of the list the file belongs to. Must also provide `site-id` and `item-id`.                                                                                                                                                                                                                                                                                                                                            |
| item-id        | itemId        | ID of the file. Default query is `/me/drive/items`. Provide `drive-id`, `group-id`, `site-id`, or `user-id` to query a specific location.                                                                                                                                                                                                                                                                                 |
| item-path      | itemPath      | Item path of the file. Default query is `/me/drive/root`. Provide `drive-id`, `group-id`, `site-id`, or `user-id` to query a specific location.                                                                                                                                                                                                                                                                           |
| insight-type   | insightType   | Type of insight the file is retrieved from. Can be `trending`, `used`, or `shared`.                                                                                                                                                                                                                                                                                                                                       |
| insight-id     | insightId     | ID of the insight resource.                                                                                                                                                                                                                                                                                                                                                                                               |
| file-details   | fileDetails   | Set to an object representing a file                                                                                                                                                                                                                                                                                                                                                                                      |
| file-icon      | fileIcon      | URL path where the icon is stored.                                                                                                                                                                                                                                                                                                                                                                                        |
| -              | driveItem     | Object containing Graph details on item.                                                                                                                                                                                                                                                                                                                                                                                  |
| -              | fileDetails   | Object containing the DriveItem.                                                                                                                                                                                                                                                                                                                                                                                          |
| view           | view          | Set to control how the file is rendered. The default is `oneline`. <br>`image` - show only the icon <br>`oneline` - show the icon and one line of text (default is file `name`) <br>`twolines` - show the icon and two lines of text (`name` and `lastModifiedDateTime` by default)<br> `threelines` - show the icon and three lines of text (`name`, `lastModifiedDateTime`, and `displayName` of the author by default) |
| line1-property | line1Property | Sets the property of `fileDetails` to use for the first line of text. Default is `name` of the file.                                                                                                                                                                                                                                                                                                                      |
| line2-property | line2Property | Sets the property of `fileDetails` to use for the second line of text. Default is `lastModifiedDateTime`.                                                                                                                                                                                                                                                                                                                 |
| line3-property | line3Property | Sets the property of `fileDetails` to use for the third line of text. Default is `size` of the file.                                                                                                                                                                                                                                                                                                                      |

The following example changes the behavior of the component to fetch data from a specific query.

```html
<mgt-file file-query="/me/drive/items/01BYE5RZZFWGWWVNHHKVHYXE3OUJHGWCT2">
</mgt-file>
```

The following example changes the behavior of the component to fetch data from a specific query, show three lines of information - file name, last modified date time, and file size by default - and set the file icon.

```html
<mgt-file
  file-query="/me/drive/items/01BYE5RZZFWGWWVNHHKVHYXE3OUJHGWCT2"
  view="threeLines"
  file-icon="ICON_PATH"
></mgt-file>
```

The following example changes the behavior of the component to fetch data from a specific drive.

```html
<mgt-file
  drive-id="b!-RIj2DuyvEyV1T4NlOaMHk8XkS_I8MdFlUCq1BlcjgmhRfAj3-Z8RY2VpuvV_tpd"
  item-id="01BYE5RZ5MYLM2SMX75ZBIPQZIHT6OAYPB"
></mgt-file>
```

The following example changes the behavior of the component to fetch data from a SharePoint site and path.

```html
<mgt-file
  site-id="m365x214355.sharepoint.com,5a58bb09-1fba-41c1-8125-69da264370a0,9f2ec1da-0be4-4a74-9254-973f0add78fd"
  item-Path="/DemoDocs/AdminDemo"
></mgt-file>
```

The following example changes the behavior of the component to fetch data by insight type.

```html
<mgt-file
  insight-type="shared"
  insight-id="AW1GxMvkOztMkJX-SCppUSRPF5EvyPDHRZVAqtQZXI4JoUXwI9_mfEWNlabr1f7aXRBWDMt2C2FDop4fP1vsUw9tRsTL5Ds7TJCV_kgqaVEkBA"
></mgt-file>
```

## CSS custom properties

The `mgt-file` component defines the following CSS custom properties.

```html
<mgt-file class="file" file-query="/me/drive/items/01BYE5RZZFWGWWVNHHKVHYXE3OUJHGWCT2"></mgt-file>
```

```css
.file {
  --file-type-icon-height: 30px;
  --file-border: 4px dotted #ffbdc3;
  --file-border-radius: 8px;
  --file-box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
  --file-background-color: #e0f8db;
  --file-background-color-focus: yellow;
  --file-background-color-hover: green;
  --file-padding: 8px;
  --file-padding-inline-start: 12px;
  --file-margin: 3px 4px;
  --file-line1-font-size: 15px;
  --file-line1-font-weight: 500;
  --file-line1-color: gray;
  --file-line1-text-transform: capitalize;
  --file-line2-font-size: 14px;
  --file-line2-font-weight: 300;
  --file-line2-color: #e50000;
  --file-line2-text-transform: lowercase;
  --file-line3-font-size: 13px;
  --file-line3-font-weight: 500;
  --file-line3-color: purple;
  --file-line3-text-transform: capitalize;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Microsoft Graph APIs and permissions

This control uses the following Microsoft Graph APIs and permissions. For each API call, one of the permissions listed is required.

| Configuration                                                                                    | Permission Scopes                          | API                                                                            |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------ | ------------------------------------------------------------------------------ |
| Developer provides `{drive-id}` AND `{item-id}`                                                  | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /drives/{drive-id}/items/{item-id}](/graph/api/driveitem-get)                          |
| Developer provides `{drive-id}` AND `{item-path}`                                                | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /drives/{drive-id}/root:/{item-path}](/graph/api/driveitem-get)                        |
| Developer provides `{group-id}` AND `{item-id}`                                                  | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /groups/{group-id}/drive/items/{item-id}](/graph/api/driveitem-get)                    |
| Developer provides `{group-id}` AND `{item-path}`                                                | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /groups/{group-id}/drive/root:/{item-path}](/graph/api/driveitem-get)                  |
| Developer provides ONLY `{item-id}`                                                              | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /me/drive/items/{item-id}](/graph/api/driveitem-get)                                   |
| Developer provides ONLY `{item-path}`                                                            | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /me/drive/root:/{item-path}](/graph/api/driveitem-get)                                 |
| Developer provides `{site-id}` AND `{item-id}`                                                   | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /sites/{site-id}/drive/items/{item-id}](/graph/api/driveitem-get)                      |
| Developer provides `{site-id}` AND `{item-path}`                                                 | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /sites/{site-id}/drive/root:/{item-path}](/graph/api/driveitem-get)                    |
| Developer provides `{site-id}` AND `{list-id}` AND `{item-id}`                                   | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /sites/{site-id}/lists/{list-id}/items/{item-id}/driveItem](/graph/api/driveitem-get)  |
| Developer provides `{user-id}` AND `{item-id}`                                                   | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /users/{user-id}/drive/items/{item-id}](/graph/api/driveitem-get)                      |
| Developer provides `{user-id}` AND `{item-path}`                                                 | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Group.Read.All, Group.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | [GET /users/{user-id}/drive/root:/{item-path}](/graph/api/driveitem-get)                    |
| `insight-type` is set to `trending` AND developer provides `{insight-id}`                        | Sites.Read.All, Sites.ReadWrite.All                                                                                                        | [GET /me/insights/trending/{insight-id}/resource](/graph/api/insights-list-trending)        |
| `insight-type` is set to `used` AND developer provides `{insight-id}`                            | Sites.Read.All, Sites.ReadWrite.All                                                                                                        | [GET /me/insights/used/{id}/resource](/graph/api/insights-list-used)                        |
| `insight-type` is `shared` AND developer provides `{insight-id}`                                 | Sites.Read.All, Sites.ReadWrite.All                                                                                                        | [GET /me/insights/shared/{id}/resource](/graph/api/insights-list-shared)                    |

## Templates

The `mgt-file` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` to one of the following values:

| Data Type | Data Context                  | Description                                                       |
| --------- | ----------------------------- | ----------------------------------------------------------------- |
| loading   | none                          | The template to render while the component is in a loading state. |
| no-data   | none                          | The template to render when no file data is available.            |
| default   | file: the file details object | The default template replaces the entire component with your own. |

### Example of template usage

```html
<mgt-file file-query="/me/drive/items/01BYE5RZZFWGWWVNHHKVHYXE3OUJHGWCT2">
  <template data-type="default">
    <p>File name: {{file.name}}.</p>
    <p>File ID: {{file.id}}.</p>
  </template>
  <template data-type="loading">
    <p>Getting the file data...</p>
  </template>
  <template data-type="no-data">
    <p>No file data was found</p>
  </template>
</mgt-file>
```

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

| Object store   | Cached data               | Remarks                                              |
| -------------- | ------------------------- | ---------------------------------------------------- |
| `driveFiles`   | List of files by drive id | Used when `driveId` is provided                      |
| `groupFiles`   | List of files by group id | Used when `groupId` is provided                      |
| `siteFiles`    | List of files by site id  | Used when `siteId` is provided                       |
| `userFiles`    | List of files by user id  | Used when `userId` is provided                       |
| `insightFiles` | List of files by insights | Used when `insightType` and `insightId` are provided |
| `fileQueries`  | List of files by queries  | Used when `fileQuery` is provided                    |

For details about how to configure the cache, see [Caching](../customize-components/cache.md).

## Localization

The control exposes the following variables that can be localized. For details about how to set up localization, see [Localizing components](../customize-components/localization.md).

| String name      | Default value |
| ---------------- | ------------- |
| modifiedSubtitle | `Modified`    |
| sizeSubtitle     | `Size`        |
