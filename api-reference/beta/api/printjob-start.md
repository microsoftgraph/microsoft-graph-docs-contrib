---
title: "printJob: start"
description: Submits the print job to the associated printer or printerShare. It will be printed once any existing pending jobs are completed, aborted or canceled.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
ms.topic: reference
---

# printJob: start

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Submits the print job to the associated [printer](../resources/printer.md) or [printerShare](../resources/printershare.md). It will be printed after any existing pending **jobs** are completed, aborted, or canceled.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "printjob_start" } -->
[!INCLUDE [permissions-table](../includes/permissions/printjob-start-permissions.md)]

## HTTP request
```http
POST /print/shares/{id}/jobs/{id}/start
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not submit a request body for this method. 

## Response
If successful, this method returns a `200 OK` response code and a [printJobStatus](../resources/printjobstatus.md) object in the body.

## Example
The following example shows how to call this API.
##### Request

```http
POST https://graph.microsoft.com/beta/print/shares/{id}/jobs/{id}/start
```

##### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK

{
    "state": "processing",
    "description": "The print job is currently being processed.",
    "isAcquiredByPrinter": false,
    "details": ["interpreting"]
}
```


