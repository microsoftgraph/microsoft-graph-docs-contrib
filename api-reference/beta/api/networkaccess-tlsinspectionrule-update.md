---
title: "Update tlsInspectionRule"
description: "Update the properties of a tlsInspectionRule object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update tlsInspectionRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionrule_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionrule-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}/policyRules/{tlsInspectionRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.tlsInspectionAction|The action to take when traffic matches this rule. The possible values are: `bypass`, `inspect`.|
|description|String|Optional description explaining the purpose of the rule.|
|matchingConditions|[microsoft.graph.networkaccess.tlsInspectionMatchingConditions](../resources/networkaccess-tlsinspectionmatchingconditions.md)|The conditions that determine when this rule should be applied to traffic.|
|name|String|The display name of the rule.|
|priority|Int64|The priority of the rule. Rules are evaluated in ascending order of priority. Lower numbers indicate higher priority.|
|settings|[microsoft.graph.networkaccess.tlsInspectionRuleSettings](../resources/networkaccess-tlsinspectionrulesettings.md)|Additional settings that configure the rule's behavior.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_tlsinspectionrule",
  "sampleKeys": ["b712c469-e7cd-e7cb-738f-94b199570b0d", "ecf99dcc-6575-4d01-83dc-3fa5a940c76b"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules/ecf99dcc-6575-4d01-83dc-3fa5a940c76b
Content-Type: application/json

{
  "name": "Contoso TLS Rule 1 - Updated",
  "priority": 200,
  "description": "My TLS rule - Updated",
  "action": "bypass",
  "settings": {
    "status": "disabled"
  },
  "matchingConditions": {
    "destinations": [
      {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
        "values": [
          "www.contoso.test-updated.com",
          "*.contoso.org"
        ]
      }
    ]
  }
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-tlsinspectionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-tlsinspectionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-tlsinspectionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-tlsinspectionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-tlsinspectionrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-tlsinspectionrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
