---
title: "lifecyclePolicy: restore"
description: "Restore a soft-deleted lifecyclePolicy object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# lifecyclePolicy: restore

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a soft-deleted [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) object. Use this action to recover a policy that was removed with the [delete](identitygovernance-lifecyclepolicy-delete.md) operation and still appears in the deleted items container.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicy_restore" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/deletedItems/lifecyclePolicies/{lifecyclePolicyId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "lifecyclepolicythis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/lifecyclePolicies/ba9191ab-e88f-4278-942c-4dcc6a4f05b1/restore
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
HTTP/1.1 200 OK
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
    }
  ]
}
```

