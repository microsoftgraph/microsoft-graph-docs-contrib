---
title: "sharePointIdentityMappingUserMigrationData resource type"
description: "Contains additional migration-related data for a user identity mapping in a cross-organization (tenant-to-tenant) migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint identity mapping user migration data
---

# sharePointIdentityMappingUserMigrationData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains additional migration-related data for a user identity mapping in a cross-organization (tenant-to-tenant) migration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|email|String|The target email address for the user in the destination organization.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointIdentityMappingUserMigrationData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointIdentityMappingUserMigrationData",
  "email": "String"
}
```

