---
title: "contentItem resource type"
description: "Represents a read-only security content item published in a catalog package at the version shipped in the package's latest version."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentItem resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a read-only security content item published in a catalog [contentPackage](../resources/security-contentmanagement-contentpackage.md) at the version shipped in the package's latest version. Its inherited **id** is the customer-facing Content Hub `ContentId`, which is globally unique across packages.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List contents](../api/security-contentmanagement-contentpackage-list-contents.md)|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|List the content items shipped by a published contentPackage.|
|[List packageContents](../api/contentmanagementroot-list-packagecontents.md)|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|List published content items across all catalog packages.|
|[Get contentItem](../api/security-contentmanagement-contentitem-get.md)|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md)|Read the properties and relationships of a contentItem object within a package.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentProductId|String|ARM-facing product identifier of the content item. Read-only. Supports `$filter` (`eq`, `ne`).|
|dependencies|[Json](../resources/json.md)|Publisher-defined content dependencies as JSON. Included on by-key reads and expanded package manifests; unavailable on catalog content collection reads even with `$select`. Read-only.|
|description|String|Description of the content item, when supplied by the publisher. Read-only.|
|displayName|String|Display name of the content item, when supplied by the publisher. Read-only. Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|id|String|Customer-facing Content Hub identifier of the content item, globally unique across packages. Inherited from [entity](../resources/entity.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|isDeprecated|Boolean|Indicates whether the owning package is deprecated. Read-only. Supports `$filter` (`eq`, `ne`).|
|kind|String|Content kind, such as `AnalyticsRule`, `Workbook`, or `HuntingQuery`. Open string defined by the publisher. Read-only. Supports `$filter` (`eq`, `ne`).|
|mainTemplate|[Json](../resources/json.md)|Publisher-defined deployment template as a direct JSON object. Included by default on by-key reads; unavailable on catalog content collection reads and expanded package manifests even with `$select`. Read-only.|
|packageId|String|Owning package reference carried on the underlying Content Hub payload (for example, the parent package's **contentProductId**). Note that the canonical `{packageId}` route key on `/security/contentManagement/packages/{packageId}` is the parent [contentPackage](../resources/security-contentmanagement-contentpackage.md) resource's **id**. Read-only. Supports `$filter` (`eq`, `ne`).|
|packageVersion|String|Version of the owning package in which this content item ships. Read-only. Supports `$filter` (`eq`, `ne`).|
|version|String|Version of the content item shipped in the owning package's latest version. Read-only. Supports `$filter` (`eq`, `ne`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.contentItem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentItem",
  "id": "String (identifier)",
  "contentProductId": "String",
  "kind": "String",
  "version": "String",
  "displayName": "String",
  "description": "String",
  "dependencies": {
    "@odata.type": "microsoft.graph.Json"
  },
  "mainTemplate": {
    "@odata.type": "microsoft.graph.Json"
  },
  "packageId": "String",
  "packageVersion": "String",
  "isDeprecated": "Boolean"
}
```
