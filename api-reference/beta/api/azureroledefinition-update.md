---
title: "Update azureRoleDefinition"
description: "Update the properties of an azureRoleDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update azureRoleDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [azureRoleDefinition](../resources/azureroledefinition.md) object.

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
PATCH /azureRoleDefinition
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Required.|
|azureRoleDefinitionType|azureRoleDefinitionType|**TODO: Add Description**. The possible values are: `system`, `custom`, `unknownFutureValue`. Required.|
|assignableScopes|String collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [azureRoleDefinition](../resources/azureroledefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_azureroledefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/azureRoleDefinition
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.azureRoleDefinition",
  "externalId": "String",
  "displayName": "String",
  "azureRoleDefinitionType": "String",
  "assignableScopes": [
    "String"
  ]
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.azureRoleDefinition",
  "id": "d1d3491b-c487-5aaf-e470-c0b73b9a2fe9",
  "externalId": "String",
  "displayName": "String",
  "azureRoleDefinitionType": "String",
  "assignableScopes": [
    "String"
  ]
}
```

