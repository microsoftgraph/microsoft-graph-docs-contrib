---
title: "onAttributeCollectionHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when attributes are ready to be collected from the user."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke if the onAttributeCollectionHandler event resolves to this listener. Represents a step in a multi-event policy that defines what happens when when attributes are ready to be collected from the user.

This is an abstract complex type from which the [onAttributeCollectionExternalUsersSelfServiceSignUp](../resources/onattributecollectionexternalusersselfservicesignup.md) subtype is derived.

## Properties

None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionHandler"
}
```

