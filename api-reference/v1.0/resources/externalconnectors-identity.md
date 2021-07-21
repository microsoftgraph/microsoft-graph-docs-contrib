---
title: "identity resource type"
description: "Representation of AAD and external identities"
author: "sacampbe"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# identity resource type

Namespace: microsoft.graph.externalConnectors



Represents a member of an [externalGroup](externalconnectors-externalgroup.md) used to set permissions on external content added to Microsoft Graph.


Inherits from [entity](../resources/externalconnectors-entity.md).

## Properties

| Property       | Type                    | Description                                                          |
|:---------------|:------------------------|:---------------------------------------------------------------------|
| id             | String                  | The unique ID of the member. It would be the objectId in case of Azure Active Directory users or groups and the **id** property of the **externalGroup** in case of external groups.                                    |
| type           | microsoft.graph.externalConnectors.identityType | The type of member added to the external group. Possible values are: `user` or `group`  for azureActiveDirectory identities and 'externalgroup` when the source is external. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.identity",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "type": "String"
}
```
