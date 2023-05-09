---
title: "authenticationAttributeCollectionPageViewConfiguration resource type"
description: "Represents the view of the Attribute Collection page that is part of a self-service user flow for external identities"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationAttributeCollectionPageViewConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the display of the Attribute Collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the page|
|inputs|[authenticationAttributeCollectionInputConfiguration](../resources/authenticationattributecollectioninputconfiguration.md) collection|The display configuration of attributes being collected on the Attribute Collection page|
|title|String|The title of the page|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

