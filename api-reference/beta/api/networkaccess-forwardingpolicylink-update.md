---
title: "Update forwardingPolicyLink"
description: "Update an existing forwarding policy link to modify the association between a forwarding policy and a forwarding profile. This operation allows for linking or unlinking them as needed."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# Update forwardingPolicyLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing forwarding policy link to modify the association between a forwarding policy and a forwarding profile. This operation allows for linking or unlinking them as needed.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_forwardingpolicylink_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-forwardingpolicylink-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/forwardingProfiles/{forwardingProfileId}/policies/{forwardingPolicyId}
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
|state|microsoft.graph.networkaccess.status|Represents the current state or status of a forwarding policy link. It indicates whether the link between a forwarding policy and a forwarding profile is active or inactive., Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`. Required.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_forwardingpolicylink"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfile_id}/policies/{policy_id}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
  "state": "enabled"  
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


