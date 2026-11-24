---
title: "cloudPcUserProfileSnapshotCreateBulkActionResult resource type"
description: "Represents the result of the bulkCreateUserProfileSnapshot action."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserProfileSnapshotCreateBulkActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of the [Bulk create user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkcreateuserprofilesnapshot.md) action. Failed items are cloud profile IDs from the **cloudProfileIds** request parameter. The inherited **totalCount** and **failedCount** properties count cloud profile IDs.

Inherits from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedCloudProfileIds|String collection|Indicates the cloud profile IDs that were rejected by the backend service due to input validation and did not launch. The collection is always present but is empty when no cloud profile IDs failed. Read-Only.|
|failedCount|Int32|Indicates the number of input IDs that were rejected by the backend service during input validation and therefore didn't launch. Read-Only. Inherited from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).|
|totalCount|Int32|Indicates the total number of distinct input IDs the service attempted to act on. Read-Only. Inherited from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserProfileSnapshotCreateBulkActionResult",
  "baseType": "microsoft.graph.cloudPcUserProfileBulkActionResult"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshotCreateBulkActionResult",
  "totalCount": "Int32",
  "failedCount": "Int32",
  "failedCloudProfileIds": [
    "String"
  ]
}
```
