--- 
title: "communicationsGuestIdentity resource type"
description: "Represents the identity of a participant who joined a communication without authentication."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsGuestIdentity resource type

Namespace: microsoft.graph

Represents the identity of a participant who joined a communication without authentication.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description           |
| :----------------------------- | :---------------------------| :---------------------|
| displayName | String | The display name associated with the guest user. Inherited from **identity**. |
| id | String | The unique identifier for the guest user. Inherited from **identity**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsGuestIdentity",
  "optionalProperties": [
    "displayName"
  ],
} -->
```json
{
  "displayName": "String",
  "id": "String (identifier)"
}
```
