--- 
title: "communicationsEncryptedIdentity resource type"
description: "Represents the identity of a user whose underlying identity isn't available to the application due to privacy restrictions."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsEncryptedIdentity resource type

Namespace: microsoft.graph

Represents the identity of a user whose underlying identity isn't available to the application due to privacy restrictions. For example, in a group call, participants other than the one who invited a Skype consumer user don't have access to the identity of that user in the call roster.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                     |
| :----------------------------- | :---------------------------| :-------------------------------|
| displayName | String | The display name associated with the user. Inherited from **identity**. |
| id | String | The user's encrypted identifier. Inherited from **identity**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsEncryptedIdentity",
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
