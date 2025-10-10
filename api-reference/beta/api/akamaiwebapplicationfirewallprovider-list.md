---
title: "List akamaiWebApplicationFirewallProvider objects"
description: "Get a list of the akamaiWebApplicationFirewallProvider objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List akamaiWebApplicationFirewallProvider objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the akamaiWebApplicationFirewallProvider objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "akamaiwebapplicationfirewallprovider-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/akamaiwebapplicationfirewallprovider-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.akamaiWebApplicationFirewallProvider not found
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_akamaiwebapplicationfirewallprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.akamaiWebApplicationFirewallProvider not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.akamaiWebApplicationFirewallProvider"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
      "id": "825b9658-a044-f2de-d1bf-6ae9f9f14b86",
      "displayName": "String",
      "hostPrefix": "String",
      "clientSecret": "String",
      "clientToken": "String",
      "accessToken": "String"
    }
  ]
}
```

