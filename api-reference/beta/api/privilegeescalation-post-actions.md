---
title: "Add authorizationSystemTypeAction"
description: "Add actions by posting to the actions collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add authorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add actions by posting to the actions collection.

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
POST /privilegeEscalation/actions/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.

You can specify the following properties when creating an **authorizationSystemTypeAction**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Required.|
|resourceTypes|String collection|**TODO: Add Description** Optional.|
|severity|authorizationSystemActionSeverity|**TODO: Add Description**. The possible values are: `normal`, `high`, `unknownFutureValue`. Required.|
|actionType|authorizationSystemActionType|**TODO: Add Description**. The possible values are: `delete`, `read`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `204 No Content` response code and an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_authorizationsystemtypeaction_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/privilegeEscalation/actions/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeAction",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authorizationSystemTypeAction"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeAction",
  "id": "a1af7494-6080-0eaa-e190-fdc1e2e3a9ef",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

