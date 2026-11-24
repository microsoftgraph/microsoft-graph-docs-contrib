---
title: "installedPackage resource type"
description: "Represents a security content package installed in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# installedPackage resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a security content package installed in the calling tenant. Keyed by the same stable package **id** as the catalog [contentPackage](../resources/security-contentmanagement-contentpackage.md) resource, and managed through caller-keyed `PATCH` upsert and `DELETE`.

Inherits from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Catalog and installed packages share publisher metadata through this base type, but retain separate endpoints and lifecycle behavior.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List installedPackages](../api/contentmanagementroot-list-installedpackages.md)|[microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md) collection|List the content packages installed in the tenant.|
|[Get installedPackage](../api/security-contentmanagement-installedpackage-get.md)|[microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md)|Read the properties and relationships of an installedPackage object.|
|[Update installedPackage](../api/security-contentmanagement-installedpackage-update.md)|[microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md)|Install a catalog package or update an installed package to a specified version (caller-keyed upsert).|
|[Delete installedPackage](../api/contentmanagementroot-delete-installedpackages.md)|None|Uninstall an installedPackage and its installed content items from the tenant.|
|[List contents](../api/security-contentmanagement-installedpackage-list-contents.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|List the content items installed under an installedPackage.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|author|[microsoft.graph.security.contentManagement.contentAuthor](../resources/security-contentmanagement-contentauthor.md)|Author information for the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|categories|[microsoft.graph.security.contentManagement.contentCategories](../resources/security-contentmanagement-contentcategories.md)|Publisher taxonomy for the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|contentProductId|String|ARM-facing product identifier of the installed package, distinct from its stable Graph **id**. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|dependencies|[Json](../resources/json.md)|Publisher-defined prerequisites for the installed catalog version as JSON, when available. Read-only.|
|description|String|Plain-text description of the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|descriptionHtml|String|Publisher-authored markup description of the installed catalog version, when available. Callers that render this field must sanitize it as untrusted markup. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|displayName|String|Display name of the installed catalog version. Null when catalog metadata for that version is no longer available. Read-only.|
|icon|String|Publisher-authored icon reference for the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|id|String|Stable identifier of the package, matching the catalog [contentPackage](../resources/security-contentmanagement-contentpackage.md) **id**. Inherited from [entity](../resources/entity.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|installedDateTime|DateTimeOffset|Date and time when the tenant first installed this package, in UTC. Preserved across package upgrades; null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|Date and time when this installation last changed, in UTC. Null when unknown. Read-only. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|mainTemplate|[Json](../resources/json.md)|Publisher-defined deployment template for the installed package version as a direct JSON object. Returned on collection reads only when explicitly requested via `$select=mainTemplate` or `$select=*,mainTemplate`; unavailable on by-key reads even with `$select`. Read-only.|
|providers|String collection|Security providers associated with the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|publisherDisplayName|String|Display name of the publishing organization, when catalog metadata is available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|source|[microsoft.graph.security.contentManagement.contentPackageSource](../resources/security-contentmanagement-contentpackagesource.md)|Publisher source information for the installed catalog version, when available. Read-only.|
|support|[microsoft.graph.security.contentManagement.contentSupport](../resources/security-contentmanagement-contentsupport.md)|Support contact and tier information for the installed catalog version, when available. Inherited from [contentPackageBase](../resources/security-contentmanagement-contentpackagebase.md). Read-only.|
|version|String|Version of the package installed in the tenant. Supports `$filter` (`eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|contents|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|Content items installed in the tenant under this package. Supports `$expand` on collection reads.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.installedPackage",
  "baseType": "microsoft.graph.security.contentManagement.contentPackageBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.installedPackage",
  "id": "String (identifier)",
  "contentProductId": "String",
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
  "dependencies": {
    "@odata.type": "microsoft.graph.Json"
  },
  "providers": [
    "String"
  ],
  "categories": {
    "@odata.type": "microsoft.graph.security.contentManagement.contentCategories"
  },
  "installedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "mainTemplate": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
