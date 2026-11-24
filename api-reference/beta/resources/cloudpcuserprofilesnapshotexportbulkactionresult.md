---
title: "cloudPcUserProfileSnapshotExportBulkActionResult resource type"
description: "Represents the result of the bulkExportUserProfileSnapshot action."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserProfileSnapshotExportBulkActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of the [Bulk export user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkexportuserprofilesnapshot.md) action. Failed items are snapshot IDs from the **snapshotIds** request parameter. The inherited **totalCount** and **failedCount** properties count snapshot IDs.

Inherits from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedCount|Int32|Indicates the number of input IDs that were rejected by the backend service during input validation and therefore didn't launch. Read-Only. Inherited from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).|
|failedSnapshotIds|String collection|Indicates the snapshot IDs that were rejected by the backend service due to input validation and didn't launch. The collection is always present but is empty when no snapshot IDs failed. Read-Only.|
|totalCount|Int32|Indicates the total number of distinct input IDs the service attempted to act on. Read-Only. Inherited from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserProfileSnapshotExportBulkActionResult",
  "baseType": "microsoft.graph.cloudPcUserProfileBulkActionResult"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshotExportBulkActionResult",
  "totalCount": "Int32",
  "failedCount": "Int32",
  "failedSnapshotIds": [
    "String"
  ]
}
```
