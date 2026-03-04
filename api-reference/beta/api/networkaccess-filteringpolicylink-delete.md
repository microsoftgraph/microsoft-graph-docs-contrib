---
title: "Delete filteringPolicyLink"
description: "Delete a filteringPolicyLink object."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# Delete filtering Policy Link
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object. The policy can be one of the following types:
- [filteringPolicy](../resources/networkaccess-filteringpolicy.md)
- [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)
- [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_filteringpolicylink_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringpolicylink-delete-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /networkaccess/FilteringProfiles/{FilteringProfilesId}/policies/{policyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Delete a filteringPolicyLink

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_filteringpolicylink"
}
-->
```http
DELETE https://graph.microsoft.com/beta/networkaccess/FilteringProfiles/c308a3af-e3f4-4e7b-b8cf-d17fd7acb97c/policies/65973c4b-0239-47ec-9c22-aef144cd2fec
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Delete a tlsInspectionPolicyLink

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_tlsinspectionpolicylink",
  "sampleKeys": ["d734d2de-f2df-4b4a-8c4c-5111f8878275"]
}
-->
```http
DELETE https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-c521-c981-de9d08a21f8f
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

