---
title: "complianceChange resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# complianceChange resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List complianceChanges](../api/windowsupdates-updatepolicy-list-compliancechanges.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) collection|Get a list of the [complianceChange](../resources/windowsupdates-compliancechange.md) objects and their properties.|
|[Create complianceChange](../api/windowsupdates-updatepolicy-post-compliancechanges.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Create a new [complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[Get complianceChange](../api/windowsupdates-compliancechange-get.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Read the properties and relationships of a [complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[Update complianceChange](../api/windowsupdates-compliancechange-update.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Update the properties of a [complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[Delete complianceChange](../api/windowsupdates-updatepolicy-delete-compliancechanges.md)|None|Delete a [complianceChange](../resources/windowsupdates-compliancechange.md) object.|
|[List updatePolicy](../api/adminwindowsupdates-list-updatepolicies.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|Get the updatePolicy resources from the updatePolicy navigation property.|
|[Add updatePolicy](../api/windowsupdates-compliancechange-post-updatepolicy.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|Add updatePolicy by posting to the updatePolicy collection.|
|[Remove updatePolicy](../api/windowsupdates-compliancechange-delete-updatepolicy.md)|None|Remove an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isRevoked|Boolean|**TODO: Add Description**|
|revokedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|updatePolicy|[updatePolicy](../resources/windowsupdates-updatepolicy.md)|**TODO: Add Description**|

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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)"
}
```

