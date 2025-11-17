---
title: "List webApplicationFirewallVerificationModel objects"
description: "Get a list of the webApplicationFirewallVerificationModel objects and their properties."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List webApplicationFirewallVerificationModel objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskpreventioncontainer-list-webapplicationfirewallverifications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-list-webapplicationfirewallverifications-permissions.md)]

[!INCLUDE [rbac-wafprotection-apis-read](../includes/rbac-for-apis/rbac-wafprotection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/riskPrevention/webApplicationFirewallVerifications
```

## Optional query parameters

This method supports some of the OData query parameters, including `$expand` to include related resources. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) objects in the response body.

## Examples

### Example 1: Retrieve all webApplicationFirewallVerifications.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_webapplicationfirewallverificationmodel"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/webApplicationFirewallVerifications(provider())",
    "value": [
        {
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
        }
    ]
}
```

### Example 2: Retrieve all webApplicationFirewallVerifications along with the details of their associated provider.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_webapplicationfirewallverificationmodel_providers"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/riskPrevention/webApplicationFirewallVerifications?$expand=provider
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/webApplicationFirewallVerifications(provider())",
    "value": [
        {
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
            "provider@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/riskPrevention/webApplicationFirewallVerifications('00000000-0000-0000-0000-000000000000')/webApplicationFirewallProviders",
            "provider": {
                "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
                "id": "55555555-5555-5555-5555-555555555555",
                "displayName": "CloudFlare Provider Example",
                "zoneId": "11111111111111111111111111111111"
            }
        }
    ]
}
```