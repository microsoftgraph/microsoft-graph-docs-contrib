---
title: "Update lifecyclePolicy"
description: "Update the properties of a lifecyclePolicy object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update lifecyclePolicy

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the `@odata.type` property when updating a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object. For example, to update an [agentIdentityLifecyclePolicy](../resources/identitygovernance-agentidentitylifecyclepolicy.md) object, set `@odata.type` to `#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy`.

|Property|Type|Description|
|:---|:---|:---|
|description|String|A description for the policy.|
|displayName|String|The display name for the policy.|
|enforcementAction|[microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md)|The action taken against identities that fail to meet the policy's rules. This polymorphic type has the derived types `disableOnlyEnforcementAction`, `deleteOnlyEnforcementAction`, and `disableThenDeleteEnforcementAction`.|
|isEnabled|Boolean|Indicates whether the policy is enabled and evaluated.|
|notificationSchedule|[microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings](../resources/identitygovernance-lifecyclepolicynotificationsettings.md)|The notification schedule that determines when reminders are sent before enforcement.|
|scope|[microsoft.graph.subjectSet](../resources/subjectset.md)|The set of identities the policy applies to.|



## Response

If successful, this method returns a `204 No Content` response code.

### Errors

This method returns a `400 Bad Request` response code with the `lifecyclePolicyRulesLimitExceeded` error code if the update would exceed the maximum of 10 rules per policy, or the `lifecyclePolicyExcludedGroupsLimitExceeded` error code if the exclusion scope would exceed the maximum of 10 excluded groups per policy.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_lifecyclepolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/ba9191ab-e88f-4278-942c-4dcc6a4f05b1
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
  "displayName": "Agent attestation with sponsor requirement (v2)",
  "isEnabled": false,
  "enforcementAction": {
    "@odata.type": "#microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction",
    "deletionGracePeriodInDays": 45
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
``` http
HTTP/1.1 204 No Content
```
