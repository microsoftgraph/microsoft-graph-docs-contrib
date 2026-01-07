---
title: "Update filteringPolicyLink"
description: "Modify the properties of an existing filteringPolicyLink object to update its traffic rules."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# Update filteringPolicyLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Modify the properties of an existing [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object to update its traffic rules.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_filteringpolicylink_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringpolicylink-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH networkAccess/filteringProfiles({filteringProfile_id})/policies({Policy_link_id})
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
|state|microsoft.graph.networkaccess.status| Determines whether the link is enabled or disabled. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`. |
|action|microsoft.graph.networkaccess.filteringPolicyAction|Represents actions for filtering policies, offering "block" and "allow" options to specify whether to block or allow access based on the policy. The possible values are: `block`, `allow`. |




## Response
If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filteringpolicylink"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkaccess/filteringProfiles/9020f79d-71f6-4650-83a9-6b532479578f/policies/d00cf227-8645-4ab8-bd99-a9b455fd83a3
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
  "state": "disabled"
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

