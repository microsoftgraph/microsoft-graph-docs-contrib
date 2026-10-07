---
title: "Update lifecyclePolicyRule"
description: "Update the properties of a lifecyclePolicyRule object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update lifecyclePolicyRule

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicyrule_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicyrule-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}/rules/{lifecyclePolicyRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the `@odata.type` property when updating a [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) object. For example, to update a [periodicAttestationRule](../resources/identitygovernance-periodicattestationrule.md) object, set `@odata.type` to `#microsoft.graph.identityGovernance.periodicAttestationRule`.

|Property|Type|Description|
|:---|:---|:---|
|attestationIntervalInDays|Int32|The number of days between required attestations. Applies to `periodicAttestationRule`.|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated.|
|lastActivityThresholdInDays|Int32|The number of days of inactivity after which the identity is considered noncompliant. Applies to `inactivityRule`.|
|minimumSponsorCount|Int32|The minimum number of sponsors an identity must have. Applies to `sponsorPresenceRule`.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_lifecyclepolicyrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/ba9191ab-e88f-4278-942c-4dcc6a4f05b1/rules/6f3b8c1a-2d4e-4f6a-8b0c-1e2f3a4b5c6d
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
  "isEnabled": false,
  "attestationIntervalInDays": 120
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
