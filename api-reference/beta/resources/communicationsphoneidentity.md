--- 
title: "communicationsPhoneIdentity resource type"
description: "Represents the identity of a participant who joined the communication via phone."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsPhoneIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant who joined the communication via phone.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description    |
| :----------------------------- | :---------------------------| :--------------|
| displayName | String | The display name associated with the phone number. Inherited from **identity**. |
| id | String | The user's E.164 telephone number. Inherited from **identity**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsPhoneIdentity",
  "optionalProperties": [
    "displayName"
  ],
} -->
```json
{
  "displayName": "String",
  "id": "String"
}
```
