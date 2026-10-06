---
title: "List rules"
description: "Get a list of the lifecyclePolicyRule objects and their properties."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List rules

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) objects and their properties for a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). Rules are evaluated together with AND logic.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-lifecyclepolicy-list-rules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-list-rules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}/rules
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

If successful, this method returns a `200 OK` response code and a collection of [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_lifecyclepolicyrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/ba9191ab-e88f-4278-942c-4dcc6a4f05b1/rules
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
      "id": "6f3b8c1a-2d4e-4f6a-8b0c-1e2f3a4b5c6d",
      "ruleType": "periodicAttestation",
      "isEnabled": true,
      "attestationIntervalInDays": 90
    },
    {
      "@odata.type": "#microsoft.graph.identityGovernance.sponsorPresenceRule",
      "id": "7a4c9d2b-3e5f-5a7b-9c1d-2f3a4b5c6d7e",
      "ruleType": "sponsorPresence",
      "isEnabled": true,
      "minimumSponsorCount": 1
    }
  ]
}
```
