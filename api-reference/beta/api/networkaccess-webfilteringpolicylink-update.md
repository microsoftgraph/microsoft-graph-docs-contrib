---
title: "Update webFilteringPolicyLink"
description: "Update the properties of a webFilteringPolicyLink object."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update webFilteringPolicyLink

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-webfilteringpolicylink-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-webfilteringpolicylink-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}
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
|state|[microsoft.graph.networkaccess.status](../resources/enums-networkaccess.md#status-values)|The state of the policy link. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|The version of the object.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_webfilteringpolicylink"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-4521-8981-de9d08a21f8f
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicyLink",
  "state": "enabled",
  "version": "1.0"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicyLink"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicyLink",
  "id": "e7c17cf0-2140-4b2a-9ec4-564c03709f8e",
  "state": "enabled",
  "version": "1.0"
}
```
