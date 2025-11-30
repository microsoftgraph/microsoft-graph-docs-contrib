---
title: "sharePointRoot resource type"
description: "Represents the root container for SharePoint resources and services in Microsoft Graph."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint root
---

# sharePointRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root container for SharePoint resources and services in Microsoft Graph. This resource provides access to SharePoint migration operations and other SharePoint-related functionality.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **sharePointRoot** resource. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|migrations|[sharePointMigrationsRoot](../resources/sharepointmigrationsroot.md)|The migration operations for cross-organization SharePoint migrations.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointRoot",
  "id": "String (identifier)"
}
```

