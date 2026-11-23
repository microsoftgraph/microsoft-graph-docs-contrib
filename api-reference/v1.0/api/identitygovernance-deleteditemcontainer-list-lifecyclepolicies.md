---
title: "List deleted lifecyclePolicies"
description: "List deleted lifecyclePolicies for lifecycle policy management."
author: "siaggarwal-ops"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List deleted lifecyclePolicies

Namespace: microsoft.graph.identityGovernance

Get the soft-deleted [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) objects in the lifecycle workflows [deletedItemContainer](../resources/identitygovernance-deleteditemcontainer.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_list_lifecyclepolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-deleteditemcontainer-list-lifecyclepolicies-permissions.md)]
[!INCLUDE [rbac-guest-lifecycle-policy-read](../includes/rbac-for-apis/rbac-guest-lifecycle-policy-apis-read.md)]

> [!NOTE]
> Each permissions table applies only to its specified policy subject type. Agent identity policy permissions and guest policy permissions are not interchangeable.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/lifecyclePolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "identitygovernance_deleteditemcontainer_list_lifecyclepolicies"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/lifecyclePolicies
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicy",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecyclePolicy",
      "id": "ba9191ab-e88f-4278-942c-4dcc6a4f05b1",
      "displayName": "Agent attestation policy",
      "policySource": "userCreated",
      "isEnabled": true,
      "versionNumber": 1,
      "enforcementAction": {
        "@odata.type": "#microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction",
        "deletionGracePeriodInDays": 30
      },
      "rules": [
        {
          "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
          "isEnabled": true,
          "attestationIntervalInDays": 90
        }
      ]
    }
  ]
}
```
