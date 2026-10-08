---
title: "Update ediscoveryHoldPolicy"
description: "Update the properties of an ediscoveryHoldPolicy object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 10/30/2024
---

# Update ediscoveryHoldPolicy
Namespace: microsoft.graph.security

Update the properties of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-update-permissions.md)]

[!INCLUDE [rbac-ediscovery-write](../includes/rbac-for-apis/rbac-ediscovery-apis-write.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}
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
|contentQuery|String|KQL query that specifies content to be held in the specified locations. To learn more, see [Keyword queries and search conditions for eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions). To hold all content in the specified locations, don't provide a value for the **contentQuery** property. Optional.|
|description|String|The description of the legal hold policy. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_ediscoveryholdpolicy"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalholds/783c3ea4-d474-4051-9c13-08707ce8c8b6

{
  "description": "updated description",
  "contentQuery": "updated kql query"
}
```

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
