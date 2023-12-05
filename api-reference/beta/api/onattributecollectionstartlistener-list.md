---
title: "List onAttributeCollectionStartListeners"
description: "Get a list of the onAttributeCollectionStartListener objects and their properties."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List onAttributeCollectionStartListeners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onattributecollectionstartlistener-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onattributecollectionstartlistener-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.onAttributeCollectionStartListener not found
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

If successful, this method returns a `200 OK` response code and a collection of [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_onattributecollectionstartlistener"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.onAttributeCollectionStartListener not found
```


### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.onAttributeCollectionStartListener)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",
      "id": "0e74e7b5-5288-2911-b17e-5f0ea487ee2b",
      "priority": "Integer",
      "conditions": {
        "@odata.type": "microsoft.graph.authenticationConditions"
      },
      "authenticationEventsFlowId": "String",
      "handler": {
        "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
      }
    }
  ]
}
```

