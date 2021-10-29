---
title: "Get teamworkDeviceHealth"
description: "Read the properties and relationships of a teamworkDeviceHealth object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get teamworkDeviceHealth
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/devices/{teamworkDeviceId}/health
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

If successful, this method returns a `200 OK` response code and a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamworkdevicehealth"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/{teamworkDeviceId}/health
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceHealth"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamworkDeviceHealth",
    "id": "d8214fe3-4fe3-d821-e34f-21d8e34f21d8",
    "connection": {
      "@odata.type": "microsoft.graph.teamworkConnection"
    },
    "loginStatus": {
      "@odata.type": "microsoft.graph.teamworkLoginStatus"
    },
    "peripheralsHealth": {
      "@odata.type": "microsoft.graph.teamworkPeripheralsHealth"
    },
    "softwareUpdateHealth": {
      "@odata.type": "microsoft.graph.teamworkSoftwareUpdateHealth"
    },
    "hardwareHealth": {
      "@odata.type": "microsoft.graph.teamworkHardwareHealth"
    },
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```

