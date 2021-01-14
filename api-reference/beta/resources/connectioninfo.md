---
title: "connectionInfo resource type"
description: "The connectionInfo object holds the connection information which will be used by ELM to communicate with a resource."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# connectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connectionInfo object holds the resource locator which will be used by Entitlement Management (ELM) to communicate with a resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The endpoint that is used by ELM to communicate with the access package resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectionInfo",
  "url": "String"
}
```

