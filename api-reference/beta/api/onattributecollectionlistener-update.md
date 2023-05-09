---
title: "Update onAttributeCollectionListener"
description: "Update the properties of an onAttributeCollectionListener object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update onAttributeCollectionListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) object.

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
PATCH /onAttributeCollectionListener
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
|handler|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) object in the response body.

## Example: List attributes associated with a multi-event policy (user flow)

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_onattributecollectionlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onAttributeCollectionListener
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
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
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "id": "3ca337e8-ae91-d58f-bb64-f98078e08335",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  }
}
```

## Example: Add attribute associated with a multi-event policy (user flow)

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_onattributecollectionlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onAttributeCollectionListener
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
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
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "id": "3ca337e8-ae91-d58f-bb64-f98078e08335",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  }
}
```

## Example: Remove attribute associated with a multi-event policy (user flow)

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_onattributecollectionlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onAttributeCollectionListener
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
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
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "id": "3ca337e8-ae91-d58f-bb64-f98078e08335",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  }
}
```
