---
title: "Working with long-running actions"
description: "Learn how to work with long-running actions when you use Microsoft Graph APIs."
ms.localizationpriority: medium
author: "daspek"
ms.date: 11/07/2024
---

# Working with long-running actions

This article describes how to work with long-running actions when you use Microsoft Graph APIs. Some API responses require an indeterminate amount of time to complete. Instead of waiting until the action is complete before returning a response, Microsoft Graph might use a long-running actions pattern. This pattern provides your app a way to poll for status updates on a long-running action, without any request waiting for the action to complete.

The general pattern involves the following steps:

1. Your app requests a long-running action via the API. The API accepts the action and returns a `202 Accepted` response along with a `Location` header for the API URL to retrieve action status reports.
1. Your app requests the action status report URL and receives an [asyncJobStatus](/graph/api/resources/asyncjobstatus) response with the progress of the long-running action.
1. The long-running action completes. 
1. Your app requests the action status report URL again and receives an [asyncJobStatus](/graph/api/resources/asyncjobstatus) response that shows the completion of the action.

## Prerequisites

The same [permissions](./permissions-reference.md) that are required to perform a long-running action are also required to query the status of a long-running action.

## Initial action request

The following example uses the [driveitem: copy](/graph/api/driveitem-copy) method.
In this scenario, your app makes a request to copy a folder that contains a large amount of data.
This request is likely to take several seconds to complete because the amount of data is large.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "lro-copy-item-example", "scopes": "files.readwrite" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{folder-item-id}/copy
Content-Type: application/json

{
  "parentReference": {
    "path": "/drive/root:/Documents"
  },
  "name": "Copy of LargeFolder1"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/lro-copy-item-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/lro-copy-item-example-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/lro-copy-item-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/lro-copy-item-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/lro-copy-item-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/lro-copy-item-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/lro-copy-item-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/lro-copy-item-example-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The API responds that the action was accepted and provides the URL to retrieve the status of the long-running action.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 202 Accepted
Location: https://api.onedrive.com/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

>**Note:** The location URL returned might not be on the Microsoft Graph API endpoint.

In many cases, this step is the end of the request, because the copy action completes without any other work from the app.
However, if your app needs to show the status of the copy action or ensure that it completes without error, it can do so by using the monitor URL.

## Retrieve a status report from the monitor URL

To check on the status of the copy action, the app makes a request to the URL provided in the previous response.
> **Note:** This request doesn't require authentication, because the URL is short-lived and unique to the original caller. 

<!-- { "blockType": "request", "opaqueUrl": true, "name": "lro-check-status", "scopes": "files.readwrite" } -->

```http
GET https://api.onedrive.com/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

The service responds with information that the long-running action is still in progress.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.asyncJobStatus" } -->

```http
HTTP/1.1 202 Accepted
Content-type: application/json

{
  "operation": "ItemCopy",
  "percentageComplete": 27.8,
  "status": "inProgress"
}
```

This information can be used to provide an update to the user about the progress of the copy action.
The app can continue to poll the monitor URL to request status updates and keep track of the progress of the action.

## Retrieve a completed status report from the monitor URL

After a few seconds, the copy operation completes.
This time, when the app makes a request to the monitor URL, the response is a redirection to the finished result of the action.

<!-- { "blockType": "request", "opaqueUrl": true, "name": "lro-check-status-complete", "scopes": "files.readwrite" } -->

```http
GET https://api.onedrive.com/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```

When the action completes, the response from the monitor service returns the resource ID for the results.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.asyncJobStatus" } -->

```http
HTTP/1.1 202 Accepted
Content-type: application/json

{
    "percentageComplete": 100.0,
    "resourceId": "01MOWKYVJML57KN2ANMBA3JZJS2MBGC7KM",
    "status": "completed"
}
```

## Retrieve the results of the completed operation

When the job is completed, the monitor URL returns the resource ID of the result. In this case, it's the new copy of the original item.
The following example shows how you can address this new item by using the resource ID.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lro-copy-item-example-complete",
  "scopes": "files.readwrite"
} -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/drive/items/{item-id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/lro-copy-item-example-complete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/lro-copy-item-example-complete-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/lro-copy-item-example-complete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/lro-copy-item-example-complete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/lro-copy-item-example-complete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/lro-copy-item-example-complete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/lro-copy-item-example-complete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/lro-copy-item-example-complete-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "",
    "name": "Copy of LargeFolder1",
    "folder": { },
    "size": 12019
}
```

## Supported resources

Long-running actions are supported on the following methods.

| **Resource** | **API** |
|:------ | :------ |
| driveItem | [copy](/graph/api/driveitem-copy) |


<!-- {
  "type": "#page.annotation",
  "description": "Monitor the progress of long-running actions in the API.",
  "keywords": "monitor,long,running,operation,action",
  "section": "documentation",
  "suppressions": [
    "Error: lro-check-status:
      Unable to locate a definition for resource type: microsoft.graph.asyncJobStatus",
    "Error: lro-check-status-complete:
      Unable to locate a definition for resource type: microsoft.graph.asyncJobStatus"
  ],
  "tocPath": "Concepts/Long running actions"
} -->
