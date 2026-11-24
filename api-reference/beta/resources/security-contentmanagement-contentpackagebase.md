---
title: "contentPackageBase resource type"
description: "Represents the shared identity and publisher metadata of catalog and installed security content packages."
author: "SagiVaknin"
ms.date: 11/10/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentPackageBase resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the shared identity and publisher metadata of a security content package. This abstract type cannot be instantiated directly and has no endpoint or collection of its own.

The derived [contentPackage](../resources/security-contentmanagement-contentpackage.md) and [installedPackage](../resources/security-contentmanagement-installedpackage.md) types represent catalog packages and tenant installations, respectively. Their metadata describes the latest published version or the installed version. Nullable publisher metadata can be unavailable when it wasn't supplied or the installed version is no longer in the catalog.

Use the operations and query capabilities documented on each concrete type. The existing endpoints remain typed to those concrete resources; this inheritance doesn't introduce a type-cast URL, a required `@odata.type` request property, or a nested metadata object.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|author|[microsoft.graph.security.contentManagement.contentAuthor](../resources/security-contentmanagement-contentauthor.md)|Author information for the package version, when available. Read-only.|
|categories|[microsoft.graph.security.contentManagement.contentCategories](../resources/security-contentmanagement-contentcategories.md)|Publisher taxonomy for the package version, when available. Read-only.|
|contentProductId|String|ARM-facing product identifier of the package in Azure Marketplace and Azure Resource Manager, distinct from the version-stable **id**. Read-only.|
|description|String|Plain-text description of the package version, when supplied by the publisher. Read-only.|
|descriptionHtml|String|Publisher-authored description of the package version, including HTML markup, when available. Callers that render this field must sanitize it as untrusted markup. Read-only.|
|icon|String|Publisher-authored icon reference for the package version, when available. Read-only.|
|id|String|Stable identifier of the package across versions, shared by its catalog and installed representations. Inherited from [entity](../resources/entity.md). Read-only.|
|providers|String collection|Security providers associated with the package version, when available. Read-only.|
|publisherDisplayName|String|Display name of the publishing organization for the package version, when available. Read-only.|
|support|[microsoft.graph.security.contentManagement.contentSupport](../resources/security-contentmanagement-contentsupport.md)|Support contact and tier information for the package version, when available. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.contentPackageBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentPackageBase",
  "id": "String (identifier)",
  "contentProductId": "String",
  "description": "String",
  "descriptionHtml": "String",
  "icon": "String",
  "publisherDisplayName": "String",
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
  }
}
```
