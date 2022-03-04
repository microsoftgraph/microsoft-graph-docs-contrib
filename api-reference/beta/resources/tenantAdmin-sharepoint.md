---
title: "sharepoint resource type"
description: "Entity that acts as a container for administrative resources to manage a tenant's sharepoint/onedrive settings."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# sharepoint resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that acts as a container for administrative resources to manage a tenant's sharepoint/onedrive settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[microsoft.graph.tenantAdmin.settings](../resources/tenantAdmin-settings.md)|Represents the organization settings for the SharePoint and OneDrive for Business workload.|

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

