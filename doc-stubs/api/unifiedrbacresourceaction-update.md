---
title: "Update unifiedRbacResourceAction"
description: "Update the properties of an unifiedRbacResourceAction object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update unifiedRbacResourceAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.

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
PATCH /unifiedRbacResourceNamespace/resourceActions/{unifiedRbacResourceActionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.

The following table shows the properties that are required when you update the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|actionVerb|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|isEnabledForCustomRole|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|resourceScopeId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_unifiedrbacresourceaction"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/unifiedRbacResourceNamespace/resourceActions/{unifiedRbacResourceActionId}
Content-Type: application/json
Content-length: 215

{
  "@odata.type": "#microsoft.graph.unifiedRbacResourceAction",
  "actionVerb": "String",
  "description": "String",
  "isEnabledForCustomRole": "Boolean",
  "name": "String",
  "resourceScopeId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRbacResourceAction",
  "id": "3dfb6559-6559-3dfb-5965-fb3d5965fb3d",
  "actionVerb": "String",
  "description": "String",
  "isEnabledForCustomRole": "Boolean",
  "name": "String",
  "resourceScopeId": "String"
}
```

