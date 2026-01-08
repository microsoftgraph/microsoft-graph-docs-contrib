---
title: "relatedFileHash resource type"
description: "Represents a file hash involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedFileHash resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file hash involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|algorithm|microsoft.graph.networkaccess.algorithm|The algorithm used to calculate the file hash. Required. The possible values are: `md5`, `sha1`, `sha256`, `sha256ac`, `unknownFutureValue`.|
|value|String|The hash value. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedFileHash"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedFileHash",
  "algorithm": "String",
  "value": "String"
}
```
