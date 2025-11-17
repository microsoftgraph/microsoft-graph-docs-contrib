---
title: "webApplicationFirewallProvider: verify"
description: "Verify a webApplicationFirewallProvider object."
author: "more-rasika"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# webApplicationFirewallProvider: verify

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate a verification operation for a [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object. This API triggers provider-specific verification logic and returns a [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object describing the verification result.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "webapplicationfirewallprovider-verify-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/webapplicationfirewallprovider-verify-permissions.md)]

[!INCLUDE [rbac-wafprotection-apis-write](../includes/rbac-for-apis/rbac-wafprotection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}/verify
```

## Optional query parameters

This method supports the `$expand` [OData query parameter](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|hostName|String|The domain name or host to be verified by the web application firewall provider. Required.|

## Response

If successful, this method returns a `200 OK` response code and a [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object in the response body.

## Examples

### Example 1: Verify a specific webApplicationFirewallProvider object

The following example shows how to verify a webApplicationFirewallProvider using the hostName only.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "webapplicationfirewallproviderthis.verify"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}/verify
Content-Type: application/json

{
  "hostName": "www.contoso.com"
}
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
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.webApplicationFirewallVerificationModel",
    "id": "00000000-0000-0000-0000-000000000000",
    "verifiedHost": "www.contoso.com",
    "providerType": "cloudflare",
    "verificationResult": {
        "status": "success",
        "verifiedOnDateTime": "2025-10-04T00:50:26.4909654Z",
        "errors": [],
        "warnings": []
    },
    "verifiedDetails": {
        "@odata.type": "#microsoft.graph.cloudFlareVerifiedDetailsModel",
        "zoneId": "11111111111111111111111111111111",
        "dnsConfiguration": {
            "name": "www.contoso.com",
            "isProxied": true,
            "recordType": "cname",
            "value": "contoso.azurefd.net",
            "isDomainVerified": true
        },
        "enabledRecommendedRulesets": [
            {
                "rulesetId": "22222222222222222222222222222222",
                "name": "CloudFlare Managed Ruleset",
                "phaseName": "http_request_firewall_managed"
            }
        ],
        "enabledCustomRules": [
            {
                "ruleId": "33333333333333333333333333333333",
                "name": "Block SQL Injection",
                "action": "block"
            },
            {
                "ruleId": "44444444444444444444444444444444",
                "name": "Block XSS",
                "action": "block"
            }
        ]
    }
}
```

### Example 2: Verify a specific webApplicationFirewallProviders object along with the details of their associated provider.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "verify_webapplicationfirewallprovider"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}/verify?$expand=provider
Content-Type: application/json

{
    "hostName": "www.contoso.com"
}
#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationFirewallVerificationModel"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.webApplicationFirewallVerificationModel",
    "id": "00000000-0000-0000-0000-000000000000",
    "verifiedHost": "www.contoso.com",
    "providerType": "cloudflare",
    "verificationResult": {
        "status": "success",
        "verifiedOnDateTime": "2025-10-04T00:50:26.4909654Z",
        "errors": [],
        "warnings": []
    },
    "verifiedDetails": {
        "@odata.type": "#microsoft.graph.cloudFlareVerifiedDetailsModel",
        "zoneId": "11111111111111111111111111111111",
        "dnsConfiguration": {
            "name": "www.contoso.com",
            "isProxied": true,
            "recordType": "cname",
            "value": "contoso.azurefd.net",
            "isDomainVerified": true
        },
        "enabledRecommendedRulesets": [
            {
                "rulesetId": "22222222222222222222222222222222",
                "name": "CloudFlare Managed Ruleset",
                "phaseName": "http_request_firewall_managed"
            }
        ],
        "enabledCustomRules": [
            {
                "ruleId": "33333333333333333333333333333333",
                "name": "Block SQL Injection",
                "action": "block"
            },
            {
                "ruleId": "44444444444444444444444444444444",
                "name": "Block XSS",
                "action": "block"
            }
        ]
    },
    "provider": {
        "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
        "id": "55555555-5555-5555-5555-555555555555",
        "displayName": "CloudFlare Provider Example",
        "zoneId": "11111111111111111111111111111111"
    }
}
```