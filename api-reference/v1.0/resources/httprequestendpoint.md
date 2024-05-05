---
title: "httpRequestEndpoint resource type"
description: "The HTTP endpoint that a custom extension calls."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# httpRequestEndpoint resource type

Namespace: microsoft.graph

The HTTP endpoint that a custom extension calls.

Inherits from [customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetUrl|String|The HTTP endpoint that a custom extension calls.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.httpRequestEndpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.httpRequestEndpoint",
  "targetUrl": "String"
}
```

