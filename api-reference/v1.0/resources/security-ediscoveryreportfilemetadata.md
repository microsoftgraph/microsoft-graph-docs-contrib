---
title: "reportFileMetadata resource type"
description: "Represents the file metadata of a job report in eDiscovery."
author: "Kylefk"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/25/2025
---

# reportFileMetadata resource type

Namespace: microsoft.graph.security

Represents the file metadata of a job report in eDiscovery.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|downloadUrl| String |The URL to download the report. |
|fileName | String | The name of the file. |
|size| Int64 | The size of the file. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.reportFileMetadata",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.reportFileMetadata",
  "downloadUrl": "String",
  "fileName": "String",
  "size": "Int64"
}
```
