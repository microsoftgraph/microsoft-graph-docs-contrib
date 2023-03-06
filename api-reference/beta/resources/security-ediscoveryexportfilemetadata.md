---
title: "ediscoveryExportFileMetadata resource type"
description: "Represents the file metadata for an export in eDiscovery."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryExportFileMetadata resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file metadata for an export in eDiscovery.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|downloadUrl| String |The URL to download the export. |
|fileName | String | The name of the file. |
|size| Int64 | The size of the file. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryExportFileMetadata",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryExportFileMetadata",
  "downloadUrl": "String",
  "fileName": "String",
  "size": "Int64"
}
```
