---
title: "printJob: release"
description: "Release a printJob held in the cloud for secure release to print it at the target printer."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# printJob: release

Namespace: microsoft.graph

Release a [printJob](../resources/printjob.md) held in the cloud for secure release to print it at the target printer.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "printjob_release"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/printjob-release-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/printers/{printerId}/jobs/release
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|jobId|String|The identifier of the print job to release. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [printJob](../resources/printjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "printjobthis.release"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/printers/d5f2a1b0-1111-2222-3333-444455556666/jobs/release
Content-Type: application/json

{
  "jobId": "146"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "printjobthis.release",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.printJob",
  "id": "146",
  "releasedDateTime": "2026-08-03T18:05:00Z",
  "status": {
    "state": "processing",
    "description": "The job was released and is printing"
  }
}
```
