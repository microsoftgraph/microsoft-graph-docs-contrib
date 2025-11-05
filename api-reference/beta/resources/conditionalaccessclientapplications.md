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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents client applications (service principals and workload identities) included in and excluded from the policy scope.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentIdServicePrincipalFilter|[conditionalAccessFilter](../resources/conditionalaccessfilter.md)| Filter that defines rules based on custom security attribute tags to include/exclude agent identities in the policy.|
|excludeAgentIdServicePrincipals|String collection| Agent identity object IDs excluded from the policy.|
|excludeServicePrincipals|String collection|Service principal IDs excluded from the policy scope.|
|includeAgentIdServicePrincipals|String collection|Agent identity object IDs included in the policy.|
|includeServicePrincipals|String collection|Service principal IDs included in the policy scope or `ServicePrincipalsInMyTenant`. |
|servicePrincipalFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter that defines the dynamic-servicePrincipal-syntax rule to include/exclude service principals. A filter can use custom security attributes to include/exclude service principals. |

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
    "includeServicePrincipals": [
        "String"
    ],
    "excludeServicePrincipals": [
        "String"
    ],
    "servicePrincipalFilter": {
        "@odata.type": "microsoft.graph.conditionalAccessFilter"
    },
    "includeAgentIdServicePrincipals": [
        "String"
    ],
    "excludeAgentIdServicePrincipals": [
        "String"
    ],
    "agentIdServicePrincipalFilter": {
        "@odata.type": "microsoft.graph.conditionalAccessFilter"
    }
}
```

