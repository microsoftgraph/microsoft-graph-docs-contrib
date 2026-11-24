---
title: "contentPackage resource type"
description: "Represents a content package published in the security content catalog at its latest published version."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentPackage resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a content package published in the security content catalog at its latest published version. Catalog packages are read-only publisher state; tenants manage installations through [installedPackage](../resources/security-contentmanagement-installedpackage.md).

Inherits from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Catalog and installed packages share publisher metadata through this base type, but retain separate endpoints and lifecycle behavior.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List packages](../api/contentmanagementroot-list-packages.md)|[microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md) collection|List content packages published in the catalog.|
|[Get contentPackage](../api/security-contentmanagement-contentpackage-get.md)|[microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md)|Read the properties and relationships of a contentPackage object.|
|[List contents](../api/security-contentmanagement-contentpackage-list-contents.md)|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|List the content items shipped by a published contentPackage.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|author|[microsoft.graph.security.contentManagement.contentAuthor](../resources/security-contentmanagement-contentauthor.md)|The package author. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`eq`, `ne`) on `author/displayName`.|
|categories|[microsoft.graph.security.contentManagement.contentCategories](../resources/security-contentmanagement-contentcategories.md)|Publisher taxonomy for the package. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`any`) on `categories/domains` and `categories/verticals`.|
|contentProductId|String|ARM-facing product identifier of the package in Azure Marketplace and Azure Resource Manager, distinct from the version-stable **id**. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|dependencies|[Json](../resources/json.md)|Publisher-defined package prerequisites and bill-of-materials criteria as JSON. Returned on by-key reads; unavailable on collection reads even with `$select`. Read-only.|
|description|String|Plain-text description of the latest version, when supplied by the publisher. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|descriptionHtml|String|Publisher-authored description of the latest version, including HTML markup. Callers that render this field must sanitize it as untrusted markup. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|displayName|String|Display name of the latest version of the package. Read-only. Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|firstPublishDateTime|DateTimeOffset|Date and time when the package was first published, in UTC. Null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|icon|String|Publisher-authored icon reference for the package, when declared. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|id|String|Stable identifier of the package across versions. Inherited from [entity](../resources/entity.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|isDeprecated|Boolean|Indicates whether the package is deprecated in this catalog generation. Read-only. Supports `$filter` (`eq`, `ne`).|
|isFeatured|Boolean|Indicates whether the package is editorially promoted by the publisher. Read-only. Supports `$filter` (`eq`, `ne`).|
|isNew|Boolean|Indicates whether the package is marked as new by the publisher. Read-only. Supports `$filter` (`eq`, `ne`).|
|isPreview|Boolean|Indicates whether the latest version is a prerelease, as declared by the publisher. Read-only. Supports `$filter` (`eq`, `ne`).|
|kind|String|Package kind, such as `Solution` or `Standalone`. Open string defined by the publisher; null when no kind is declared. Read-only. Supports `$filter` (`eq`, `ne`).|
|lastPublishDateTime|DateTimeOffset|Date and time when the package was last published, in UTC. Null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|mainTemplate|[Json](../resources/json.md)|Publisher-defined deployment template as a direct JSON object. Included by default on by-key reads; unavailable on collection reads even with `$select`. Read-only.|
|migratedToPackageId|String|Publisher-supplied identifier of the package that this package migrated to, when applicable. Read-only.|
|providers|String collection|Security providers for which the package delivers content. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`any`).|
|publisherDisplayName|String|Display name of the publishing organization. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|source|[microsoft.graph.security.contentManagement.contentPackageSource](../resources/security-contentmanagement-contentpackagesource.md)|Publisher source information. Returned on by-key reads; unavailable on collection reads even with `$select`. Read-only.|
|support|[microsoft.graph.security.contentManagement.contentSupport](../resources/security-contentmanagement-contentsupport.md)|Support contact and tier information for the package. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`eq`, `ne`) on `support/tier` and `support/displayName`.|
|version|String|Latest version of the package in the committed catalog generation. Read-only. Supports `$filter` (`eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|contents|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|Content items shipped by the latest version of the package. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.contentPackage",
  "baseType": "microsoft.graph.security.contentManagement.contentPackageBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentPackage",
  "id": "String (identifier)",
  "contentProductId": "String",
  "kind": "String",
  "version": "String",
  "displayName": "String",
  "description": "String",
  "descriptionHtml": "String",
  "icon": "String",
  "publisherDisplayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.security.contentManagement.contentPackageSource"
  },
  "author": {
    "@odata.type": "microsoft.graph.security.contentManagement.contentAuthor"
  },
  "support": {
    "@odata.type": "microsoft.graph.security.contentManagement.contentSupport"
  },
  "providers": [
    "String"
  ],
  "categories": {
    "@odata.type": "microsoft.graph.security.contentManagement.contentCategories"
  },
  "firstPublishDateTime": "String (timestamp)",
  "lastPublishDateTime": "String (timestamp)",
  "isDeprecated": "Boolean",
  "dependencies": {
    "@odata.type": "microsoft.graph.Json"
  },
  "migratedToPackageId": "String",
  "isFeatured": "Boolean",
  "isPreview": "Boolean",
  "isNew": "Boolean",
  "mainTemplate": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
