---
title: "sharePointIdentityMappingGroupMigrationData resource type"
description: "Contains additional migration-related data for a group identity mapping in a cross-organization (tenant-to-tenant) migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointIdentityMappingGroupMigrationData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains additional migration-related data for a group identity mapping in a cross-organization (tenant-to-tenant) migration.
This complex type includes properties such as the group's target mail nickname or other attributes used to configure the target group in the destination organization.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|mailNickname|String|The email alias (mail nickname) for the target group in the destination organization.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointIdentityMappingGroupMigrationData",
  "mailNickname": "String"
}
```

