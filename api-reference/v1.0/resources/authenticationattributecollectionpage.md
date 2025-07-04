---
title: "authenticationAttributeCollectionPage resource type"
description: "Represents the attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationAttributeCollectionPage resource type

Namespace: microsoft.graph

Represents the attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|views|[authenticationAttributeCollectionPageViewConfiguration](../resources/authenticationattributecollectionpageviewconfiguration.md) collection|A collection of displays of the attribute collection page.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionPage",
  "views": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionPageViewConfiguration"
    }
  ]
}
```

