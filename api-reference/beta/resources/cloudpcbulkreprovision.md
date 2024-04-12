---
title: "cloudPcBulkReprovision resource type"
description: "Represents the entity that performs a bulk reprovision action."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkReprovision resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk reprovision action. If provisioning a Cloud PC device through the standard steps (creating a provisioning policy and assigning it to trigger Cloud PC provisioning for a new user), customers can use this API to re-create the Cloud PC by providing the Cloud PC ID.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|id|String|ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkReprovision",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkReprovision",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)"
}
```
