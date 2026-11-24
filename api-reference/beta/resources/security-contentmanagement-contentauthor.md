---
title: "contentAuthor resource type"
description: "Contains author information in the **author** property of a contentPackage resource."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentAuthor resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains author information in the **author** property of a [contentPackage](../resources/security-contentmanagement-contentpackage.md) or [installedPackage](../resources/security-contentmanagement-installedpackage.md) resource.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Author display name. Read-only. Supports `$filter` (`eq`, `ne`).|
|email|String|Author email address. Read-only.|
|link|String|Link to author information. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.contentAuthor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentAuthor",
  "displayName": "String",
  "email": "String",
  "link": "String"
}
```
