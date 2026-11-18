---
title: "cloudPcBulkSetDeviceName resource type"
description: "Represents a bulk action that sets Cloud PC device names by using a naming template."
author: "ziqifu9527"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkSetDeviceName resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [bulk action](../resources/cloudpcbulkaction.md) that sets the operating system device names of Cloud PCs by using a naming template. The service generates a name for each Cloud PC in the batch. This action doesn't change the Cloud PC **displayName** property.

To submit the action, [create a cloudPcBulkAction](../api/virtualendpoint-post-bulkactions.md) with **@odata.type** set to `#microsoft.graph.cloudPcBulkSetDeviceName`. The operation runs asynchronously. Use [Get cloudPcBulkAction](../api/cloudpcbulkaction-get.md) to check its **status** and **actionSummary**.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

For the list of supported methods, see [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|The execution summary of the bulk action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|cloudPcIds|String collection|The IDs of the Cloud PCs that the action applies to. Individual Cloud PC IDs are GUID-formatted strings. Required when you create the action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|deviceNamingTemplate|String|The template used to generate a unique device name for each Cloud PC. Required when creating the action. Use an optional prefix followed by one `%RAND:x%` macro, where `x` is the number of random alphanumeric characters and is at least 5. The generated name must be 5–15 characters long. The prefix can contain ASCII letters, digits, and hyphens, and must not start with a hyphen. The prefix length plus `x` must not exceed 15. For example, `ACRA-%RAND:5%` generates a ten-character name such as `ACRA-A1B2C`.|
|displayName|String|The name of the bulk action, not the device names of the targeted Cloud PCs. Required when you create the action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|The unique identifier of the bulk action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|initiatedByUserPrincipalName|String|The user principal name (UPN) of the user who initiated the action. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the action is scheduled according to the maintenance window. The default value is `false`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|status|[cloudPcBulkActionStatus](../resources/cloudpcbulkaction.md#cloudpcbulkactionstatus-values)|The status of the bulk action. The default value is `pending`. Read-only. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkSetDeviceName",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkSetDeviceName",
  "displayName": "String",
  "id": "String (identifier)",
  "cloudPcIds": [
    "String"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)",
  "scheduledDuringMaintenanceWindow": "Boolean",
  "status": "String",
  "initiatedByUserPrincipalName": "String",
  "deviceNamingTemplate": "String"
}
```
