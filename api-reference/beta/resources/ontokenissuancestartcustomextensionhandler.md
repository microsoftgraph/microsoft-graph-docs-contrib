---
title: "onTokenIssuanceStartCustomExtensionHandler resource type"
description: "Custom extension handler for an onTokenIssuanceStart event"
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onTokenIssuanceStartCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom extension handler for an onTokenIssuanceStart event.

Inherits from [onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md)|The custom extension to invoke when handling an onTokenIssuanceStart event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onTokenIssuanceStartCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler"
}
```

