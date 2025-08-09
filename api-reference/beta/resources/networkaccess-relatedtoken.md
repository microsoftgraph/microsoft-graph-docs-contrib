---
title: "relatedToken resource type"
description: "Represents a token involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedToken resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a token involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|uniqueTokenIdentifier|String|Unique identifier of the token. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedToken"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedToken",
  "uniqueTokenIdentifier": "String"
}
```
