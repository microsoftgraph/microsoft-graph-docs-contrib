---
title: "Create lifecyclePolicy"
description: "Create a new lifecyclePolicy object in the lifecycle workflows container."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create lifecyclePolicy

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object in the [lifecycle workflows container](../resources/identitygovernance-lifecycleworkflowscontainer.md). A policy is created for a specific subject type and takes effect according to its priority order.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-lifecycleworkflowscontainer-post-lifecyclepolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-post-lifecyclepolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/lifecyclePolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object. Because **lifecyclePolicy** is an abstract type, specify the `@odata.type` of a derived type, such as `#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy`.

You can specify the following properties when creating a **lifecyclePolicy**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|A description for the policy. Optional.|
|displayName|String|The display name for the policy. Required.|
|enforcementAction|[microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md)|The action taken against identities that fail to meet the policy's rules. This polymorphic type has the derived types `disableOnlyEnforcementAction`, `deleteOnlyEnforcementAction`, and `disableThenDeleteEnforcementAction`. Required.|
|isEnabled|Boolean|Indicates whether the policy is enabled and evaluated. Required.|
|notificationSchedule|[microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings](../resources/identitygovernance-lifecyclepolicynotificationsettings.md)|The notification schedule that determines when reminders are sent before enforcement. Optional.|
|rules|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection|The inline compliance rules evaluated with AND logic. Each rule specifies its own `@odata.type`, such as `#microsoft.graph.identityGovernance.periodicAttestationRule`. A maximum of 10 rules are allowed per policy. Optional.|
|scope|[microsoft.graph.subjectSet](../resources/subjectset.md)|The set of identities the policy applies to. Supports scope types such as `selectedObjectsSubjectSet`, `allExcludingSpecificObjectsSubjectSet`, and `allExcludingGroupsSubjectSet`. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object in the response body.

### Errors

This method returns a `400 Bad Request` response code with one of the following error codes when a tenant limit is exceeded:

| Error code | Description |
|:-----------|:------------|
| `lifecyclePoliciesPerSubjectLimitExceeded` | A maximum of 10 lifecycle policies are allowed per subject type per tenant. |
| `lifecyclePolicyRulesLimitExceeded` | A maximum of 10 rules are allowed per lifecycle policy. |
| `lifecyclePolicyExcludedGroupsLimitExceeded` | A maximum of 10 excluded groups are allowed per lifecycle policy. |

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_lifecyclepolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
  "displayName": "Agent attestation with sponsor requirement",
  "description": "Requires attestation every 90 days and at least 1 sponsor",
  "isEnabled": true,
  "enforcementAction": {
    "@odata.type": "#microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction",
    "deletionGracePeriodInDays": 30
  },
  "scope": null,
  "rules": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
      "isEnabled": true,
      "attestationIntervalInDays": 90
    },
    {
      "@odata.type": "#microsoft.graph.identityGovernance.sponsorPresenceRule",
      "isEnabled": true,
      "minimumSponsorCount": 1
    }
  ],
  "notificationSchedule": {
    "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings",
    "additionalFallbackRecipients": ["admins@contoso.com"],
    "offsetsAfterNonComplianceInDays": [14, 7, 1]
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
  "id": "ba9191ab-e88f-4278-942c-4dcc6a4f05b1",
  "displayName": "Agent attestation with sponsor requirement",
  "description": "Requires attestation every 90 days and at least 1 sponsor",
  "policySource": "userCreated",
  "isEnabled": true,
  "scope": null,
  "versionNumber": 1,
  "enforcementAction": {
    "@odata.type": "#microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction",
    "deletionGracePeriodInDays": 30
  },
  "rules": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
      "ruleType": "periodicAttestation",
      "isEnabled": true,
      "attestationIntervalInDays": 90
    },
    {
      "@odata.type": "#microsoft.graph.identityGovernance.sponsorPresenceRule",
      "ruleType": "sponsorPresence",
      "isEnabled": true,
      "minimumSponsorCount": 1
    }
  ],
  "notificationSchedule": {
    "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings",
    "additionalFallbackRecipients": ["admins@contoso.com"],
    "offsetsAfterNonComplianceInDays": [14, 7, 1]
  }
}
```
