---
title: "List teamworkDevices"
description: "Get a list of the teamworkDevice objects and their properties."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamworkDevices
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamworkDevice](../resources/teamworkdevice.md) objects and their properties.

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
GET /teamwork/devices
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkDevice](../resources/teamworkdevice.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamworkdevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkDevice)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkDevice",
      "id": "0f3ce432-e432-0f3c-32e4-3c0f32e43c0f",
      "deviceType": "CollaborationBar",
      "hardwareDetail": {
        "@odata.type": "microsoft.graph.teamworkHardwareDetail"
      },
      "notes": "CollaborationBar device.",
      "companyAssetTag": "Tag1",
      "healthStatus": "Healthy",
      "activityState": "Idle",
      "createdDateTime": "2021-06-19T19:01:04.185Z",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "2021-06-19T19:01:04.185Z",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "currentUser": {
        "@odata.type": "microsoft.graph.teamworkUserIdentity"
      }
    }
  ]
}
```

