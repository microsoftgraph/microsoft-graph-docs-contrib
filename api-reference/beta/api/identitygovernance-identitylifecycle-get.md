---
title: "Get identityLifecycle"
description: "Read the properties and relationships of an identityLifecycle object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get identityLifecycle

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [microsoft.graph.identityGovernance.identityLifecycle](../resources/identitygovernance-identitylifecycle.md) object for a [servicePrincipal](../resources/serviceprincipal.md). Use `$expand=effectiveGoverningPolicy` to retrieve the highest-priority policy governing the identity. The **lastAttestationDateTime** property can be `null` for an identity that hasn't yet been attested.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-identitylifecycle-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-identitylifecycle-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{servicePrincipalsId}/lifecycle
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.identityLifecycle](../resources/identitygovernance-identitylifecycle.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_identitylifecycle"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/55bc54bb-f5ef-431b-9e8f-6ee6320191fe/lifecycle
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.identityLifecycle"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecycle",
  "id": "55bc54bb-f5ef-431b-9e8f-6ee6320191fe",
  "lastAttestationDateTime": "2026-06-01T12:00:00Z",
  "effectiveGoverningPolicy": {
    "id": "f360e310-e2c9-4bb3-a3ca-791d3c0b6548"
  },
  "complianceIssues": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.attestationComplianceIssue",
      "issueCode": "SponsorCountBelowMinimum",
      "description": "The agent identity does not meet the minimum sponsor count requirement.",
      "governingPolicyReferenceId": "f360e310-e2c9-4bb3-a3ca-791d3c0b6548",
      "ruleType": "sponsorPresence",
      "attestationBlockReasons": ["MissingRequiredNumberOfSponsors"]
    }
  ]
}
```

