--- 
title: "communicationsUserIdentity resource type"
description: "Represents the identity of a user present in Microsoft Entra ID who participates in a communication."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a user present in [Microsoft Entra ID](/azure/active-directory/) who participates in a communication; for example, as a caller in an audio-video call.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description        |
| :----------------------------- | :---------------------------| :------------------|
| displayName | String | The display name associated with the user. Inherited from **identity**. |
| id | String | The user's object ID. Inherited from **identity**. |
| tenantId | String | The user's tenant ID. |

## JSON representation

The following JSON representation shows the resource type.

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
  "displayName": "String",
  "id": "String",
  "tenantId": "String"
}
```
