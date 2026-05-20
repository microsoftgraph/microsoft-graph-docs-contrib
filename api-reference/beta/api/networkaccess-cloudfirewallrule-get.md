---
title: "Get cloudFirewallRule"
description: "Read the properties and relationships of a cloudFirewallRule object."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get cloudFirewallRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_cloudfirewallrule_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-cloudfirewallrule-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/cloudFirewallPolicies/{cloudFirewallPolicyId}/policyRules/{cloudFirewallRuleId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudfirewallrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/cloudFirewallPolicies/80b58b7d-572f-4457-8944-c804fcf3b694/policyRules/406ebb24-e229-4011-8240-e11bbaa4f49d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudfirewallrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudfirewallrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudfirewallrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudfirewallrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudfirewallrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudfirewallrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-cloudfirewallrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallRule",
  "id": "406ebb24-e229-4011-8240-e11bbaa4f49d",
  "name": "Block outbound to risky destinations",
  "description": "Block traffic to specific IPs",
  "priority": 100,
  "action": "block",
  "settings": {
    "status": "enabled"
  },
  "matchingConditions": {
    "sources": {
      "addresses": [
        {
          "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress",
          "values": ["192.168.1.1", "192.168.0.0/16", "172.16.0.0-172.16.255.255"]
        }
      ],
      "ports": ["80", "443", "445-447"]
    },
    "destinations": {
      "addresses": [
        {
          "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress",
          "values": ["10.0.0.1"]
        }
      ],
      "ports": ["80", "443", "445-447"],
      "protocols": "udp"
    }
  }
}
```
