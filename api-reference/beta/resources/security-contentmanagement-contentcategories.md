---
title: "contentCategories resource type"
description: "Contains security domain and industry vertical taxonomy in the **categories** property of a contentPackage resource."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentCategories resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains security domain and industry vertical taxonomy in the **categories** property of a [contentPackage](../resources/security-contentmanagement-contentpackage.md) or [installedPackage](../resources/security-contentmanagement-installedpackage.md) resource.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domains|String collection|Security domains associated with the package. Read-only. Supports `$filter` (`any`).|
|verticals|String collection|Industry verticals associated with the package. Read-only. Supports `$filter` (`any`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.contentCategories"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentCategories",
  "domains": [
    "String"
  ],
  "verticals": [
    "String"
  ]
}
```
