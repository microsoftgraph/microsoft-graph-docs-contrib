--- 
title: "communicationsApplicationIdentity resource type"
description: "Represents the identity of an application used for communications such as calling."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsApplicationIdentity resource type

Namespace: microsoft.graph

Represents the identity of an application used for communications such as calling. You need to register the application as an enterprise application in [Microsoft Entra ID](/azure/active-directory/).

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                               |
| :----------------------------- | :---------------------------| :-----------------------------------------|
| applicationType | String | First-party Microsoft application that presents this **identity**. |
| displayName | String | The display name associated with the application. Inherited from **identity**. |
| hidden | Boolean | `True` if the participant shouldn't be shown in other participants' rosters. |
| id | String | The client ID of the application from Microsoft Entra ID. Inherited from **identity**. |

## JSON representation

The following JSON representation shows the resource type.

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
  "applicationType": "String",
  "displayName": "String",
  "hidden": "Boolean",
  "id": "String (identifier)"
}
```
