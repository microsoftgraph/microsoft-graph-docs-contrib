---
title: "Get selfServiceSettings"
description: "Read the properties and relationships of a cloudPcSelfServiceSettings object."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: apiPageType
---

# Get selfServiceSettings

Namespace: microsoft.graph

Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All, CloudPC.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/selfServiceSettings
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_cloudpcselfservicesettings"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/selfServiceSettings
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSelfServiceSettings"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
    "id": "7a585ddc-143d-4fcc-94bc-50438c51ffff",
    "enabled": true,
    "assignments": [
      {
        "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
        "groupId":"1e4f451f-48a2-4ef4-9e43-d471a86fffff"
      },
      {
        "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
        "groupId":"2eac0d4a-8147-4428-9902-71bb11e8ffff"
      },
      {
        "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
        "groupId":"5f4ddccc-bd47-4066-a49d-577573b5ffff"
      }
    ]
  }
}
```
