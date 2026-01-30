---
title: "customBlockPage resource type"
description: "Custom block page settings define the end user experience when Global Secure Access blocks them from accessing a resource on the web."
author: "fgomulka"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 09/03/2025
---

# customBlockPage resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the end user message when Global Secure Access blocks end users from accessing a resource on the web.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/networkaccess-customblockpage-get.md)|[microsoft.graph.networkaccess.customBlockPage](../resources/networkaccess-customblockpage.md)|Get [microsoft.graph.networkaccess.customBlockPage](../resources/networkaccess-customblockpage.md) object.|
|[Update](../api/networkaccess-customblockpage-update.md)|[microsoft.graph.networkaccess.customBlockPage](../resources/networkaccess-customblockpage.md)|Update [microsoft.graph.networkaccess.customBlockPage](../resources/networkaccess-customblockpage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|When state is enabled, the custom block page is shown to end users who are blocked from accessing a resource on the web. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|configuration|[microsoft.graph.networkaccess.blockPageConfigurationBase](../resources/networkaccess-blockpageconfigurationbase.md)|The current configuration of the customized message. The body can be input in limited markdown language, supporting links via the format: `[link](https://example.com)`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.customBlockPage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.customBlockPage",
  "id": "String (identifier)",
  "state": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.networkaccess.blockPageConfigurationBase"
  }
}
```

