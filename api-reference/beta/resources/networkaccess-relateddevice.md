---
title: "relatedDevice resource type"
description: "Represents a device involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedDevice resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|Unique identifier of the device involved in the alert. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedDevice",
  "deviceId": "String"
}
```
