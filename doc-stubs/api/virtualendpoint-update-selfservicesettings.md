---
title: "Update selfServiceSettings"
description: "Update the properties of a selfServiceSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update selfServiceSettings
Namespace: microsoft.graph

Update the properties of a selfServiceSettings object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /deviceManagement/virtualEndpoint/selfServiceSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.

The following table shows the properties that are required when you create the [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|enabled|Boolean|**TODO: Add Description**|
|groups|String collection|**TODO: Add Description**|
|assignments|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_selfservicesettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/selfServiceSettings
Content-Type: application/json
Content-length: 247

{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "enabled": "Boolean",
  "groups": [
    "String"
  ],
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
    }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "id": "7bec3f1d-3f1d-7bec-1d3f-ec7b1d3fec7b",
  "enabled": "Boolean",
  "groups": [
    "String"
  ],
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
    }
  ]
}
```

