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

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-tlsinspectionrule-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionrule-update-permissions.md)]

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

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the rule. Required.|
|description|String|Optional description explaining the purpose of the rule.|
|action|microsoft.graph.networkaccess.tlsInspectionAction|The action to take when traffic matches this rule. The possible values are: `bypass`, `inspect`. Required.|
|priority|Int64|The priority of the rule. Rules are evaluated in ascending order of priority. Lower numbers indicate higher priority. Required.|
|settings|[microsoft.graph.networkaccess.tlsInspectionRuleSettings](../resources/networkaccess-tlsinspectionrulesettings.md)|Additional settings that configure the rule's behavior. Required.|
|matchingConditions|[microsoft.graph.networkaccess.tlsInspectionMatchingConditions](../resources/networkaccess-tlsinspectionmatchingconditions.md)|The conditions that determine when this rule should be applied to traffic. Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
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
HTTP/1.1 204 No Content
