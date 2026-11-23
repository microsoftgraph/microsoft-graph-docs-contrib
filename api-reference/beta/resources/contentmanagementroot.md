---
title: "contentManagementRoot resource type"
description: "Provides the entry point under `/security` for content repositories, the published security content catalog, and the tenant's installed content."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentManagementRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the entry point under `/security` for content repositories, the published security content catalog, and the tenant's installed content.


Inherits from [entity](../resources/entity.md).


## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List installedPackageContents](../api/contentmanagementroot-list-installedpackagecontents.md)|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|List installed content items across all installed packages.|
|[List installedPackages](../api/contentmanagementroot-list-installedpackages.md)|[microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md) collection|List the content packages installed in the tenant.|
|[List packageContents](../api/contentmanagementroot-list-packagecontents.md)|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|List published content items across all catalog packages.|
|[List packages](../api/contentmanagementroot-list-packages.md)|[microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md) collection|List content packages published in the catalog.|
|[List repositories](../api/contentmanagementroot-list-repositories.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) collection|Get the source-control repositories connected to the tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for this resource. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|installedPackageContents|[microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) collection|Installed content items listed across every installed package.|
|installedPackages|[microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md) collection|Content packages the tenant has installed, keyed the same way as **packages** so the same identity addresses the catalog entry and the tenant's installation of it.|
|packageContents|[microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) collection|Read-only content items published across packages for cross-package discovery.|
|packages|[microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md) collection|Content packages published in the catalog and available to install. Read-only.|
|repositories|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) collection|Connected source-control repositories that deliver security content as code.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentManagementRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentManagementRoot",
  "id": "String (identifier)"
}
```
