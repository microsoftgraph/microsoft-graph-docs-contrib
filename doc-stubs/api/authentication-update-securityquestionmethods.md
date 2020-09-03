---
title: "Update securityQuestionMethods"
description: "Update the properties of a securityQuestionMethods object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update securityQuestionMethods
Namespace: microsoft.graph

Update the properties of a securityQuestionMethods object.

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
PATCH /user/authentication/securityQuestionMethods
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.

The following table shows the properties that are required when you create the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_securityquestionmethods"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/authentication/securityQuestionMethods
Content-Type: application/json
Content-length: 78

{
  "@odata.type": "#microsoft.graph.securityQuestionAuthenticationMethod"
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
  "@odata.type": "#microsoft.graph.securityQuestionAuthenticationMethod",
  "id": "25221d67-1d67-2522-671d-2225671d2225"
}
```

