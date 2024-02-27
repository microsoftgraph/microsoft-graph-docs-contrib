--- 
title: "communicationsGuestIdentity resource type"
description: "Represents the identity of a participant who joined the communication without authentication."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsGuestIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant who joined the communication without authentication.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description         |
| :----------------------------- | :---------------------------| :-------------------|
| displayName | String | The display name associated with the guest user. Inherited from **identity**. |
| email | String | The email of the guest user. |
| id | String | The unique identifier for the guest user. Inherited from **identity**.  |

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
  "email": "String",
  "id": "String (identifier)"
}
```
