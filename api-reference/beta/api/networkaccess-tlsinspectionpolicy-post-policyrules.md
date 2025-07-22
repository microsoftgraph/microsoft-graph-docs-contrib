---
title: "Create tlsInspectionRule"
description: "Create a new rule in a TLS inspection policy that determines whether certain network traffic should be inspected or bypassed based on matching conditions."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create tlsInspectionRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object in a [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicy_post_policyrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicy-post-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}/policyRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object.

You can specify the following properties when creating a **policyRule**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the rule. Required.|
|description|String|Optional description explaining the purpose of the rule.|
|action|microsoft.graph.networkaccess.tlsInspectionAction|The action to take when traffic matches this rule. The possible values are: `bypass`, `inspect`. Required.|
|priority|Int64|The priority of the rule. Rules are evaluated in ascending order of priority. Lower numbers indicate higher priority. Required.|
|settings|[microsoft.graph.networkaccess.tlsInspectionRuleSettings](../resources/networkaccess-tlsinspectionrulesettings.md)|Additional settings that configure the rule's behavior. Required.|
|matchingConditions|[microsoft.graph.networkaccess.tlsInspectionMatchingConditions](../resources/networkaccess-tlsinspectionmatchingconditions.md)|The conditions that determine when this rule should be applied to traffic. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_tlsinspectionrule",
  "sampleKeys": ["b712c469-e7cd-e7cb-738f-94b199570b0d"]
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionRule",
  "name": "Contoso TLS Rule 1",
  "priority": 100,
  "description": "My TLS rule",
  "action": "inspect",
  "settings": {
    "status": "enabled"
  },
  "matchingConditions": {
    "destinations": [
      {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
        "values": [
          "www.contoso.test.com",
          "*.contoso.org"
        ]
      },
      {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination",
        "values": [
          "Entertainment"
        ]
      }
    ]
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionRule"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionRule",
  "id": "ecf99dcc-6575-4d01-83dc-3fa5a940c76b",
  "name": "Contoso TLS Rule 1",
  "priority": 100,
  "description": "My TLS rule",
  "action": "inspect",
  "settings": {
    "status": "enabled"
  },
  "matchingConditions": {
    "destinations": [
      {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
        "values": [
          "www.contoso.test.com",
          "*.contoso.org"
        ]
      },
      {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination",
        "values": [
          "Entertainment"
        ]
      }
    ]
  }
}
```
