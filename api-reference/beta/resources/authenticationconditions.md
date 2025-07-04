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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The conditions on which an authenticationEventListener should trigger, for example, in a [user flow](authenticationeventsflow.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applications|[authenticationConditionsApplications](../resources/authenticationconditionsapplications.md)|Applications which will trigger a custom authentication extension.|

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

