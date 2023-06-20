--- 
title: "communicationsUserIdentity resource type"
description: "Represents the identity of a user."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a user present in [Azure Active Directory](/azure/active-directory/) who is participating in a communication; for example, as a caller in an audio-video call.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The user's object ID. |
| displayName | String | Inherited from **identity**. The display name associated with the user. |
| tenantId | String | The user's tenant ID. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsUserIdentity",
  "optionalProperties": [
    "displayName",
    "tenantId"
  ],
} -->
```json
{
  "id": "String",
  "displayName": "String",
  "tenantId": "String"
}
```
