---
title: "conditionalAccessClientApplications resource type"
description: "Represents client applications (service principals and workload identities) included in and excluded from the policy scope."
author: "bakerCaleb"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessClientApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents client applications (service principals and workload identities) included in and excluded from the policy scope.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeServicePrincipals|String collection|Service principal IDs excluded from the policy scope.|
|includeServicePrincipals|String collection|Service principal IDs included in the policy scope, or `ServicePrincipalsInMyTenant`. |
|servicePrincipalFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter that defines the dynamic-servicePrincipal-syntax rule to include/exclude service principals. A filter can use custom security attributes to include/exclude service principals. |

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
  "includeServicePrincipals": [
    "String"
  ],
  "excludeServicePrincipals": [
    "String"
  ],
  "servicePrincipalFilter": {"@odata.type": "microsoft.graph.conditionalAccessFilter"},
}
```

