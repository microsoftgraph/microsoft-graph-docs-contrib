--- 
title: "communicationsEncryptedIdentity resource type"
description: "Represents the identity of a user whose underlying identity is not available to the application due to privacy restrictions."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsEncryptedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a user whose underlying identity is not available to the application due to privacy restrictions. For example, in a group call, participants other than the one who invited a Skype Consumer user will not have access to the identity of that user in the call roster.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The user's encrypted identifier. |
| displayName | String | Inherited from **identity**. The display name associated with the user. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsEncryptedIdentity",
  "optionalProperties": [
    "displayName"
  ],
} -->
```json
{
  "id": "String",
  "displayName": "String"
}
```
