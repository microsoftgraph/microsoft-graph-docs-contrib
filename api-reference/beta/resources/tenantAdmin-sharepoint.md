---
title: "sharepoint resource type"
description: "Represents a container for administrative resources to manage tenant-level settings for SharePoint and OneDrive for Business."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# sharepoint resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for administrative resources to manage tenant-level settings for SharePoint and OneDrive for Business.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[microsoft.graph.tenantAdmin.settings](../resources/tenantadmin-settings.md)|Represents the tenant-level settings for SharePoint and OneDrive for Business.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAdmin.sharepoint",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAdmin.sharepoint",
  "id": "String (identifier)"
}
```

