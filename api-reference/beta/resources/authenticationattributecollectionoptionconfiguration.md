---
title: "authenticationAttributeCollectionOptionConfiguration resource type"
description: "Represents the configuration of option values for certain input types on an attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationAttributeCollectionOptionConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the option values for certain input types, such as radio buttons, on an attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|label|String|The label of the option that will be displayed to user, unless overridden.|
|value|String|The value of the option that will be stored.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionOptionConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionOptionConfiguration",
  "label": "String",
  "value": "String"
}
```

