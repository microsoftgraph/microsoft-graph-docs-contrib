--- 
title: "azureCommunicationServicesUserIdentity resource type"
description: "Represents the identity of a participant who joined the communication via Azure Communication Services."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# azureCommunicationServicesUserIdentity resource type

Namespace: microsoft.graph

Represents the identity of a participant who joined the communication via Azure Communication Services.

Inherits from [identity](identity.md).

## Properties

| Property                             | Type   | Description                                                             |
|:-------------------------------------|:-------|:------------------------------------------------------------------------|
| azureCommunicationServicesResourceId | String | The Azure Communication Services resource ID associated with the user.  |
| displayName                          | String | The display name associated with the user. Inherited from **identity**. |
| id                                   | String | The unique identifier for the user. Inherited from **identity**.        |

## JSON representation

The following JSON representation shows the resource type.

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
  "azureCommunicationServicesResourceId": "String",
  "displayName": "String",
  "id": "String (identifier)"
}
```
