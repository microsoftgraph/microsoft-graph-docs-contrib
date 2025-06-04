---
title: "engagementIdentitySet resource type"
description: "The Viva Engage Identities"
author: "aditijha"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents unique identities on Viva Engage.


Inherits from [identitySet](../resources/identityset.md).

This resource is an open type.

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.engagementIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementIdentitySet",
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "group": {
    "@odata.type": "microsoft.graph.identity"
  },
  "audience": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

