---
title: "Get policyRule"
description: "Retrieve information about a specific forwarding rule."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get policyRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve information about a specific forwarding rule.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET networkAccess/forwardingRule
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-forwardingrule.md) object in the response body.  The **@odata.type** property identifies whether the policyRule is a [microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) or a [microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md) type.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_policyrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/forwardingPolicies/{forwardingPolicyId}/policyRules/{RuleId)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-policyrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-policyrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-policyrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-policyrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-policyrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-policyrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policyRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
            "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
            "id": "d42ec55a-d7de-4624-835e-0c5d2eb47cb9",
            "name": "M365 Exchange Fqdn rule 1",
            "ruleType": "fqdn",
            "action": "forward",
            "protocol": "tcp",
            "ports": [
                "80",
                "443"
            ],
            "category": "default",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.fqdn",
                    "value": "autodiscover.*.onmicrosoft.com"
                }
            ]
        }
```

