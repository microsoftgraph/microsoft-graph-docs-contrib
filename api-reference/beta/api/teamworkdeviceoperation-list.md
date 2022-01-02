---
title: "List teamworkDeviceOperations"
description: "Get a list of teamworkDeviceOperations linked to a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamworkDeviceOperations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamworkDeviceOperations](../resources/teamworkdeviceoperation.md) linked to a device.

>**Note:** API requirements under the `/beta` version are subject to change. Licensing or payment requirements may apply for this API when made available for production use.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/devices/{teamworkDeviceId}/operations
```

## Optional query parameters
This method supports the `$top`, `$select`, and `$skipToken` [OData query parameters](/graph/query-parameters) to help customize the response.

### Supported query patterns

| Pattern                | Supported | Syntax                                 | Notes |
| ---------------------- | ------- | -------------------------------------- | ----- |
| Server-side pagination |     ✓     | `@odata.nextLink`                      | Currently, we send the continuation token only in requests that return a list of [teamworkDeviceOperations](../resources/teamworkdeviceoperation.md). |
| Page limit                 |     ✓     | `/devices({deviceId})/operations?$top=10` | Get operations for a device with a page size of 10. Default page limit is 20. Max page limit is 50. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) objects in the response body.
The API supports pagination with a default limit of 20 operations per request.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamworkdeviceoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/{teamworkDeviceId}/operations
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkDeviceOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkDeviceOperation",
      "id": "eab261f8-61f8-eab2-f861-b2eaf861b2ea",
      "status": "successful",
      "operationType": "deviceDiagnostics",
      "error": {
        "code": null,
        "message": "Unknown"
      },
      "startedDateTime": "2021-06-19T12-01-03.45Z",
      "completedDateTime": "2021-06-19T12-01-03.45Z",
      "createdDateTime": "2021-06-19T12-01-03.45Z",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastActionDateTime": "2021-06-19T12-01-03.45Z",
      "lastActionBy": {
        "@odata.type": "microsoft.graph.identitySet"
      }
    }
  ]
}
```

