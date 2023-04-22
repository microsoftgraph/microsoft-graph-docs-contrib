---
title: "List teamworkDeviceOperations"
description: "Get a list of operations that are linked to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamworkDeviceOperations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [operations](../resources/teamworkdeviceoperation.md) that are running on a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

[!INCLUDE [teamworkdevice-api-disclaimer](../../includes/teamworkdevice-api-disclaimer.md)]

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

| Pattern                | Syntax                                 | Notes |
| ---------------------- | -------------------------------------- | ----- |
| Server-side pagination | `@odata.nextLink`                      | You will get a continuation token in the response, when a result set spans multiple pages. |
| Page limit                 | `/devices({deviceId})/operations?$top=10` | Get operations for a device with a page size of 10. Default page limit is 20. Max page limit is 50. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworkdeviceoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f/operations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworkdeviceoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworkdeviceoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworkdeviceoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworkdeviceoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworkdeviceoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-teamworkdeviceoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceOperation",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork/devices('18129e1f')/operations",
  "@odata.count": 1,
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
      "lastActionDateTime": "2021-06-19T12-01-03.45Z",
      "createdBy": {
        "application": null,
        "device": null,
        "user": {
          "id": "2a610f6f-adf6-4205",
          "displayName": "Evan Lewis",
          "userIdentityType": "aadUser"
        }
      },
      "lastActionBy": {
        "application": null,
        "device": null,
        "user": {
          "id": "2a610f6f-adf6-4205",
          "displayName": "Evan Lewis",
          "userIdentityType": "aadUser"
        }
      }
    }
  ]
}
```

