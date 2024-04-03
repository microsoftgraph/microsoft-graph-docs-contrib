---
title: "forwardingPolicy: updatePolicyRules"
description: "Update the rules within a forwarding policy."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.topic: reference
---

# forwardingPolicy: updatePolicyRules
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the rules within a forwarding policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_forwardingpolicy_updatepolicyrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-forwardingpolicy-updatepolicyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/forwardingPolicies/{id}/updatePolicyRules
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|id|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Unique Identifier for the rule.|
|action|[microsoft.graph.networkaccess.policyRuleDelta](../resources/networkaccess-policyruledelta.md)|Action for the traffic, possible values are `forward` or `bypass`. Required.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "forwardingpolicythis.updatepolicyrules"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/forwardingPolicies/{id}/updatePolicyRules
Content-Type: application/json

{
  "rules": [
    {
      "ruleId": "e296c914-768c-4ce9-a279-e4b6145a8a4b",
      "action": "forward"
    }
  ]
}
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/forwardingpolicythisupdatepolicyrules-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/forwardingpolicythisupdatepolicyrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows a response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

