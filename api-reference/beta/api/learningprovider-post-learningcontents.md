---
title: "Create learningContent"
description: "Create a new learningContent object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create learningContent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [learningContent](../resources/learningcontent.md) object.

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
POST /employeeExperience/learningProviders/{learningProviderId}/learningContents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [learningContent](../resources/learningcontent.md) object.

You can specify the following properties when creating a **learningContent**.

|Property|Type|Description|
|:---|:---|:---|
|additionalTags|String collection|**TODO: Add Description** Optional.|
|contentWebUrl|String|**TODO: Add Description** Required.|
|contributor|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|duration|Duration|**TODO: Add Description** Optional.|
|externalId|String|**TODO: Add Description** Required.|
|format|String|**TODO: Add Description** Optional.|
|isActive|Boolean|**TODO: Add Description** Optional.|
|isPremium|Boolean|**TODO: Add Description** Optional.|
|isSearchable|Boolean|**TODO: Add Description** Optional.|
|languageTag|String|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|numberOfPages|Int32|**TODO: Add Description** Optional.|
|skillTags|String collection|**TODO: Add Description** Optional.|
|sourceName|String|**TODO: Add Description** Optional.|
|thumbnailWebUrl|String|**TODO: Add Description** Optional.|
|title|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [learningContent](../resources/learningcontent.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_learningcontent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/learningProviders/{learningProviderId}/learningContents
Content-Type: application/json
Content-length: 540

{
  "@odata.type": "#microsoft.vivaLearning.learningContent",
  "additionalTags": [
    "String"
  ],
  "contentWebUrl": "String",
  "contributor": "String",
  "description": "String",
  "duration": "String (duration)",
  "externalId": "String",
  "format": "String",
  "isActive": "Boolean",
  "isPremium": "Boolean",
  "isSearchable": "Boolean",
  "languageTag": "String",
  "numberOfPages": "Integer",
  "skillTags": [
    "String"
  ],
  "sourceName": "String",
  "thumbnailWebUrl": "String",
  "title": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.vivaLearning.learningContent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.vivaLearning.learningContent",
  "additionalTags": [
    "String"
  ],
  "contentWebUrl": "String",
  "contributor": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "duration": "String (duration)",
  "externalId": "String",
  "format": "String",
  "isActive": "Boolean",
  "isPremium": "Boolean",
  "isSearchable": "Boolean",
  "languageTag": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "numberOfPages": "Integer",
  "skillTags": [
    "String"
  ],
  "sourceName": "String",
  "thumbnailWebUrl": "String",
  "title": "String"
}
```

