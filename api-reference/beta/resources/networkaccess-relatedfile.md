---
title: "relatedFile resource type"
description: "Represents a file involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedFile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|directory|String|Directory path of the file. Required.|
|name|String|Name of the file. Required.|
|sizeInBytes|Int64|Size of the file in bytes. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedFile",
  "name": "String",
  "directory": "String",
  "sizeInBytes": "Integer"
}
```
