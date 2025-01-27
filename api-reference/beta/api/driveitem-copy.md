---
author: spgraph-docs-team
description: "Asynchronously create a copy of a driveItem (including any children) under a new parent item or with a new name."
ms.date: 09/10/2017
title: "driveItem: copy"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# driveItem: copy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Asynchronously create a copy of a [driveItem][item-resource] (including any children) under a new parent item or with a new name. After the request is acknowledged, it enters a queue. The actual copying, including any subitems, occurs at an undetermined time. Progress is reported until the operation is completed by [monitoring the progress](/graph/long-running-actions-overview).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_copy" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-copy-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/copy
POST /groups/{groupId}/drive/items/{itemId}/copy
POST /me/drive/items/{item-id}/copy
POST /sites/{siteId}/drive/items/{itemId}/copy
POST /users/{userId}/drive/items/{itemId}/copy
```
## Optional query parameters

This method supports the `@microsoft.graph.conflictBehavior` query parameter to customize the behavior when a conflict occurs.

| Value           | Description                                    |
|:----------------|:---------------------------------------------- |
| fail            | The entire operation fails when a conflict occurs. This behavior is the default if no option is specified.  |
| replace         | The preexisting file item is deleted and replaced with the new item when a conflict occurs. This option is only supported for file items. The new item has the same name as the old one. The old item's history is deleted.  |
| rename          | Appends the lowest integer that guarantees uniqueness to the name of the new file or folder and completes the operation.  |

If you specify `@microsoft.graph.conflictBehavior=replace` for a source folder item, this API returns a `202 Accepted` response. In this case, querying the monitoring url reports a `nameAlreadyExists` error. If you specify this parameter with the `childrenOnly` parameter, a nameAlreadyExists error occurs if there are any folder items in the source item's children.

>[!NOTE]
>The `conflictBehavior` parameter isn't supported for OneDrive Consumer.

## Request body

In the request body, provide a JSON object with the following parameters.

| Name            | Value                                          | Description                                                                                                 |
|:----------------|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| parentReference | [ItemReference](../resources/itemreference.md) | Optional. Reference to the parent item the copy is created in.                                         |
| name            | string                                         | Optional. The new name for the copy. If this information isn't provided, the same name is used as the original.    |
| childrenOnly    | Boolean                                        | Optional. If set to `true`, the children of the **driveItem** are copied but not the **driveItem** itself. The default value is `false`. Valid _only_ on folder items. |
| includeAllVersionHistory    | Boolean                            | Optional. If set to `true`, source files version history (major versions and minor versions, if any) should be copied to the destination, within the target version setting limit. If `false`, only the latest major version is copied to the destination. The default value is `false`.   |


>[!NOTE]
>The `parentReference` parameter should include the `driveId` and `id` parameters for the target folder.
>
>In a single request, the `childrenOnly` option copies 150 children items, and for the grandchildren items the SharePoint limit applies. For more information, see [SharePoint limitation](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#moving-and-copying-across-sites)

> If you use the `@microsoft.graph.conflictBehavior` query parameter with the `childrenOnly` parameter, then every child in the operation will be subject to the `@microsoft.graph.conflictBehavior` specified.


## Response

The response returns details about how to [monitor the progress](/graph/long-running-actions-overview) of the copy, upon accepting the request. The response indicates whether the copy operation was accepted or rejected - for example, if the destination filename is already in use.

## Examples

### Example 1: Copy a file to a folder

The following example copies a file identified by `{item-id}` into a folder identified by the `driveId` and `id` values.
The new copy of the file is named `contoso plan (copy).txt`.

#### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "copy-item-1", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "name": "contoso plan (copy).txt"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/copy-item-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

### Example 2: Copy the child items in a folder

The following example copies the children in a folder identified by `{item-id}` into a folder identified by the `driveId` and `id` values.
The `childrenOnly` parameter is set to true.

#### Request 
# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "copy-item-2", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "childrenOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/copy-item-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

The `Location` field of the response contains a monitoring URL that you can use to check the progress of the copy operation. Because copy operations happen asynchronously and can finish after an unspecified amount of time, you can use this URL repeatedly to track its status.

To receive a status report similar to the one in the following example, GET the URL in the `Location` field of the response.
```
{
  "@odata.context": "https://https://contoso.sharepoint.com/sites/site1/_api/v2.1/$metadata#drives('driveId')/operations/$entity",
  "id": "049af13f-d177-4c70-aed0-eb6f04a5d88b",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-01T00:00:00Z",
  "percentageComplete": 100,
  "percentComplete": 100,
  "resourceId": "016OGUCSF6Y2GOVW7725BZO354PWSELRRZ",
  "resourceLocation": "https://https://contoso.sharepoint.com/sites/site2/_api/v2.0/drives/b!1YwGyNd6RUuVB42eCVw7ULlXybr_-09Br67iDGnYY-neBqwZd6jJRJbgCTx0On5n/items/016OGUCSF6Y2GOVW7725BZO354PWSELRRZ",
  "status": "completed"
}
```

### Example 3: Failure to copy a file item to a folder with a preexisting item with the same name

The following example attempts to copy a file item identified by `{item-id}` into a folder identified by the `driveId` and `id` property values. In this example, the destination already has a file with the same name. However, because the request doesn't specify a `@microsoft.graph.conflictBehavior` query parameter value of either `replace` or `rename`, the operation is accepted but fails during processing.

#### Request
# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "copy-item-3", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/copy-item-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

The following example shows an example status report obtained by visiting the URL in the value of the `Location` field in the response to the initial request.
```http
{
  "id": "46cf980a-28e1-4623-b8d0-11fc5278efe6",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-01T00:00:00Z",
  "status": "failed",
  "error": {
    "code": "nameAlreadyExists",
    "message": "Name already exists"
  }
}
```

To resolve this error, use the optional query parameter [@microsoft.graph.conflictBehavior](#optional-query-parameters) as seen in the [next example](#example-4-copy-a-file-item-to-a-folder-with-a-preexisting-item-with-the-same-name-by-specifying-the-@microsoft-graph-conflictbehavior-query-parameter).

### Example 4: Copy a file item to a folder with a preexisting item with the same name by specifying the @microsoft.graph.conflictBehavior query parameter

The following example copies a file item identified by `{item-id}` into a folder identified by the `driveId` and `id` values.
In this example, the destination already has a file with the same name. The query parameter `@microsoft.graph.conflictBehavior` is set to replace. The possible values are `replace`, `rename`, or `fail`.

#### Request
# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "copy-item-4", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy?@microsoft.graph.conflictBehavior=replace
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/copy-item-4-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

### Example 5: Failure to copy child items that contain a folder item by specifying @microsoft.graph.conflictBehavior as replace

The following example attempts to copy the child items  in a folder identified by `{item-id}` into a folder identified by the `driveId` and `id` values. One of the child items is a folder item. The destination might have items with colliding names to the children at the source folder. The request attempts to resolve potential name conflicts by setting the optional query parameter `@microsoft.graph.conflictBehavior` to replace. The request is accepted but the monitoring url reports failures. Instead use `rename` or `fail` if at least one of the children is a folder item.

#### Request
<!-- { "blockType": "request", "name": "copy-item-conflicts", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy?@microsoft.graph.conflictBehavior=replace
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "childrenOnly": true
}
```


#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

Visiting the monitoring URL yields a status report similar to the following example.

<!-- { "blockType": "ignored" } -->
```http
{
  "@odata.context": "https://contoso.sharepoint.com/sites/site2/_api/v2.1/$metadata#drives('driveId')/operations/$entity",
  "id": "e410fb22-fc84-41df-ac9f-e95e5110a5cb",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-01T00:00:00Z",
  "status": "failed",
  "error": {
    "message": "Errors occurred during copy/move operation.",
    "details": [
      {
        "code": "nameAlreadyExists",
        "message": "Name already exists"
      },
      {
        "code": "nameAlreadyExists",
        "message": "Name already exists"
      },
      {
        "code": "nameAlreadyExists",
        "message": "Name already exists",
        "target": "01E4CGZM4FGUVRMKSJWBCLZQTWNFGHOTXG"
      },
      {
        "code": "nameAlreadyExists",
        "message": "Name already exists",
        "target": "01E4CGZM2XRHETBOUOYVA2OKZFMGGBQ6VU"
      }
    ]
  }
}
```

### Example 6: Copy item to a destination folder and preserve its version history

The following example copies the item identified by `{item-id}` into a folder identified by the `driveId` and `id` values. It also copies the version history to the target folder. If the source file contains more versions than the destination version limit setting, the copy only transfers the maximum number of newest versions that the destination site allows.

#### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "copy-item-5", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "includeAllVersionHistory": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/copy-item-5-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-5-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-5-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717

```

### Example 7: Failure to copy child items in a root folder without specifying the childreOnly parameter as true

The following example attempts to copy the child items in the folder identified by `{item-id}`, also known as "root," into a folder identified by the `driveId` and `id` values.
The `childrenOnly` parameter isn't set to true.
The request fails because the copy operation can't be done on the root folder.

#### Request
<!-- { "blockType": "ignored", "name": "copy-item-6" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/root/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  }
}
```

#### Response

Visiting the monitoring URL yields a status report similar to the following example.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 283

{
  "error":
  {
    "code": "invalidRequest",
    "message": "Cannot copy the root folder.",
    "innerError":
    {
      "date": "2023-12-11T04:26:35",
      "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
      "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe"
    }
  }
}
```
To resolve this error, set the `childrenOnly` parameter to true.

### Example 8: Failure to copy more than 150 direct child items

The following example attempts to copy the children in a folder identified by `{item-id}` into a folder identified by the `driveId` and `id` values.
The `childrenOnly` parameter is set to true. The source folder item identified by `{item-id}` contains more than 150 direct children.
The request fails because the limit is 150 direct children.

#### Request
<!-- { "blockType": "ignored", "name": "copy-item-7" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "childrenOnly": true
}
```

#### Response

Visiting the monitoring URL yields a status report similar to the following example.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 341

{
  "error":
  {
    "code": "invalidRequest",
    "message": "Direct child count limit exceeded. Cannot copy children only when there are more than 150 direct children.",
    "innerError":
    {
      "code": "directChildrenLimitExceeded",
      "date": "2023-12-11T04:26:35",
      "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
      "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe"
    }
  }
}
```
To resolve this error, reorganize the source folder structure only to have 150 children.

### Example 9: Failure to copy the child items of a file item

The following example attempts to copy the children of a source item identified by `{item-id}` into a folder identified by the `driveId` and `id` values.
The `{item-id}` refers to a file, not a folder. The `childrenOnly` parameter is set to true.
The request fails since the `{item-id}` is a nonfolder driveItem.

#### Request
<!-- { "blockType": "ignored", "name": "copy-item-8" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "childrenOnly": true
}
```

#### Response

Visiting the monitoring URL yields a status report similar to the following example.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 290

{
  "error":
  {
    "code": "invalidRequest",
    "message": "childrenOnly option is not valid for file items.",
    "innerError":
    {
      "date": "2023-12-11T04:26:35",
      "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
      "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe""
    }
  }
}
```

### Example 10: Failure to copy child items by specifying both the childrenOnly and name request body parameters

The following example attempts to copy the child items  in a folder identified by `{item-id}` into a folder identified by the `driveId` and `id` values. The request body sets the `childrenOnly` parameter to true and also specifies a `name` value. The request fails as the `childrenOnly` and `name` parameters are mutually exclusive.

#### Request
<!-- { "blockType": "ignored", "name": "copy-item-9" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "driveId": "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop",
    "id": "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
  },
  "name": "contoso plan (copy).txt",
  "childrenOnly": true
}
```

#### Response

The following example shows the response.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 285

{
  "error":
  {
    "code": "invalidRequest",
    "message": "Cannot use name parameter alongside childrenOnly.",
    "innerError":
    {
      "date": "2023-12-11T04:26:35",
      "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
      "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe""
    }
  }
}
```

## Related content

For error information, see [Error responses][error-response].

[error-response]: /graph/errors

[item-resource]: ../resources/driveitem.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a copy of an existing item.",
  "keywords": "copy existing item",
  "section": "documentation",
  "tocPath": "Items/Copy",
  "suppressions": [
  ]
}
-->