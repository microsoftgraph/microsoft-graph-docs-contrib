--- 
title: "communicationsApplicationIdentity resource type"
description: "Represents the identity of an application."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsApplicationIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of an application. Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The application's client ID from Azure Active Directory. |
| displayName | String | Inherited from **identity**. The display name associated with the application. |
| applicationType | String | First party Microsoft application presenting this **identity**. |
| hidden | Boolean | True if the participant would not like to be shown in other participants' rosters. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsApplicationIdentity",
  "optionalProperties": [
    "displayName",
    "applicationType",
    "hidden"
  ],
} -->
```json
{
  "id": "String",
  "displayName": "String",
  "applicationType": "String",
  "hidden": false
}
```