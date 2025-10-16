---
title: "Get webApplicationFirewallVerificationModel"
description: "Read the properties and relationships of webApplicationFirewallVerificationModel object."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get webApplicationFirewallVerificationModel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationfirewallverificationmodel-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationfirewallverificationmodel-get-permissions.md)]

[!INCLUDE [rbac-fraudprovider-apis-read](../includes/rbac-for-apis/rbac-fraudprovider-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}
```

## Optional query parameters

This method supports the `$expand` [OData query parameter](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object in the response body.

## Examples

### Example 1: Retrieve a specific webApplicationFirewallVerifications object.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_webapplicationfirewallverificationmodel"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}
```


#### Response

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
  "value": {
    "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationModel",
    "id": "415614ba-471d-daa2-daef-7f89ec73d34c",
    "verifiedHost": "www.contoso.com",
    "providerType": "cloudflare",
    "verificationResult": {
      "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
    },
    "verifiedDetails": {
      "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
    }
  }
}
```

### Example 2: Retrieve a specific webApplicationFirewallVerifications object along with the details of their associated provider

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_webapplicationfirewallverificationmodel"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}?$expand=provider
```


#### Response

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
  "value": {
    "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationModel",
    "id": "415614ba-471d-daa2-daef-7f89ec73d34c",
    "verifiedHost": "www.contoso.com",
    "providerType": "cloudflare",
    "verificationResult": {
      "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
    },
    "verifiedDetails": {
      "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
    },
    "provider@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/webApplicationFirewallVerifications('00000000-0000-0000-0000-000000000000')/webApplicationFirewallProviders",
      "provider": {
          "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
          "id": "55555555-5555-5555-5555-555555555555",
          "displayName": "CloudFlare Provider Example",
          "zoneId": "11111111111111111111111111111111"
      }
  }
}
```

