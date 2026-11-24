---
title: "contentSupport resource type"
description: "Contains support contact and tier information in the **support** property of a contentPackage resource."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentSupport resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains support contact and tier information in the **support** property of a [contentPackage](../resources/security-contentmanagement-contentpackage.md) or [installedPackage](../resources/security-contentmanagement-installedpackage.md) resource. Supports `$filter` (`eq`, `ne`) on **displayName** and **tier** for catalog packages.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Supporting organization or contact display name. Read-only. Supports `$filter` (`eq`, `ne`).|
|email|String|Support email address. Read-only.|
|link|String|Link to support information. Read-only.|
|tier|String|Publisher-defined support tier, such as `microsoft`, `partner`, or `community`. Read-only. Supports `$filter` (`eq`, `ne`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.contentSupport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentSupport",
  "displayName": "String",
  "email": "String",
  "tier": "String",
  "link": "String"
}
```
