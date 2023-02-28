---
title: "ediscoveryExportFileMetadata resource type"
description: "Represents the meta data for ediscovery export."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryExportFileMetadata resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file meta data for export in ediscovery.

Inherits from [caseOperation](../resources/security-caseoperation.md).



## Properties
|Property|Type|Description|
|:---|:---|:---|
|fileName | String | Name of the file. |
|size| Int64 | Size of the file. |
|downloadUrl| String |URL to download the export. | 
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
  "fileName": "String",
  "size": "Integer",
  "downloadUrl": "String"
}
```

