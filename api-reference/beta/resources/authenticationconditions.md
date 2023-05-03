---
title: "authenticationConditions resource type"
description: "The conditions on which an authenticationEventListener should trigger."
author: soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationConditions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The conditions on which an authenticationEventListener should trigger.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applications|[authenticationConditionsApplications](../resources/authenticationconditionsapplications.md)|Applications which will trigger an authentication custom extension.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationConditions",
  "applications": {
    "@odata.type": "microsoft.graph.authenticationConditionsApplications"
  }
}
```

