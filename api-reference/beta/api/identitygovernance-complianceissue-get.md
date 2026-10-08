---
title: "Get complianceIssue"
description: "Read the properties and relationships of a complianceIssue object."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get complianceIssue

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.identityGovernance.complianceIssue](../resources/identitygovernance-complianceissue.md) object for the [identityLifecycle](../resources/identitygovernance-identitylifecycle.md) of a [servicePrincipal](../resources/serviceprincipal.md). The **ruleType** property indicates which rule caused the noncompliance.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-complianceissue-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-complianceissue-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{servicePrincipalsId}/lifecycle/complianceIssues/{complianceIssueId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.complianceIssue](../resources/identitygovernance-complianceissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_complianceissue"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/55bc54bb-f5ef-431b-9e8f-6ee6320191fe/lifecycle/complianceIssues/a4863e31-4791-f8c5-aa4e-cd43c45c8dd0
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.complianceIssue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.attestationComplianceIssue",
  "id": "a4863e31-4791-f8c5-aa4e-cd43c45c8dd0",
  "issueCode": "SponsorCountBelowMinimum",
  "description": "The agent identity does not meet the minimum sponsor count requirement.",
  "governingPolicyReferenceId": "f360e310-e2c9-4bb3-a3ca-791d3c0b6548",
  "ruleType": "sponsorPresence",
  "attestationBlockReasons": ["MissingRequiredNumberOfSponsors"]
}
```

