---
title: "List onInteractiveAuthFlowStartListeners"
description: "Get a list of the onInteractiveAuthFlowStartListener objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List onInteractiveAuthFlowStartListeners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.onInteractiveAuthFlowStartListener not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_oninteractiveauthflowstartlistener"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.onInteractiveAuthFlowStartListener not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.onInteractiveAuthFlowStartListener)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

