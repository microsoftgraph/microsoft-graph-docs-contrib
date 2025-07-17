---
title: "authenticationAttributeCollectionOptionConfiguration resource type"
description: "Represents the configuration of option values for certain input types on an attribute collection page that is part of a self-service user flow for external identities."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationAttributeCollectionOptionConfiguration resource type

Namespace: microsoft.graph

Represents the option values for certain input types, such as radio buttons, on an attribute collection page that is part of a self-service user flow for external identities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|label|String|The label of the option that will be displayed to user, unless overridden.|
|value|String|The value of the option that will be stored.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

