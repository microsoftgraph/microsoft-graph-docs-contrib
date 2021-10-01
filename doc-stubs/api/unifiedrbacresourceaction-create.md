---
title: "Create unifiedRbacResourceAction"
description: "Create a new unifiedRbacResourceAction object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create unifiedRbacResourceAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.

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
POST /roleManagement/cloudPC/resourceNamespaces/{unifiedRbacResourceNamespaceId}/resourceActions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object.

The following table shows the properties that are required when you create the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|actionVerb|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|isEnabledForCustomRole|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|resourceScopeId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_unifiedrbacresourceaction_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/cloudPC/resourceNamespaces/{unifiedRbacResourceNamespaceId}/resourceActions
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
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRbacResourceAction"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRbacResourceAction",
  "id": "b76723e9-23e9-b767-e923-67b7e92367b7",
  "actionVerb": "String",
  "description": "String",
  "isEnabledForCustomRole": "Boolean",
  "name": "String",
  "resourceScopeId": "String"
}
```

