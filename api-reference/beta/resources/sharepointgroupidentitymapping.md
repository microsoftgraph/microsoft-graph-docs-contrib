---
title: "sharePointGroupIdentityMapping resource type"
description: "Represents a cross-organization identity mapping for a group during a tenant-to-tenant (cross-tenant) migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint group identity mapping
---

# sharePointGroupIdentityMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cross-organization identity mapping for a group during a tenant-to-tenant (cross-tenant) migration. This resource defines the relationship between a source group in the originating organization and its corresponding target group in the destination organization. It includes source and target group identities, migration metadata, and group type information.

Inherits from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/sharepointgroupidentitymapping-get.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Retrieve a specific cross-organization [group identity mapping](../resources/sharepointgroupidentitymapping.md) based on the Microsoft Entra ID object ID of the source group.|
|[Update](../api/sharepointgroupidentitymapping-update.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Perform delta patch operations on [group identity mappings](../resources/sharepointgroupidentitymapping.md) for cross-organization migration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deleted|[deleted](../resources/deleted.md)|Indicate that an identity mapping has been successfully deleted. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|groupType|sharePointIdentityMappingGroupType|Indicates the type of group. The possible values are: `none`, `regularGroup`, `m365Group`, `unknownFutureValue`.|
|id|String|Unique identifier for the group identity mapping. Base64-encoded String. Generated automatically. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|sourceGroupIdentity|[identity](../resources/identity.md)|The identity information of the source group in the originating organization. Contains the ID of the source group.|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|targetGroupIdentity|[identity](../resources/identity.md)|The identity information of the target group in the destination organization. Contains the ID of the target group.|
|targetGroupMigrationData|[sharePointIdentityMappingGroupMigrationData](../resources/sharepointidentitymappinggroupmigrationdata.md)|Additional migration-specific data for the target group.|

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
  "groupType": "String",
  "id": "String (identifier)",
  "deleted": {"@odata.type": "microsoft.graph.deleted"},
  "sourceGroupIdentity": {"@odata.type": "microsoft.graph.identity"},
  "sourceOrganizationId": "Guid",
  "targetGroupIdentity": {"@odata.type": "microsoft.graph.identity"},
  "targetGroupMigrationData": {"@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"}
}
```

