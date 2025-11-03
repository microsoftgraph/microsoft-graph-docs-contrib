---
title: "Update sharePointUserIdentityMapping"
description: "Performs delta patch operations on user identity mappings for cross-organization migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update sharePointUserIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Performs delta patch operations on user identity mappings for cross-organization migration. Supports bulk add, update, and delete operations in a single request.

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
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|userType|sharePointIdentityMappingUserType|Indicates the type of user. The possible values are: `none`, `regularUser`, `adminUser`, `guestUser`, `unknownFutureValue`.|
|sourceUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the source user.|
|targetUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the target user.|
|targetUserMigrationData|[sharePointIdentityMappingUserMigrationData](../resources/sharepointidentitymappingusermigrationdata.md)|Additional migration-specific data for the target user.|



## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) object in the response body.

## Examples

### Request

The following example shows a request that includes both updates and removals using the `@removed` annotation.

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
      "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
      "sourceOrganizationId": "Guid",
      "userType": "String",
      "sourceUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "targetUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "targetUserMigrationData": {
        "@odata.type": "microsoft.graph.sharePointIdentityMappingUserMigrationData"
      }
    },
    {
      "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
      "@removed": {
        "reason": "deleted"
      },
      "sourceUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/sharePoint/migrations/crossOrganizationUserMappings",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
      "id": "String (base64-encoded identifier)",
      "sourceOrganizationId": "Guid",
      "userType": "String",
      "sourceUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "targetUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "targetUserMigrationData": {
        "@odata.type": "microsoft.graph.sharePointIdentityMappingUserMigrationData"
      }
    },
    {
      "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
      "id": "String (base64-encoded identifier)",
      "sourceUserIdentity": {
        "@odata.type": "microsoft.graph.userIdentity"
      }
    }
  ]
}
```

