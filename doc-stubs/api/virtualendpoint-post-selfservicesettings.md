---
title: "Create selfServiceSettings"
description: "Create a new cloudPcSelfServiceSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create selfServiceSettings
Namespace: microsoft.graph

Create a new cloudPcSelfServiceSettings object.

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
POST ** Collection URI for microsoft.graph.cloudPcSelfServiceSettings not found
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

If successful, this method returns a `201 Created` response code and a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_cloudpcselfservicesettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.cloudPcSelfServiceSettings not found
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
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSelfServiceSettings"
}
-->
``` http
HTTP/1.1 201 Created

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

