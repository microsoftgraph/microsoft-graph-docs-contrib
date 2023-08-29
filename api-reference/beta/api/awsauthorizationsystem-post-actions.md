---
title: "Create awsAuthorizationSystemTypeAction"
description: "Create a new awsAuthorizationSystemTypeAction object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create awsAuthorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.

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
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.

You can specify the following properties when creating an **awsAuthorizationSystemTypeAction**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). Required.|
|resourceTypes|String collection|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). Optional.|
|severity|authorizationSystemActionSeverity|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `normal`, `high`, `unknownFutureValue`. Required.|
|actionType|authorizationSystemActionType|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `delete`, `read`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_awsauthorizationsystemtypeaction_from_"
}
-->
``` http

```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsAuthorizationSystemTypeAction"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.awsAuthorizationSystemTypeAction",
  "id": "5e9953de-90ac-13f7-5799-adb97065ca0a",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

