---
title: "relatedThreatIntelligence resource type"
description: "Represents threat intelligence information related to a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedThreatIntelligence resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat intelligence information related to a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|threatCount|Int64|Number of threats detected by threat intelligence. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedThreatIntelligence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedThreatIntelligence",
  "threatCount": "Integer"
}
```
