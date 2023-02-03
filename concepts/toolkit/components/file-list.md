---
title: "File list component in Microsoft Graph Toolkit"
description: "The file list component is used to display a list of files by showing their icon, and name"
ms.localizationpriority: medium
author: sebastienlevert
---

# File list component in Microsoft Graph Toolkit

The File List component displays [a list of multiple folders and files](/graph/api/resources/onedrive) by using the file/folder name, an icon, and other properties that you specify. This component uses the [mgt-file](./file.md) component. You can specify a specific drive or site, display a list of files based on insight type (trending, used, or shared), or provide queries to a custom list of files. The component also provides the option to allow users to upload files to a specified location in One Drive or SharePoint.

## Example

The following example displays a file using the `mgt-file-list` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-file-list--file-list&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-file-list--file-list&source=docs)

## Properties

You can use several properties to customize the component.

| Attribute | Property | Description |
| --------- | -------- | ----------- |
| file-list-query | fileListQuery | The full query or path to the drive or site that contains the list of files to render. |
| file-queries | fileQueries | An array of file queries to be rendered by the component. |
| none | files | An array of files to get or set the list of files rendered by the component. Use this to access the files loaded by the component. Set this value to load your own files. |
| insight-type | insightType | Set to show the user’s trending, used, or shared files. |
| drive-id | driveId | ID of the drive the folder belongs to. Must also provide either `item-id` or `item-path`. |
| group-id | groupId | ID of the group the folder belongs to. Must also provide either `item-id` or `item-path`. |
| site-id | siteId | ID of the site the folder belongs to. Must also provide either `{item-id}` or `{item-path}`. Provide `{list-id}` if you’re referencing a file from a specific list. |
| item-id | itemId | ID of the folder. Default query is `/me/drive/items`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| item-path | itemPath | Item path of the folder (relative to the root). Default query is `/me/drive/root`. Provide `{drive-id}`, `{group-id}`, `{site-id}`, or `{user-id}` to query a specific location. |
| page-size | pageSize | A number value to indicate the maximum number of files to render on each page. **Note:** `page-size` is not supported with `insight-type`. |
| file-extensions | fileExtensions | An array of file extensions used to filter files to show. |
| hide-more-files-button | hideMoreFilesButton | Boolean to indicate whether to show a button to render more files. |
| enable-file-upload | enableFileUpload | Boolean to enable or disable file upload functionality. The default value is `false`.  |
| excluded-file-extensions | excludedFileExtensions | String array of file extensions to be excluded from file upload. Must also set the `enable-file-upload` attribute to `true`. |
| max-file-size | maxFileSize | A number representing the maximum file upload size (KB). Must also set the `enable-file-upload` attribute to `true`. |
| max-upload-file | maxUploadFile | A number representing the maximum number of files allowed to be uploaded. The default value is `10` files. Must also set the `enable-file-upload` attribute to `true`. |

The following example changes the behavior of the component to fetch a file list from a specific query.

```html
<mgt-file-list file-list-query="/me/drive/items/01BYE5RZYJ43UXGBP23BBIFPISHHMCDTOY/children"></mgt-file-list>
```

The following example changes the behavior of the component to fetch a file list from a folder by providing the folder id.

```html
<mgt-file-list item-id="01BYE5RZYJ43UXGBP23BBIFPISHHMCDTOY"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list from a group by providing the group id and folder path.

```html
<mgt-file-list group-id="8090c93e-ba7c-433e-9f39-08c7ba07c0b3" item-path="/Design"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list from a user by providing the user id and folder id.

```html
<mgt-file-list user-id="48d31887-5fad-4d73-a9f5-3c356e68a038" item-id="01BYE5RZYFPM65IDVARFELFLNTXR4ZKABD"></mgt-file-list>
```

The following example changes the behavior of the component to fetch file list by providing the insight type.

```html
<mgt-file-list insight-type="shared"></mgt-file-list>
```

The following example enables the file upload feature.

```html
<mgt-file-list enable-file-upload></mgt-file-list>
```

The following example limits the maximum number of files that can be uploaded to 5.

```html
<mgt-file-list max-upload-file="5" enable-file-upload></mgt-file-list>
```

The following example limits the maximum file size that can be uploaded to 10000 KB.

```html
<mgt-file-list max-file-size="10000" enable-file-upload></mgt-file-list>
```

The following example excludes upload of files with file extensions ".doc,.pdf".

```html
<mgt-file-list excluded-file-extensions=".doc,.pdf" enable-file-upload></mgt-file-list>
```

## Methods
| Method | Description |
| --- | --- |
| reload(clearCache = false) | Call the method to reload the component with potential new data based on its properties. Pass `true` to clear the cache before reloading. |

## CSS custom properties

The `mgt-file-list` component defines the following CSS custom properties.

```css
mgt-file-list {
  --font-family: 'Segoe UI';
  --font-size: 14px;

  --file-list-background-color: #ffffff;
  --file-list-border: none;
  --file-list-box-shadow: none;
  --file-list-padding: 4px 0;
  --file-list-margin: 0;

  --file-item-background-color--hover: rgba(0, 0, 0, 0.1);
  --file-item-background-color--active: rgba(0, 0, 0, 0.05);
  --file-item-border-radius: 2px;
  --file-item-margin: 0 4px;

  --file-item-border-top: none;
  --file-item-border-left: none;
  --file-item-border-right: none;
  --file-item-border-bottom: none;

  --show-more-button-background-color: #f3f2f1;
  --show-more-button-background-color--hover: rgba(0, 0, 0, 0.1);
  --show-more-button-font-size: 12px;
  --show-more-button-padding: 6px;
  --show-more-button-border-bottom-right-radius: 4px;
  --show-more-button-border-bottom-left-radius: 4px;

  --file-upload-border: 4px dotted #ffbdc3;
  --file-upload-background-color: rgba(255, 0, 0, 0.1);
  --file-upload-button-float: left;
  --file-upload-button-color: #323130;
  --file-upload-button-background-color: #fef8dd;
  --file-upload-dialog-content-background-color: #ffe7c7;
  --file-upload-dialog-primarybutton-background-color: #ffe7c7;
  --file-upload-dialog-primarybutton-color: #323130;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Microsoft Graph APIs and permissions

| Configuration | Permissions | API |
| ------------- | ----------------- | --- |
| Default (no identifiers or query provided) | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/root/children` |
| Provide `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /me/drive/root/children` <br /> `PUT /me/drive/root:/{filename}:/content` <br /> `POST /me/drive/root:/{filename}:/createUploadSession` |
| Provide `{drive-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /drives/{drive-id}/items/{item-id}/children`|
| Provide `{drive-id}` AND `{item-id}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /drives/{drive-id}/items/{item-id}/children` <br /> `PUT /drives/{drive-id}/items/{item-id}:/{filename}:/content` <br /> `POST /drives/{drive-id}/items/{item-id}:/{filename}:/createUploadSession` |
| Provide `{group-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /groups/{group-id}/drive/items/{item-id}/children` |
| Provide `{group-id}` AND `{item-id}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /groups/{group-id}/drive/items/{item-id}/children` <br /> `PUT /groups/{group-id}/drive/items/{item-id}:/{filename}:/content` <br /> `POST /groups/{group-id}/drive/items/{item-id}:/{filename}:/createUploadSession` |
| Provide ONLY `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/items/{item-id}/children` |
| Provide ONLY `{item-id}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /me/drive/items/{item-id}/children` <br /> `PUT /me/drive/items/{item-id}:/{filename}:/content` <br /> `POST /me/drive/items/{item-id}:/{filename}:/createUploadSession` |
| Provide `{site-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /sites/{site-id}/drive/items/{item-id}/children` |
| Provide `{site-id}` AND `{item-id}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /sites/{site-id}/drive/items/{item-id}/children` <br /> `PUT /sites/{site-id}/drive/items/{item-id}:/{filename}:/content` <br /> `POST /sites/{site-id}/drive/items/{item-id}:/{filename}:/createUploadSession` |
| Provide `{user-id}` AND `{item-id}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /users/{user-id}/drive/items/{item-id}/children` |
| Provide `{user-id}` AND `{item-id}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /users/{user-id}/drive/items/{item-id}/children` <br /> `PUT /users/{user-id}/drive/items/{item-id}:/{filename}:/content` <br /> `POST /users/{user-id}/drive/items/{item-id}:/{filename}:/createUploadSession` |
| Provide `{drive-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /drives/{drive-id}/root:/{item-path}:/children` |
| Provide `{drive-id}` AND `{item-path}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /drives/{drive-id}/root:/{item-path}:/children` <br /> `PUT /drives/{drive-id}/root:/{item-path}/{filename}:/content` <br /> `POST /drives/{drive-id}/root:/{item-path}/{filename}:/createUploadSession` |
| Provide `{group-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /groups/{group-id}/root:/{item-path}:/children` |
| Provide `{group-id}` AND `{item-path}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /groups/{group-id}/root:/{item-path}:/children` <br /> `PUT /groups/{group-id}/root:/{item-path}/{filename}:/content` <br /> `POST /groups/{group-id}/root:/{item-path}/{filename}:/createUploadSession` |
| Provide `{site-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /sites/{site-id}/root:/{item-path}:/children` |
| Provide `{site-id}` AND `{item-path}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /sites/{site-id}/root:/{item-path}:/children` <br /> `PUT /sites/{site-id}/root:/{item-path}/{filename}:/content` <br /> `POST /sites/{site-id}/root:/{item-path}/{filename}:/createUploadSession` |
| Provide `{user-id}` AND `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /users/{user-id}/root:/{item-path}:/children` |
| Provide `{user-id}` AND `{item-path}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /users/{user-id}/root:/{item-path}:/children` <br /> `PUT /users/{user-id}/root:/{item-path}/{filename}:/content` <br /> `POST /users/{user-id}/root:/{item-path}/{filename}:/createUploadSession` |
| Provide only `{item-path}` | Files.Read, Files.Read.All, Sites.Read.All | `GET /me/drive/root:/{item-path}:/children` |
| Provide only `{item-path}` AND `enable-file-upload` | Files.Read, Files.Read.All, Sites.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All | `GET /me/drive/root:/{item-path}:/children` <br /> `PUT /me/drive/root:/{item-path}/{filename}:/content` <br /> `POST /me/drive/root:/{item-path}/{filename}:/createUploadSession` |
| `insight-type` is set to trending | Sites.Read.All | `GET /me/insights/trending` |
| Provide `{user-id or upn}` AND `insight-type` is set to `trending` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/trending` |
| `insight-type` is set to `used` | Sites.Read.All | `GET /me/insights/used` |
| Provide `{user-id or upn}` AND `insight-type` is set to `used` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/used` |
| `insight-type` is set to shared | Sites.Read.All | `GET /me/insights/shared` |
| Provide `{user-id or upn}` AND `insight-type` is set to `shared` | Sites.Read.All | `GET /users/{id or userPrincipalName}/insights/shared?$filter=((lastshared/sharedby/id eq '${user-id}') and (resourceReference/type eq 'microsoft.graph.driveItem'))` |

## Events

Event | When is it emitted | Custom data | Cancelable | Bubbles | Works with custom template
------|-------------------|--------------|:-----------:|:---------:|:---------------------------:|
`itemClick` | Fired when the user clicks a file. | Selected [file](/graph/api/resources/driveItem) | No | No | Yes, with custom **file** template

For more information about handling events, see [events](../customize-components/events.md).

## Templates

The `mgt-file-list` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the data types listed in the following table.

| Data type | Data context | Description |
| ----------- | -------------- | ------------ |
| default | `files`: list of file objects | The default template replaces the entire component with your own. |
| file | `file`: file object | The template used to render each file. |
| no-data | No data context is passed | The template used when no data is available. |
| loading | No data context is passed | The template used while the component loads state. |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md) to fetch the required data.

## Cache

|Object store|Cached data|Remarks|
|---------|-----------|-------|
|`fileLists`|List of file lists|Default cache list to store file lists.|
|`insightfileLists`|List of insight file lists|Used when `insightType` is provided.|

> [!NOTE]
> The `mgt-file-list` component also uses the `fileQueries` object store in `mgt-file` IndexedDB to cache files when `fileQueries` is provided.

For details about how to configure the cache, see [Caching](../customize-components/cache.md).
