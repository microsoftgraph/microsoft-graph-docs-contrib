---
title: "Update teamTemplateDefinition"
description: "Update the properties of a teamTemplateDefinition object."
author: "CharlieKB"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update teamTemplateDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.

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
PATCH /teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


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

If successful, this method returns a `200 OK` response code and an updated [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_teamtemplatedefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

