---
title: "conditionalAccessClientApplications resource type"
description: "Represents client applications (service principals and workload identities) included in and excluded from the policy scope."
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessClientApplications resource type

Namespace: microsoft.graph

Represents client applications (service principals and workload identities) included in and excluded from the policy scope.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeServicePrincipals|String collection|Service principal IDs excluded from the policy scope.|
|includeServicePrincipals|String collection|Service principal IDs included in the policy scope, or `ServicePrincipalsInMyTenant`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessClientApplications"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessClientApplications",
  "excludeServicePrincipals": [
    "String"
  ],
  "includeServicePrincipals": [
    "String"
  ]
}
```

