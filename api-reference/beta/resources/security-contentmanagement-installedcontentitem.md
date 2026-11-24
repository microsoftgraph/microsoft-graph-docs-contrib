---
title: "installedContentItem resource type"
description: "Represents a security content item installed in the calling tenant under an installed package."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# installedContentItem resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a security content item installed in the calling tenant. Its inherited **id** is the same customer-facing Content Hub `ContentId` used by the catalog [contentItem](../resources/security-contentmanagement-contentitem.md) resource and is globally unique across packages. Managed under its parent [installedPackage](../resources/security-contentmanagement-installedpackage.md) through caller-keyed `PATCH` upsert and `DELETE`.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List contents](../api/security-contentmanagement-installedpackage-list-contents.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|List the content items installed under an installedPackage.|
|[List installedPackageContents](../api/contentmanagementroot-list-installedpackagecontents.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|List installed content items across all installed packages.|
|[Get installedContentItem](../api/security-contentmanagement-installedcontentitem-get.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md)|Read the properties of an installedContentItem object under an installed package.|
|[Update installedContentItem](../api/security-contentmanagement-installedcontentitem-update.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md)|Install a content item or update an installed content item under an installed package (caller-keyed upsert).|
|[Delete installedContentItem](../api/contentmanagementroot-delete-installedpackagecontents.md)|None|Uninstall a single installedContentItem from an installed package.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentProductId|String|ARM-facing product identifier of the installed content item. Read-only. Supports `$filter` (`eq`, `ne`).|
|id|String|Customer-facing Content Hub identifier of the content item, matching the catalog [contentItem](../resources/security-contentmanagement-contentitem.md) **id** and globally unique across packages. Inherited from [entity](../resources/entity.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|installedDateTime|DateTimeOffset|Date and time when the tenant first installed this content item, in UTC. Preserved across content and package version upgrades; null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|kind|String|Content kind, such as `AnalyticsRule`, `Workbook`, or `HuntingQuery`. Open string defined by the publisher. Read-only. Supports `$filter` (`eq`, `ne`).|
|lastModifiedDateTime|DateTimeOffset|Date and time when this content installation last changed, in UTC. Null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|packageId|String|Owning package reference recorded on the installed content item payload (for example, the owning package's **contentProductId**). Note that the canonical `{packageId}` route key on `/security/contentManagement/installedPackages/{packageId}` is the parent [installedPackage](../resources/security-contentmanagement-installedpackage.md) resource's **id**. Read-only. Supports `$filter` (`eq`, `ne`).|
|packageVersion|String|Version of the owning package under which this content item is installed. Supports `$filter` (`eq`, `ne`).|
|version|String|Installed version of the content item. Supports `$filter` (`eq`, `ne`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.installedContentItem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.installedContentItem",
  "id": "String (identifier)",
  "contentProductId": "String",
  "kind": "String",
  "version": "String",
  "packageId": "String",
  "packageVersion": "String",
  "installedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
