---
title: "Create cloudFirewallRule"
description: "Create a new cloudFirewallRule object in a cloud firewall policy."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create cloudFirewallRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) object in a [cloudFirewallPolicy](../resources/networkaccess-cloudfirewallpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_cloudfirewallpolicy_post_policyrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-cloudfirewallpolicy-post-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/cloudFirewallPolicies/{cloudFirewallPolicyId}/policyRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) object.

You can specify the following properties when creating a **cloudFirewallRule**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|A unique display name for the rule. Required.|
|description|String|A description of the rule. Optional.|
|priority|Int64|A unique priority value that determines the rule evaluation order. Required.|
|action|[microsoft.graph.networkaccess.cloudFirewallAction](../resources/enums-networkaccess.md#cloudfirewallaction-values)|The action to take when traffic matches the rule. The possible values are: `allow`, `block`, `unknownFutureValue`. Required.|
|settings|[microsoft.graph.networkaccess.cloudFirewallRuleSettings](../resources/networkaccess-cloudfirewallrulesettings.md)|Configuration settings for the rule. Required.|
|matchingConditions|[microsoft.graph.networkaccess.cloudFirewallMatchingConditions](../resources/networkaccess-cloudfirewallmatchingconditions.md)|The conditions that traffic must match for the rule to apply. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) object in the response body.

## Examples

### Request

The following example shows a request that creates a rule to block specific traffic. The matching conditions use AND logic between properties (sources AND destinations must match), while items within collections use OR logic (any one address or port can match).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudfirewallrule"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/cloudFirewallPolicies/80b58b7d-572f-4457-8944-c804fcf3b694/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallRule",
  "name": "Block outbound to risky destinations",
  "description": "Block traffic to specific IPs on common ports",
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
      "protocols": "tcp"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudfirewallrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudfirewallrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudfirewallrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudfirewallrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudfirewallrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudfirewallrule-python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallRule",
  "id": "406ebb24-e229-4011-8240-e11bbaa4f49d",
  "name": "Block outbound to risky destinations",
  "description": "Block traffic to specific IPs on common ports",
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
      "protocols": "tcp"
    }
  }
}
```
