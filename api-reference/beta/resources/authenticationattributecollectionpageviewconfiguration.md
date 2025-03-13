---
title: "authenticationAttributeCollectionPageViewConfiguration resource type"
description: "Represents the view of the attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# authenticationAttributeCollectionPageViewConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the display of the attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the page.|
|inputs|[authenticationAttributeCollectionInputConfiguration](../resources/authenticationattributecollectioninputconfiguration.md) collection|The display configuration of attributes being collected on the attribute collection page. You must specify all attributes that you want to retain, otherwise they're removed from the user flow.|
|title|String|The title of the attribute collection page.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPageViewConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionPageViewConfiguration",
  "title": "String",
  "description": "String",
  "inputs": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionInputConfiguration"
    }
  ]
}
```

