---
title: "Update sharePointGroupIdentityMapping"
description: "Performs delta patch operations on group identity mappings for cross-organization migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update sharePointGroupIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Performs delta patch operations on group identity mappings for cross-organization migration. This operation supports bulk add, update, and delete actions for both Microsoft 365 groups and regular Azure AD groups. Maximum of **50** items allowed in the value array.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointgroupidentitymapping-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroupidentitymapping-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/sharePoint/migrations/crossOrganizationGroupMappings
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
|groupType|sharePointIdentityMappingGroupType|Indicates the type of group. The possible values are: `none`, `regularGroup`, `m365Group`, `unknownFutureValue`.|
|sourceGroupIdentity|[identity](../resources/identity.md)|The identity information of the source group.|
|targetGroupIdentity|[identity](../resources/identity.md)|The identity information of the target group.|
|targetGroupMigrationData|[sharePointIdentityMappingGroupMigrationData](../resources/sharepointidentitymappinggroupmigrationdata.md)|Additional migration-specific data for the target group.|



## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) object in the response body.

## Examples

### Request

The following example shows a request that includes both updates and removals using the `@removed` annotation.

<!-- {
  "blockType": "request",
  "name": "update_sharepointgroupidentitymapping"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationGroupMappings
Content-Type: application/json

{
  "@context": "#$delta",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
      "sourceOrganizationId": "Guid",
      "groupType": "String",
      "sourceGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
      },
      "targetGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
      },
      "targetGroupMigrationData": {
        "@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"
      }
    },
    {
      "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
      "@removed": {
        "reason": "deleted"
      },
      "sourceGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
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
  "@odata.type": "Collection(microsoft.graph.sharePointGroupIdentityMapping)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/sharePoint/migrations/crossOrganizationGroupMappings",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
      "id": "String (base64-encoded identifier)",
      "sourceOrganizationId": "Guid",
      "groupType": "String",
      "sourceGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
      },
      "targetGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
      },
      "targetGroupMigrationData": {
        "@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"
      }
    },
    {
      "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
      "id": "String (base64-encoded identifier)",
      "sourceGroupIdentity": {
        "@odata.type": "microsoft.graph.identity",
        "id": "String"
      }
    }
  ]
}
```

