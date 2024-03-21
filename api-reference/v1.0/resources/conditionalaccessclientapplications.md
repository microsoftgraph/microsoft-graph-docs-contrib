---
title: "conditionalAccessClientApplications resource type"
description: "Represents client applications (service principals and workload identities) included in and excluded from the policy scope."
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
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
The following is a JSON representation of the resource.
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

