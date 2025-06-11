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

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /threatIntelligenceRule
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
|name|String|The display name of the threat intelligence rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Required.|
|description|String|A description of the threat intelligence rule. Optional.|
|action|microsoft.graph.networkaccess.threatIntelligenceAction|The action to take when network traffic matches this rule's conditions. The possible values are: `allow`, `block`, `unknownFutureValue`. Required.|
|priority|Int64|The priority of the rule which determines the order of rule evaluation. Lower values indicate higher priority. Required.|
|settings|[microsoft.graph.networkaccess.threatIntelligenceRuleSettings](../resources/networkaccess-threatintelligencerulesettings.md)|Settings that define how the threat intelligence rule operates and is enforced. Required.|
|matchingConditions|[microsoft.graph.networkaccess.threatIntelligenceMatchingConditions](../resources/networkaccess-threatintelligencematchingconditions.md)|Conditions that define what network traffic should be evaluated by this rule. Required.|



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
``` http
PATCH https://graph.microsoft.com/beta/threatIntelligenceRule
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
  "name": "String",
  "description": "String",
  "action": "String",
  "priority": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceRuleSettings"
  },
  "matchingConditions": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceMatchingConditions"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

