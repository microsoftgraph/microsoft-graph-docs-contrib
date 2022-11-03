---
title: "complianceChange resource type"
description: "An abstract type that represents a change to enforce policy such as approving content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# complianceChange resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a change to enforce policy such as approving content.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List complianceChanges](../api/windowsupdates-updatepolicy-list-compliancechanges.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) collection|Get a list of the [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) objects and their properties.|
|[Get complianceChange](../api/windowsupdates-compliancechange-get.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Read the properties and relationships of a [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[Update complianceChange](../api/windowsupdates-compliancechange-update.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Update the properties of a [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[Delete complianceChange](../api/windowsupdates-compliancechange-delete.md)|None|Delete a [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) object.|

## Properties
| Property        | Type           | Description                                                                                                                           |
|:----------------|:---------------|:--------------------------------------------------------------------------------------------------------------------------------------|
| createdDateTime | DateTimeOffset | The date and time when a compliance change was created.                                                                               |
| id              | String         | The unique identifier for the compliance change. Returned by default. Not nullable. Read-only.                                        |
| isRevoked       | Boolean        | `True` indicates that a compliance change is revoked, preventing further application. Revoking a compliance change is a final action. |
| revokedDateTime | DateTimeOffset | The date and time when the compliance change was revoked.                                                                             |

## Relationships
| Relationship | Type                                                                                       | Description                                       |
|:-------------|:-------------------------------------------------------------------------------------------|:--------------------------------------------------|
| updatePolicy | [microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) | The policy this compliance change is a member of. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.complianceChange",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.complianceChange",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)"
}
```
