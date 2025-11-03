---
title: "sharePointGroupIdentityMapping resource type"
description: "Represents a cross-organization identity mapping for a group during a tenant-to-tenant (cross-tenant) migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointGroupIdentityMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cross-organization identity mapping for a group during a tenant-to-tenant (cross-tenant) migration.
This resource defines the relationship between a source group in the originating organization and its corresponding target group in the destination organization.
It includes source and target group identities, migration metadata, and group type information.


Inherits from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointmigrationsroot-list-crossorganizationgroupmappings.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) collection|Get a list of the sharePointGroupIdentityMapping objects and their properties.|
|[Create](../api/sharepointmigrationsroot-post-crossorganizationgroupmappings.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Create a new sharePointGroupIdentityMapping object.|
|[Get](../api/sharepointgroupidentitymapping-get.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Read the properties and relationships of [sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) object.|
|[Update](../api/sharepointgroupidentitymapping-update.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Update the properties of a sharePointGroupIdentityMapping object.|
|[Delete](../api/sharepointmigrationsroot-delete-crossorganizationgroupmappings.md)|None|Delete a sharePointGroupIdentityMapping object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupType|sharePointIdentityMappingGroupType|Indicates the type of group. The possible values are: `none`, `regularGroup`, `m365Group`, `unknownFutureValue`.|
|id|String|Unique identifier for the group identity mapping. Base64-encoded string. Generated automatically.|
|sourceGroupIdentity|[identity](../resources/intune-identity.md)|The identity information of the source group in the originating organization. Contains the source group's ID.|
|sourceGroupObjectId|String|The Azure AD object ID of the source group. Used as an alternate key for querying. Internal only.|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|targetGroupIdentity|[identity](../resources/intune-identity.md)|The identity information of the target group in the destination organization. Contains the target group's ID.|
|targetGroupMigrationData|[sharePointIdentityMappingGroupMigrationData](../resources/sharepointidentitymappinggroupmigrationdata.md)|Additional migration-specific data for the target group. Contains mailNickname.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointGroupIdentityMapping",
  "baseType": "microsoft.graph.sharePointIdentityMapping",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
  "id": "String (identifier)",
  "sourceOrganizationId": "Guid",
  "groupType": "String",
  "sourceGroupIdentity": {
    "@odata.type": "microsoft.graph.identity"
  },
  "sourceGroupObjectId": "String",
  "targetGroupIdentity": {
    "@odata.type": "microsoft.graph.identity"
  },
  "targetGroupMigrationData": {
    "@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"
  }
}
```

