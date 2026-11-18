---
title: "cloudPcUserProfileBulkActionResult resource type"
description: "Represents the abstract base result of a bulk action on user settings persistence cloud profile snapshots."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserProfileBulkActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base result of a bulk action on user settings persistence cloud profile snapshots. Returned as the declared return type of the [Bulk create user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkcreateuserprofilesnapshot.md) and [Bulk export user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkexportuserprofilesnapshot.md) actions. The response body is a concrete derived type identified by `@odata.type`: `cloudPcUserProfileSnapshotCreateBulkActionResult` for snapshot creation and `cloudPcUserProfileSnapshotExportBulkActionResult` for snapshot export. 

Base type of [cloudPcUserProfileSnapshotCreateBulkActionResult](../resources/cloudpcuserprofilesnapshotcreatebulkactionresult.md) and [cloudPcUserProfileSnapshotExportBulkActionResult](../resources/cloudpcuserprofilesnapshotexportbulkactionresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedCount|Int32|Indicates the number of input IDs that the backend service rejected during input validation, which prevented the corresponding operations from starting. Read-only.|
|totalCount|Int32|Indicates the total number of distinct input IDs the service attempted to act on. Read-Only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserProfileBulkActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileBulkActionResult",
  "totalCount": "Int32",
  "failedCount": "Int32"
}
```
