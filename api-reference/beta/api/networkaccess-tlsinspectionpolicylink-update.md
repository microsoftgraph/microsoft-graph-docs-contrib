---
title: "Update tlsInspectionPolicyLink"
description: "Update the properties of a tlsInspectionPolicyLink object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update tlsInspectionPolicyLink

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicylink_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicylink-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/filteringProfiles/{filteringProfileId}/policies/{tlsInspectionPolicyLinkId}
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
|state|microsoft.graph.networkaccess.status|The state of the policy link. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|

## Response

If successful, this method returns a `204 No Content` response code.


## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_tlsinspectionpolicylink",
  "sampleKeys": ["d734d2de-f2df-4b4a-8c4c-5111f8878275", "70405a6c-b823-c521-c981-de9d08a21f8f"]
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-c521-c981-de9d08a21f8f
Content-Type: application/json

{
  "state": "disabled"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
```http
HTTP/1.1 204 No Content
```
