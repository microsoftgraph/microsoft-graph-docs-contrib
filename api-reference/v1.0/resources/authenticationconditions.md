---
title: "authenticationConditions resource type"
description: "The conditions on which an authenticationEventListener should trigger."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationConditions resource type

Namespace: microsoft.graph

The conditions on which an authenticationEventListener should trigger.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applications|[authenticationConditionsApplications](../resources/authenticationconditionsapplications.md)|Applications which trigger a custom authentication extension.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

