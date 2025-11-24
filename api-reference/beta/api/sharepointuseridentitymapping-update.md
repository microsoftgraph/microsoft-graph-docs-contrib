---
title: "Update sharePointUserIdentityMapping"
description: "Perform delta patch operations on user identity mappings for cross-organization migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update sharePointUserIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform delta patch operations on [user identity mappings](../resources/sharepointuseridentitymapping.md) for cross-organization migration. Supports bulk add, update, and delete operations in a single request. Maximum of 50 items allowed in the value array.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointuseridentitymapping-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointuseridentitymapping-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/sharePoint/migrations/crossOrganizationUserMappings
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
|sourceUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the source user.|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|targetUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the target user.|
|targetUserMigrationData|[sharePointIdentityMappingUserMigrationData](../resources/sharepointidentitymappingusermigrationdata.md)|Additional migration-specific data for the target user.|
|userType|sharePointIdentityMappingUserType|Indicates the type of user. The possible values are: `none`, `regularUser`, `adminUser`, `guestUser`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and a collection of updated [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) objects in the response body.

## Examples

### Request

The following example shows a request that includes both updates and removals using the **@removed** annotation.

<!-- {
  "blockType": "request",
  "name": "update_sharepointuseridentitymapping"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationUserMappings
Content-Type: application/json

{
  "@context": "#$delta",
  "value": [
    {
      "sourceOrganizationId": "11111111-1111-1111-1111-111111111111",
      "userType": "regularUser",
      "sourceUserIdentity": {
        "userPrincipalName": "user1@contoso.com"
      },
      "targetUserIdentity": {
        "userPrincipalName": "admin@a830edad9050849ken005.onmicrosoft.com"
      },
      "targetUserMigrationData": {
        "email": "admin@a830edad9050849ken005.onmicrosoft.com"
      }
    },
    {
      "@removed": {
        "reason": "deleted"
      },
      "sourceUserIdentity": {
        "userPrincipalName": "user1@contoso.com"
      }
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointUserIdentityMapping)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/sharePoint/migrations/crossOrganizationUserMappings/$delta",
  "value": [
    {
      "id": "AQAAAAEAAAB1c2VyMUBjb250b3NvLmNvbQ",
      "sourceOrganizationId": "11111111-1111-1111-1111-111111111111",
      "userType": "regularUser",
      "sourceUserIdentity": {
        "userPrincipalName": "user1@contoso.com"
      },
      "targetUserIdentity": {
        "userPrincipalName": "admin@a830edad9050849ken005.onmicrosoft.com"
      },
      "targetUserMigrationData": {
        "email": "admin@a830edad9050849ken005.onmicrosoft.com"
      }
    },
    {
      "id": "AQAAAAEAAAB1c2VyMUBjb250b3NvLmNvbQ",
      "sourceUserIdentity": {
        "userPrincipalName": "user1@contoso.com"
      }
    }
  ]
}
```

