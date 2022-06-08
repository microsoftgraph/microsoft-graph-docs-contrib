--- 
title: "endpointType resource type"
description: "Represents the type of endpoint being used by a participant of a communication."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# endpointType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type of endpoint being used by a participant of a communication.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The object ID of the resource account user in Azure Active Directory. |
| displayName | String | Inherited from **identity**. The display name associated with the resource account. |
| tenantId | String | The application's tenant ID. |
| hidden | Boolean | True if the participant would not like to be shown in other participants' rosters. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.endpointType",
  "optionalProperties": [
    "displayName",
    "tenantId",
    "hidden"
  ],
} -->
```json
{
  "id": "String",
  "displayName": "String",
  "tenantId": "String",
  "hidden": false
}
```