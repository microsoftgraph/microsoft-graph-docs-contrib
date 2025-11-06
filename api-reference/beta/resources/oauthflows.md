---
title: "oAuthFlows resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# oAuthFlows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationCode|[oAuthFlow](../resources/oauthflow.md)|**TODO: Add Description**|
|clientCredentials|[oAuthFlow](../resources/oauthflow.md)|**TODO: Add Description**|
|implicit|[oAuthFlow](../resources/oauthflow.md)|**TODO: Add Description**|
|password|[oAuthFlow](../resources/oauthflow.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuthFlows"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuthFlows",
  "implicit": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "password": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "clientCredentials": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  },
  "authorizationCode": {
    "@odata.type": "microsoft.graph.oAuthFlow"
  }
}
```

