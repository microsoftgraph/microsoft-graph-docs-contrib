---
title: "Create webApplicationFirewallVerificationModel"
description: "Create a new webApplicationFirewallVerificationModel object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create webApplicationFirewallVerificationModel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new webApplicationFirewallVerificationModel object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskpreventioncontainer-post-webapplicationfirewallverifications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-post-webapplicationfirewallverifications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/riskPrevention/webApplicationFirewallVerifications
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object.

You can specify the following properties when creating a **webApplicationFirewallVerificationModel**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|verifiedHost|String|**TODO: Add Description** Optional.|
|providerType|webApplicationFirewallProviderType|**TODO: Add Description**. The possible values are: `akamai`, `cloudflare`, `unknownFutureValue`. Required.|
|verificationResult|[webApplicationFirewallVerificationResult](../resources/webapplicationfirewallverificationresult.md)|**TODO: Add Description** Optional.|
|verifiedDetails|[webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_webapplicationfirewallverificationmodel_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationModel",
  "verifiedHost": "String",
  "providerType": "String",
  "verificationResult": {
    "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
  },
  "verifiedDetails": {
    "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
  }
}
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
HTTP/1.1 201 Created
Content-Type: application/json

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
```

