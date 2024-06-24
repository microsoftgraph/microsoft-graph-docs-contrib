---
title: "cloudpcbulkmodifydiskencryptiontype resource type"
description: "Specifiy the bulk disk encryption modify action."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkModifyDiskEncryptionType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the bulk modify disk encryption type action, with Cloud PC IDs as the only input parameter for the bulk modify disk encryption type operation.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|diskEncryptionType|[cloudPcDiskEncryptionType](../resources/cloudpctenantencryptionsetting.md/#cloudpcdiskencryptiontype-values)|Indicates the disk encryption type of the Cloud PC. Possible values are: `platformManagedKey`, `customerManagedKey`. |
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
  "@odata.type": "microsoft.graph.CloudPcBulkModifyDiskEncryptionType",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.CloudPcBulkModifyDiskEncryptionType",
  "diskEncryptionType": "customerManagedKey",
  "cloudPcIds": ["*"],
  "createdDateTime": "2023-08-10T09:27:06.1351438-07:00",
  "displayName": "Change disk encryption type of tenant's CPCs",
  "id": "1d164206-bf41-4fd2-8424-a3192d392273"
}
```