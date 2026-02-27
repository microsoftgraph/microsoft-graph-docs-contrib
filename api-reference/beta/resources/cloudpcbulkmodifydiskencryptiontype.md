---
title: "cloudPcBulkModifyDiskEncryptionType resource type"
description: "Defines the disk encryption type to apply to a collection of Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/27/2024
---

# cloudPcBulkModifyDiskEncryptionType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the disk encryption type to apply to a collection of Cloud PCs.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|diskEncryptionType|[cloudPcDiskEncryptionType](#cloudpcdiskencryptiontype-values)|Indicates the disk encryption type that is specific to an individual Cloud PC. The possible values are: `platformManagedKey`, `customerManagedKey`. |
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|diskEncryptionType|[cloudPcDiskEncryptionType](#cloudpcdiskencryptiontype-values)|Indicates the disk encryption type of the Cloud PC. The possible values are: `platformManagedKey`, `customerManagedKey`. |
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|id|String|ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |

### cloudPcDiskEncryptionType values

|Member|Description|
|:---|:---|
|platformManagedKey|Default. Indicates that the Cloud PC disk is encrypted with a platform-managed key.|
|customerManagedKey|Indicates that the Cloud PC disk is encrypted with a customer-managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkModifyDiskEncryptionType",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkModifyDiskEncryptionType",
  "diskEncryptionType": "customerManagedKey",
  "cloudPcIds": ["*"],
  "createdDateTime": "2023-08-10T09:27:06.1351438-07:00",
  "displayName": "Change disk encryption type of tenant's CPCs",
  "id": "1d164206-bf41-4fd2-8424-a3192d392273"
}
```
