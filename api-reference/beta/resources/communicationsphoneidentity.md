--- 
title: "communicationsPhoneIdentity resource type"
description: "Represents the identity of a participant who joined the communication via phone."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsPhoneIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant who joined the communication via phone.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The user's E.164 telephone number. |
| displayName | String | Inherited from **identity**. The display name associated with the phone number. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsPhoneIdentity",
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
