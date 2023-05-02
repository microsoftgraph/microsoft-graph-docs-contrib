---
title: "Update onInteractiveAuthFlowStartListener"
description: "Update the properties of an onInteractiveAuthFlowStartListener object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update onInteractiveAuthFlowStartListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) object.

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
PATCH /onInteractiveAuthFlowStartListener
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
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Required.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|authenticationEventsFlowId|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|handler|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_oninteractiveauthflowstartlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onInteractiveAuthFlowStartListener
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartListener",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  }
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
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartListener",
  "id": "2448165c-22df-7103-dcb2-25ce85921848",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  }
}
```

