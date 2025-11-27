---
title: "Update sharePointGroupIdentityMapping"
description: "Perform delta patch operations on group identity mappings for cross-organization migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update sharePointGroupIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform delta patch operations on [group identity mappings](../resources/sharepointgroupidentitymapping.md) for cross-organization migration. This operation supports bulk add, update, and delete actions for both Microsoft 365 groups and regular Microsoft Entra groups. Maximum of 50 items allowed in the value array.

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
|deleted|[deleted](../resources/deleted.md)|Indicate that an identity mapping has been successfully deleted. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md). Optional.|
|groupType|sharePointIdentityMappingGroupType|Indicates the type of group. The possible values are: `none`, `regularGroup`, `m365Group`, `unknownFutureValue`.|
|sourceGroupIdentity|[identity](../resources/identity.md)|The identity information of the source group.|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|targetGroupIdentity|[identity](../resources/identity.md)|The identity information of the target group.|
|targetGroupMigrationData|[sharePointIdentityMappingGroupMigrationData](../resources/sharepointidentitymappinggroupmigrationdata.md)|Additional migration-specific data for the target group.|

## Response

If successful, this method returns a `200 OK` response code and a collection of updated [sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) objects in the response body.

## Examples

### Request

The following example shows a request that includes both updates and removals using the **@removed** annotation.

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
      "sourceOrganizationId": "11111111-1111-1111-1111-111111111111",
      "groupType": "m365Group",
      "sourceGroupIdentity": {
        "id": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
      },
      "targetGroupIdentity": {
        "id": "bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb"
      },
      "targetGroupMigrationData": {
        "mailNickname": "targetGroup"
      }
    },
    {
      "@removed": {
        "reason": "deleted"
      },
      "sourceGroupIdentity": {
        "id": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/sharePoint/migrations/crossOrganizationGroupMappings/$delta",
  "value": [
    {
      "id": "AQAAAAIAAABhYWFhYWFhYS1hYWFhLWFhYWEtYWFhYS1hYWFhYWFhYWFhYWE",
      "sourceOrganizationId": "11111111-1111-1111-1111-111111111111",
      "groupType": "m365Group",
      "sourceGroupIdentity": {
        "id": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
      },
      "targetGroupIdentity": {
        "id": "bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb"
      },
      "targetGroupMigrationData": {
        "mailNickname": "targetGroup"
      }
    },
    {
      "id": "AQAAAAIAAABhYWFhYWFhYS1hYWFhLWFhYWEtYWFhYS1hYWFhYWFhYWFhYWE",
      "sourceGroupIdentity": {
        "id": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
      },
      "deleted": {
        "state": "deleted"
      }
    }
  ]
}
```

