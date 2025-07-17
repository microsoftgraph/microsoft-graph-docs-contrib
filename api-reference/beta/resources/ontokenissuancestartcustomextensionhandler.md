---
title: "onTokenIssuanceStartCustomExtensionHandler resource type"
description: "Custom extension handler for the event when a token is about to be issued to your application."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onTokenIssuanceStartCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom extension handler for the event when a token is about to be issued to your application.

Inherits from [onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md)|The custom extension to invoke to handle the event when a token is about to be issued to your application.|

## JSON representation
The following JSON representation shows the resource type.
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

