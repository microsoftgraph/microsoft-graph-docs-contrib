---
title: "List webApplicationFirewallVerificationModel objects"
description: "Get a list of the webApplicationFirewallVerificationModel objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List webApplicationFirewallVerificationModel objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the webApplicationFirewallVerificationModel objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskpreventioncontainer-list-webapplicationfirewallverifications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-list-webapplicationfirewallverifications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/riskPrevention/webApplicationFirewallVerifications
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

If successful, this method returns a `200 OK` response code and a collection of [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_webapplicationfirewallverificationmodel"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationFirewallVerificationModel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationModel",
      "id": "415614ba-471d-daa2-daef-7f89ec73d34c",
      "verifiedHost": "String",
      "providerType": "String",
      "verificationResult": {
        "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
      },
      "verifiedDetails": {
        "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
      }
    }
  ]
}
```

