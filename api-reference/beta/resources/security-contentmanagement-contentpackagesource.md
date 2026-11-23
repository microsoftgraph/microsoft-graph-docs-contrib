---
title: "contentPackageSource resource type"
description: "Contains publisher source information in the **source** property of a contentPackage resource."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentPackageSource resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains publisher source information in the **source** property of a [contentPackage](../resources/security-contentmanagement-contentpackage.md) or [installedPackage](../resources/security-contentmanagement-installedpackage.md) resource.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Source display name. Read-only.|
|kind|String|Publisher-defined source kind, such as `marketplace` or `community`. Read-only.|
|sourceId|String|Identifier assigned by the source. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.contentPackageSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentPackageSource",
  "kind": "String",
  "displayName": "String",
  "sourceId": "String"
}
```
