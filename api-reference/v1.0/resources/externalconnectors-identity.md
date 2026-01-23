---
title: "identity resource type"
description: "Represents an identity used to set permissions on external content added to Microsoft Graph."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# identity resource type

Namespace: microsoft.graph.externalConnectors

Represents an [identity](externalconnectors-identity.md) used to set permissions on external content added to Microsoft Graph.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/externalconnectors-externalgroup-post-members.md)|[identity](externalconnectors-identity.md)|Create an [identity](../resources/externalconnectors-identity.md) resource for a new member in an [externalGroup](../resources/externalconnectors-externalgroup.md).|
|[Delete](../api/externalconnectors-externalgroupmember-delete.md)|None|Delete an [identity](../resources/externalconnectors-identity.md) resource to remove the corresponding member from an [externalGroup](../resources/externalconnectors-externalgroup.md).|

## Properties

| Property       | Type                    | Description                                                          |
|:---------------|:------------------------|:---------------------------------------------------------------------|
| id             | String                  | The unique ID of the identity. It would be the objectId property for Microsoft Entra users or groups and the **id** property of the **externalGroup** in the case of external groups.                                    |
| type           | microsoft.graph.externalConnectors.identityType | The type of identity. The possible values are: `user` or `group` for Microsoft Entra identities and `externalgroup` for groups in an external system. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
