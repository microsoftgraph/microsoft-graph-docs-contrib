---
title: "List teamworkDevices"
description: "Get the list of all Teams devices provisioned for the tenant."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# List teamworkDevices
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of all Teams [teamworkDevices](../resources/teamworkdevice.md) provisioned for the tenant.

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
GET /teamwork/devices
```

## Optional query parameters
This method supports the `$filter` (**deviceType**, **hardwareDetail/uniqueId** and **currentUser/id** properties), `$top`, `$select`, `$skipToken` [OData query parameters](/graph/query-parameters) to help customize the response.

### Supported query patterns

| Pattern                | Supported | Syntax                                 | Notes |
| ---------------------- | ------- | -------------------------------------- | ----- |
| Server-side pagination |     ✓     | `@odata.nextLink`                      | Currently we are sending continuation token only in list request. |
| Filter                 |     ✓     | `/devices?$filter=deviceType eq 'TeamsRoom'` | Filter device based on device category |
| Filter                 |     ✓     | `/devices?$filter=hardwareDetail/uniqueId eq 'value'` | Filter device based on assigned uniqueId to device. |
| Filter                 |     ✓     | `/devices?$filter=currentUser/id eq 'value'` |  Filter device based on device logged in user.|
| Page limit                 |     ✓     | `/devices?$top=10` | Get devices with page size 10. Default page limit is 20. Max page limit is 50. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkDevice](../resources/teamworkdevice.md) objects in the response body. The API supports pagination with a default limit of 20 devices per request.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork/devices",
  "@odata.count": 2,
  "@odata.nextLink": "/teamwork/devices?$filter=deviceType+eq+Microsoft.Teams.GraphSvc.teamworkDeviceType%collaborationBar%27&$top=2&$skiptoken=%2bRID%3a~z9snAP1BE88Zlz0AAAAADg%3d%3d%23RT%3a1%23TRC%3a3%23RTD%3auCNd2ZP%2fZ5zLgoPeFGRGBTMxMzIuMTcuMzJVMTY7NTc7MjEvNTozNjEyM1sA%23ISV%3a2%23IEO%3a65551%23QCF%3a4%23FPC%3aAggBAAAAADgAAPcAAAAAOAAAAQAAAAA4AAACADiI9AAAAAA4AAACABCP9QAAAAA4AAAEAFEu4AD2AAAAADgAAAQANoXZkfcAAAAAOAAABAAlgIiK",
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
    },
    {
      "@odata.type": "#microsoft.graph.teamworkDevice",
      "id": "55ab555-e432-0f3c-32e4-3c0f32e43c0f",
      "deviceType": "CollaborationBar",
      "hardwareDetail": {
        "@odata.type": "microsoft.graph.teamworkHardwareDetail"
      },
      "notes": "CollaborationBar device.",
      "companyAssetTag": "Tag2",
      "healthStatus": "Healthy",
      "activityState": "Idle",
      "createdDateTime": "2021-06-10T19:01:04.185Z",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "2021-06-10T19:01:04.185Z",
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

