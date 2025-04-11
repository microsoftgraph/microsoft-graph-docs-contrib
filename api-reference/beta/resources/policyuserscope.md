---
title: "policyUserScope complex type"
description: "Defines the scope of a data governance policy as it applies to a specific user."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyUserScope complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the effective scope of data governance policies for a specific user within an integrated application context. It details the protected locations, activities, execution mode, and actions applicable to that user.

Inherits from [microsoft.graph.policyScopeBase](../resources/policyscopebase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.userActivityTypes](../resources/useractivitytypes.md)|User activities protected for this user. Inherited from `policyScopeBase`. Required.|
|executionMode|[microsoft.graph.executionMode](../resources/executionmode.md)|Policy execution mode for this user. Inherited from `policyScopeBase`. Required.|
|locations|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|Locations protected for this user. Inherited from `policyScopeBase`. Required.|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|Enforcement actions applicable to this user. Inherited from `policyScopeBase`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.policyScopeBase",
  "@odata.type": "microsoft.graph.policyUserScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyUserScope",
  "activities": "String",
  "executionMode": "String",
  "locations": [
    {
      "@odata.type": "microsoft.graph.policyLocation"
    }
  ],
  "policyActions": [
    {
      "@odata.type": "microsoft.graph.dlpActionInfo"
    }
  ]
}
```
