---
title: "adminDynamics resource type"
description: "Company-wide configuration for Microsoft Dynamics 365"
author: "zadinsmo"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# adminDynamics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide configuration for Microsoft Dynamics 365.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/admindynamics-get.md)|[adminDynamics](../resources/admindynamics.md)|Read the properties and relationships of a [adminDynamics](../resources/admindynamics.md) object.|
|[Update](../api/admindynamics-update.md)|[adminDynamics](../resources/admindynamics.md)|Update the properties and relationships of a [adminDynamics](../resources/admindynamics.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customerVoice|[customerVoiceSettings](../resources/customervoicesettings.md)|Company-wide settings for Microsoft Dynamics 365 Customer Voice.|
|id|String|Unique ID. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminDynamics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminDynamics",
  "id": "String (identifier)",
  "customerVoice": {
    "@odata.type": "customerVoiceSettings"
  }
}
```

