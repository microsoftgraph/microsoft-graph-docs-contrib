---
title: "Create teamTemplateDefinition"
description: "Create a new teamTemplateDefinition object."
author: "CharlieKB"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create teamTemplateDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.

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
POST /teamwork/teamTemplates/{teamTemplateId}/definitions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.

You can specify the following properties when creating a **teamTemplateDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|parentTemplateId|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|languageTag|String|**TODO: Add Description** Optional.|
|audience|teamTemplateAudience|**TODO: Add Description**. The possible values are: `organization`, `user`, `public`, `unknownFutureValue`. Optional.|
|description|String|**TODO: Add Description** Optional.|
|shortDescription|String|**TODO: Add Description** Optional.|
|iconUrl|String|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|publisherName|String|**TODO: Add Description** Optional.|
|categories|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_teamtemplatedefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/teamTemplates/{teamTemplateId}/definitions
Content-Type: application/json
Content-length: 332

{
  "@odata.type": "#microsoft.graph.teamTemplateDefinition",
  "parentTemplateId": "String",
  "displayName": "String",
  "languageTag": "String",
  "audience": "String",
  "description": "String",
  "shortDescription": "String",
  "iconUrl": "String",
  "publisherName": "String",
  "categories": [
    "String"
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamTemplateDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamTemplateDefinition",
  "id": "804ea553-41ff-d766-919a-88edb128aa52",
  "parentTemplateId": "String",
  "displayName": "String",
  "languageTag": "String",
  "audience": "String",
  "description": "String",
  "shortDescription": "String",
  "iconUrl": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "publisherName": "String",
  "categories": [
    "String"
  ]
}
```

