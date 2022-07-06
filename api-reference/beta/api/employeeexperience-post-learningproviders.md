---
title: "Create learningProvider"
description: "Create a new learningProvider object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create learningProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [learningProvider](../resources/learningprovider.md) object.

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
POST /employeeExperience/learningProviders
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [learningProvider](../resources/learningprovider.md) object.

You can specify the following properties when creating a **learningProvider**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|
|isEnabled|Boolean|**TODO: Add Description** Optional.|
|loginWebUrl|String|**TODO: Add Description** Optional.|
|longLogoWebUrlForDarkTheme|String|**TODO: Add Description** Required.|
|longLogoWebUrlForLightTheme|String|**TODO: Add Description** Required.|
|squareLogoWebUrlForDarkTheme|String|**TODO: Add Description** Required.|
|squareLogoWebUrlForLightTheme|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [learningProvider](../resources/learningprovider.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_learningprovider_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/learningProviders
Content-Type: application/json
Content-length: 326

{
  "@odata.type": "#microsoft.vivaLearning.learningProvider",
  "displayName": "String",
  "isEnabled": "Boolean",
  "loginWebUrl": "String",
  "longLogoWebUrlForDarkTheme": "String",
  "longLogoWebUrlForLightTheme": "String",
  "squareLogoWebUrlForDarkTheme": "String",
  "squareLogoWebUrlForLightTheme": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.vivaLearning.learningProvider"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.vivaLearning.learningProvider",
  "displayName": "String",
  "isEnabled": "Boolean",
  "loginWebUrl": "String",
  "longLogoWebUrlForDarkTheme": "String",
  "longLogoWebUrlForLightTheme": "String",
  "squareLogoWebUrlForDarkTheme": "String",
  "squareLogoWebUrlForLightTheme": "String"
}
```

