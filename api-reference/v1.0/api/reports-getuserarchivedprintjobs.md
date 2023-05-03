---
title: "reports: getUserArchivedPrintJobs"
description: Get a list of archived print jobs for a particular user.
author: nilakhan
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: apiPageType
---

# reportRoot: getUserArchivedPrintJobs
Namespace: microsoft.graph

Get a list of archived print jobs for a particular user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Reports.Read.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/getUserArchivedPrintJobs
```

## Function Parameters

In the request URL, provide the following function parameters with values:

| Parameter     | Type                 | Required? | Description                                                          |
|---------------|----------------------|-----------|----------------------------------------------------------------------|
| `userId`      | `Edm.String`         | Yes       | The ID of the user to return data for.                               |
| `startDateTime` | `Edm.DateTimeOffset` | No        | The start date (inclusive) for the time period to include data from.|
| `endDateTime`   | `Edm.DateTimeOffset` | No        | The end date (inclusive) for the time period to include data from.|

>**Note:** If a value is not required, pass the parameter with null value.
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [archivedPrintJob](../resources/archivedprintjob.md) collection in the response body.

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getuserarchivedprintjobs"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/getUserArchivedPrintJobs(userId='{id}',startDateTime=<timestamp>,endDateTime=<timestamp>)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getuserarchivedprintjobs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getuserarchivedprintjobs-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getuserarchivedprintjobs-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportroot-getuserarchivedprintjobs-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.archivedPrintJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "016b5565-3bbf-4067-b9ff-4d68167eb1a6",
      "printerId": "fe6ff85a-f0d3-4c4f-aec6-b9d5154356a1",
      "createdBy": {},
      "processingState": "completed"
    }
  ]
}
```

