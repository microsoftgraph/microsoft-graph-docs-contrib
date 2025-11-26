---
title: "Update forwardingProfile"
description: "Update an existing forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
toc.title: Update forwarding profile for branch (deprecated)
ms.date: 08/13/2024
---

# Update forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing forwarding profile.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_forwardingprofile_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-forwardingprofile-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

To update a base forwarding profile:
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/forwardingProfiles/{forwardingProfileId}
```

To update a forwarding profile for a branch:

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
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
|name|String|Name of profile. Required.|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|Specifies the users, groups, devices, and branch locations that are associated with this traffic forwarding profile. Optional. You must include the **@odata.type** property with a value of the specific association in the body. For example, `"@odata.type": "#microsoft.graph.associatedBranch"`. |


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_forwardingprofile"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfileId}
Content-Type: application/json

{
    "associations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
            "branchId": "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
        }
    ]
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


