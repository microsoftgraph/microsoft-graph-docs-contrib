---
author: spgraph-docs-team
description: "Asynchronously create a copy of a driveItem (including any children) under a new parent item or with a new name."
ms.date: 09/23/2025
title: "driveItem: copy"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# driveItem: copy

Namespace: microsoft.graph


[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a copy of a [driveItem][item-resource] asynchronously. You can optionally copy exclusively the child items, specify a new parent folder, or provide a new name. Once the request is accepted, the operation is queued and processed asynchronously. Use the [monitor URL](/graph/long-running-actions-overview) to track progress until the operation completes.

The copy operation is restricted to 30,000 driveItems. For more information, see [SharePoint limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#moving-and-copying-across-sites).

> [!IMPORTANT]
> * Metadata isn't retained when a **driveItem** is copied, including system metadata and custom metadata. An entirely new **driveItem** is created in the target location instead.
> * File versions are only retained when the **includeAllVersionHistory** parameter is explicitly set to `true`. Otherwise, only the latest version is copied.
> * Cross-geo copy isn't supported when using app-only authentication.
> * A known issue occurs when the **includeAllVersionHistory** request parameter is ignored if the **name** request parameter is also passed. To avoid this issue, perform the copy operation without the **name** parameter first, then rename the target item when the copy completes.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

> [!NOTE]
> Permissions are not retained when a driveItem is copied. The copied driveItem inherits the permissions of the destination folder.

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

>[!NOTE]
> The `conflictBehavior` parameter isn't supported for OneDrive Consumer.
>
> The `@microsoft.graph.conflictBehavior` parameter is applied to all the items copied during the operation. The `replace` value is only supported for files; folders with conflicts use the `fail` behavior instead.

## Request body

In the request body, provide a JSON object with the following parameters.

| Name            | Value                                          | Description                                                                                                 |
|:----------------|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| childrenOnly    | Boolean                                        | Optional. If set to `true`, the children of the **driveItem** are copied but not the **driveItem** itself. The default value is `false`. Valid _only_ on folder items. |
| includeAllVersionHistory    | Boolean                            | Optional. If set to `true`, the source file's version history (major versions and minor versions, if any) should be copied to the destination, within the target version setting limit. If `false`, only the latest major version is copied to the destination. The default value is `false`. |
| name            | String                                         | Optional. The new name for the copy. If this information isn't provided, the same name is used as the original.    |
| parentReference | [itemReference](../resources/itemreference.md) | Optional. Reference to the parent item the copy is created in.                                         |

>[!NOTE]
>The **parentReference** parameter should include the **driveId** and **id** parameters for the target folder.

## Response

The response returns details about how to [monitor the progress](/graph/long-running-actions-overview) of the copy, upon accepting the request. The response indicates whether the copy operation was accepted or rejected; for example, if the destination filename is already in use.

## Examples

### Example 1: Copy a file to a folder

This example shows how to copy a file identified by `{item-id}` into a destination folder identified by its `driveId` and `id` values.
The copied file is given a new name `contoso plan (copy).txt`.


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
Use the URL in the `Location` header to monitor the progress of the asynchronous copy operation.

### Example 2: Copy the child items in a folder

The example copies only the contents of a folder, not the folder itself, to a different destination. The source folder is identified by `{item-id}`, and the destination is identified by its `driveId` and `id` values.

The request sets the `childrenOnly` parameter to true, which is valid only when the source item is a folder.

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

The `Location` field of the response contains a monitoring     URL that you can use to check the progress of the copy operation. Because copy operations happen asynchronously and can finish after an unspecified amount of time, you can use this URL repeatedly to track its status.

To receive a status report similar to the one in the following example, GET the URL in the `Location` field of the response.
```
{
  "@odata.context": "https://contoso.sharepoint.com/sites/site1/_api/v2.1/$metadata#drives('driveId')/operations/$entity",
  "id": "049af13f-d177-4c70-aed0-eb6f04a5d88b",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-01T00:00:00Z",
  "percentageComplete": 100,
  "percentComplete": 100,
  "resourceId": "016OGUCSF6Y2GOVW7725BZO354PWSELRRZ",
  "resourceLocation": "https://contoso.sharepoint.com/sites/site2/_api/v2.0/drives/b!1YwGyNd6RUuVB42eCVw7ULlXybr_-09Br67iDGnYY-neBqwZd6jJRJbgCTx0On5n/items/016OGUCSF6Y2GOVW7725BZO354PWSELRRZ",
  "status": "completed"
}
```

### Example 3: Copy fails due to a name conflict in the destination folder

This example shows a failed attempt to copy a file to a destination folder that already contains a file with the same name. The request does not specify a `@microsoft.graph.conflictBehavior` query parameter to resolve the conflict.

Because no conflict behavior is provided, the API accepts the request but fails during processing. The operation returns a `nameAlreadyExists` error.

To avoid this error, use the [@microsoft.graph.conflictBehavior](#optional-query-parameters), parameter with a value of `replace` or `rename`.

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

### Example 4: Copy a file to a folder containing a file with the same name

This example shows how to copy a file to a folder already containing a file with the same name. The request uses the [@microsoft.graph.conflictBehavior](#optional-query-parameters) query parameter to handle the naming conflict.

The parameter is set to `replace`, which instructs the API to overwrite the existing item in the destination folder.

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

### Example 5: Invalid request when copying child items with folder conflicts using `conflictBehavior=replace`

This example shows a failed request that attempts to copy only the child items of a folder. The request sets the `childrenOnly` parameter to `true` and uses the `@microsoft.graph.conflictBehavior` query parameter with a value of `replace`.

One or more child items in the source folder are folders. Because the `replace` behavior is not supported when a conflicting item is a folder, the copy operation fails. The request is accepted and a monitoring URL is returned, but the operation ultimately reports an error.

To avoid this error, use `rename` or `fail` instead of `replace` when copying child items that include folders.


#### Request
# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/copy-item-conflicts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/copy-item-conflicts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/copy-item-conflicts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/copy-item-conflicts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/copy-item-conflicts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/copy-item-conflicts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/copy-item-conflicts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

Query the monitor URL in the location header to monitor the status of the operation. A failed operation may return a similar response to the following example.

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

### Example 6: Copy an item and preserve version history

This example shows how to copy a file item to a new location and include its version history in the copied item. The `includeAllVersionHistory` parameter is set to `true` in the request body to indicate that version history should be preserved.

If the source file has more versions than the destination site allows, all versions are initially copied and then the [version storage behavior](/sharepoint/document-library-version-history-limits#version-storage-behavior) when versions exceed settings applied is followed.

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

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/_api/v2.0/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717

```
Use the `Location` URL in the response header to monitor the progress of the asynchronous copy operation.

### Example 7: Invalid request when copying the root folder without `childrenOnly`

This example shows a failed request that attempts to copy the root folder by specifying `root` as the `{item-id}`. The request does not include the `childrenOnly` parameter. Because the root folder itself cannot be copied, and `childrenOnly` is not set to true, the request is rejected with an `invalidRequest` error.

To copy the contents of the root folder without copying the folder itself, set the `childrenOnly` parameter to `true`.

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

### Example 8: Invalid request when copying the child items of a file

This example shows a failed request that sets the `childrenOnly` parameter to `true` for a source item that is a file. The `childrenOnly` parameter is valid only for folder items. Because files do not contain child items, the request is rejected with an invalidRequest error.

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

### Example 9: Invalid request when specifying both `childrenOnly` and `name`

This example shows a failed request that sets the `childrenOnly` parameter to `true` to copy only the child items of a folder, while also specifying a new `name` value. These two parameters can't be used together because the folder itself isn't being copied. The request is rejected with an `invalidRequest` error.

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
<!-- { "blockType": "ignored" } -->

The following example shows the response.

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

### Example 10: Successful children-only copy

This example demonstrates how to copy the child items of a folder (without copying the folder itself) into a new destination. The source folder is identified by `{item-id}`, and the destination folder is specified using its `driveId` and `id`. The request sets the `childrenOnly` property to `true`, which is valid only for folder items.


#### Request
<!-- { "blockType": "ignored", "name": "copy-item-10" } -->

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
<!-- { "blockType": "ignored" } -->

Use the Location URL to track the status of the asynchronous copy operation. A successful response might look like this:

```http
HTTP/1.1 202 Accepted
Location: https://contoso.sharepoint.com/sites/FromSite/_api/v2.1/monitor/780293e6-07b3-4544-a126-fea909efcc84
```


```json
{
  "@odata.context": "https://contoso.sharepoint.com/sites/FromSite/_api/v2.1/$metadata#drives('b!eUKtdpCU_kSVaTUFV6NpD-X6ybrlZ_5AgIz5YS9EUgU51UBlz4oFSauS0JyHnBdR')/operations/$entity",
  "id": "780293e6-07b3-4544-a126-fea909efcc84",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "lastActionDateTime": "0001-01-01T00:00:00Z",
  "percentageComplete": 100,
  "percentComplete": 100,
  "resourceId": "01MXEZFVE5G2AS5Y74YZFYQF3KZAQ7CFEP",
  "resourceLocation": "https://contoso.sharepoint.com/sites/ToSite/_api/v2.0/drives/b!JiheeiHiFEymg-TwftZJ-eX6ybrlZ_5AgIz5YS9EUgU51UBlz4oFSauS0JyHnBdR/items/01MXEZFVE5G2AS5Y74YZFYQF3KZAQ7CFEP",
  "status": "completed"
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
