---
title: "Create referenceDefinition"
description: "Create a new referenceDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create referenceDefinition
Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [referenceDefinition](../resources/industrydata-referencedefinition.md) object.

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
POST /external/industryData/referenceDefinitions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [referenceDefinition](../resources/industrydata-referencedefinition.md) object.

You can specify the following properties when creating a **referenceDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|code|String|Code value for the definition. Must be unique within the referenceType. Required.|
|createdDateTime|DateTimeOffset|Time the definition was created. Required.|
|isDisabled|Boolean|Indicates whether the definition has been disabled. Required.|
|lastModifiedDateTime|DateTimeOffset|Time the definition was most recently changed. Required.|
|referenceType|String|The categorical type for a collection enumerated values. Required.|
|sortIndex|Int32|Ordering index to present the definitions within a type consistently in user interfaces. Required.|
|source|String|The standards body or organization source which defined the code. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [referenceDefinition](../resources/industrydata-referencedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_referencedefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/referenceDefinitions
Content-Type: application/json
Content-length: 203

{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "code": "String",
  "isDisabled": "Boolean",
  "referenceType": "String",
  "sortIndex": "Integer",
  "source": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.referenceDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "code": "String",
  "createdDateTime": "String (timestamp)",
  "isDisabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "referenceType": "String",
  "sortIndex": "Integer",
  "source": "String"
}
```

