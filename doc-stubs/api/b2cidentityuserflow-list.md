---
title: "List b2cIdentityUserFlow"
description: "Get a list of the b2cIdentityUserFlow objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List b2cIdentityUserFlow
Namespace: microsoft.graph

Get a list of the [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) objects and their properties.

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
GET /identity/b2cUserFlows
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

If successful, this method returns a `200 OK` response code and a collection of [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_b2cidentityuserflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/b2cUserFlows
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.b2cIdentityUserFlow)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.b2cIdentityUserFlow",
      "id": "7ccf717f-717f-7ccf-7f71-cf7c7f71cf7c",
      "userFlowType": "String",
      "userFlowTypeVersion": "Single"
    }
  ]
}
```

