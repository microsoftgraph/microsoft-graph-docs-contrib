---
title: "policyScopeBase complex type"
toc.title: "policyScopeBase complex type (preview)"
description: "Abstract base type defining the scope of applicability for a data governance policy, including locations, activities, and execution mode."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyScopeBase complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type defining the scope of applicability for a data governance policy, including locations, activities, and execution mode. It defines the locations (e.g., domains, URLs), activities (e.g., uploads, downloads), execution behavior, and resulting actions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.userActivityTypes](../resources/useractivitytypes.md)|The user activities to be protected (e.g., `uploadText`, `downloadFile`). Required.|
|executionMode|[microsoft.graph.executionMode](../resources/executionmode.md)|Specifies how the policy should be executed (inline evaluation or offline evaluation). Required.|
|locations|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|The locations (like domains or URLs) to be protected. Required.|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|The enforcement actions to take if the policy conditions are met within this scope. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.policyScopeBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyScopeBase",
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
