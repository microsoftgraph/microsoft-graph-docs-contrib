---
title: "Get teamworkDeviceOperation"
description: "Get the details of async teamworkDeviceOperation."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Get teamworkDeviceOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of an async long-running device [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md).

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
GET /teamwork/devices/{teamworkDeviceId}/operations/{teamworkDeviceOperationId}
```

## Optional query parameters
This method does not support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamworkdeviceoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/0f3ce432-e432-0f3c-32e4-3c0f32e43c0f/operations/eab261f8-61f8-eab2-f861-b2eaf861b2ea
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamworkDeviceOperation",
    "id": "eab261f8-61f8-eab2-f861-b2eaf861b2ea",
    "status": "successful",
    "operationType": "deviceRestart",
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
}
```

