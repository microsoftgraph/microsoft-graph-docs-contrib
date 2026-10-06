---
title: "List lifecyclePolicies"
description: "Get a list of the lifecyclePolicy objects and their properties."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List lifecyclePolicies

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) objects and their properties in the [lifecycle workflows container](../resources/identitygovernance-lifecycleworkflowscontainer.md). Use `$filter` on the **policySource** property to distinguish system-managed default policies from user-created policies.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-lifecycleworkflowscontainer-list-lifecyclepolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-list-lifecyclepolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicies
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
  "name": "list_lifecyclepolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies?$filter=policySource eq 'systemDefault'
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
      "id": "00000000-0000-0000-0000-000000000001",
      "displayName": "Default agent attestation policy",
      "policySource": "systemDefault",
      "isEnabled": true,
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
  ]
}
```

