---
title: "request resource type"
description: "Represents a base request model"
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# request resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base request model. Entitlement Management (ELM), Privileged Identity Management (PIM), and Admin Consent Requests are derived models for this request. **request** also contains a link to the navigation properties associated with approvals. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of a request. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|Used to obtain approval. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.request",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.request",
  "id": "String (identifier)"
}
```

