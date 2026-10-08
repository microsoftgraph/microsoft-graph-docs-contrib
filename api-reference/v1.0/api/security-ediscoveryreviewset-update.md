---
title: "Update ediscoveryReviewSet"
description: "Update the properties of an ediscoveryReviewSet object."
author: "manjarisenthil"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
ms.date: 05/25/2025
---

# Update ediscoveryReviewSet

Namespace: microsoft.graph.security

Update the properties of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryreviewset_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewset-update-permissions.md)]

[!INCLUDE [rbac-ediscovery-reviewset](../includes/rbac-for-apis/rbac-ediscovery-reviewset-tag-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /security/cases/ediscoveryCases/{ediscoverycaseId}/reviewSets/{reviewSetId}
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
|description|String|The description of the review set. Optional.|
|displayName|String|The name of the review set. The name is unique with a maximum limit of 64 characters. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request that updates the review set name to `reviewset01` and the description to `reviewset description`.

<!-- {
  "blockType": "request",
  "name": "update_ediscoveryreviewset"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/security/cases/ff8b82a4-071c-43c7-b0f4-a2708a8736c0/reviewSets/a5658335-7242-4550-ad22-e57b443f7442
Content-Type: application/json

{
  "displayName": "reviewset01",
  "description": "reviewset description"
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
