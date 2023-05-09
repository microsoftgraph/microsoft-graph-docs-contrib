---
title: "authenticationAttributeCollectionPage resource type"
description: "Represents the Attribute Collection page that is part of a self-service user flow for external identities"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationAttributeCollectionPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Attribute Collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customStringsFileId|String|**TODO: Add Description**|
|views|[authenticationAttributeCollectionPageViewConfiguration](../resources/authenticationattributecollectionpageviewconfiguration.md) collection|A collection of displays of the Attribute Collection page.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionPage",
  "customStringsFileId": "String",
  "views": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionPageViewConfiguration"
    }
  ]
}
```

