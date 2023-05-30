--- 
title: "azureCommunicationServicesUserIdentity resource type"
description: "Represents the identity of a participant who joined the communication via Azure Communication Services."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# azureCommunicationServicesUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a participant who joined the communication via Azure Communication Services.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. A unique ID identifying the user. |
| displayName | String | Inherited from **identity**. The display name associated with the user. |
| azureCommunicationServicesResourceId | String |  The Azure Communication Services resource ID associated with the user. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureCommunicationServicesUserIdentity",
  "optionalProperties": [
    "displayName",
    "azureCommunicationServicesResourceId"
  ],
} -->
```json
{
  "id": "String",
  "displayName": "String",
  "azureCommunicationServicesResourceId": "String"
}
```
