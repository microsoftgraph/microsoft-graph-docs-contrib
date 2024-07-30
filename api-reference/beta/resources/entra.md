---
title: "entra resource type"
description: "Entra resource type"
author: "skashyap7"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# entra resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entra resource relating to access to Microsoft Entra Settings.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List uxSetting](../api/entra-list-uxsetting.md)|[uxSetting](../resources/uxsetting.md) collection|Get the uxSetting resources from the uxSetting navigation property.|
|[Create uxSetting](../api/entra-post-uxsetting.md)|[uxSetting](../resources/uxsetting.md)|Create a new uxSetting object.|

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|uxSetting|[uxSetting](../resources/uxsetting.md)|Represents settings relating to access to the Microsoft Entra admin center.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entra",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entra",
  "id": "String (identifier)"
}
```

