---
title: "Update threatIntelligenceRule"
description: "Update the properties of a threatIntelligenceRule object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update threatIntelligenceRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a threatIntelligenceRule object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencerule-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencerule-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules/{id}
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
|name|String|The display name of the threat intelligence rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|description|String|A description of the threat intelligence rule.|
|action|microsoft.graph.networkaccess.threatIntelligenceAction|The action to take when network traffic matches this rule's conditions. The possible values are: `allow`, `block`, `unknownFutureValue`.|
|priority|Int64|The priority of the rule which determines the order of rule evaluation. Lower values indicate higher priority. |
|settings|[microsoft.graph.networkaccess.threatIntelligenceRuleSettings](../resources/networkaccess-threatintelligencerulesettings.md)|Settings that define how the threat intelligence rule operates and is enforced. |
|matchingConditions|[microsoft.graph.networkaccess.threatIntelligenceMatchingConditions](../resources/networkaccess-threatintelligencematchingconditions.md)|Conditions that define what network traffic should be evaluated by this rule.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_threatintelligencerule"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/ab4f3459-c39d-4e99-b8d0-b1aee4726b84/policies/ac253559-37a0-4f72-b666-103420b94e38/policyRules/0823cb1e-644b-4585-80db-1c1055894ec7
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
  "name": "Exclusion List Rule 1",
  "priority": 100,
  "description": "Rule 1",
  "action": "allow",
  "settings": {
    "status": "enabled"
  },
  "matchingConditions": {
    "severity": "high",
    "destinations": [
      {
        "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceFqdnDestination",
        "values": [
          "babsite.com",
          "*.bing.com"
        ]
      }
    ]
  }
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

