---
title: "cloudPCUserSettingsPersistenceDetail resource type"
description: "Represents the configuration that indicates whether Cloud PC user settings persistence is enabled."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceDetail  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration that indicates whether Cloud PC user settings persistence is enabled. When enabled, Windows 365 saves user-specific application data in a central cloud storage location and reconnects the user to that storage upon each connection.

## Methods
|Method|Return type|Description|
|:-------------|:------------|:------------|
|[Get](../api/cloudpcusersettingspersistencedetail-get.md)|[cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md)|Get a specific [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) under the selected policy assignment.|
|[Update](../api/cloudpcusersettingspersistencedetail-update.md)|None|Update the specific [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) object for the selected policy assignment.|
|[List user profile snapshots](../api/cloudpcusersettingspersistencedetail-list-userprofilesnapshots.md)|[cloudPcUserProfileSnapshot](../resources/cloudpcuserprofilesnapshot.md) collection|List all [snapshots](../resources/cloudpcuserprofilesnapshot.md) for a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) resource through the **userProfileSnapshots** navigation property.|
|[Bulk create user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkcreateuserprofilesnapshot.md)|[cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md)|Trigger a manual snapshot for selected user settings persistence profiles as a long-running operation.|
|[Bulk export user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkexportuserprofilesnapshot.md)|[cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md)|Export selected snapshots to a customer-managed Azure storage account as a long-running operation.|
|[Batch delete user settings persistence profile](../api/cloudpcusersettingspersistencedetail-batchcleanupusersettingspersistenceprofile.md)|None|Delete a list of selected [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) profiles that aren't attached to a specific user's Cloud PC in the Cloud PC policy assignment.|
|[Retrieve user settings persistence profiles](../api/cloudpcusersettingspersistencedetail-retrieveusersettingspersistenceprofiles.md)|[cloudPCUserSettingsPersistenceProfile](../resources/cloudpcusersettingspersistenceprofile.md) collection|Retrieve the user storage list for Cloud PC [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) under the selected Cloud PC policy assignment.|
|[Retrieve user settings persistence usage](../api/cloudpcusersettingspersistencedetail-retrieveusersettingspersistenceprofileusage.md)|[cloudPCUserSettingsPersistenceUsageResult](../resources/cloudpcusersettingspersistenceusageresult.md) |Retrieve the usage of Cloud PC [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) in the selected Cloud PC policy assignment.|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|autoCleanupDetail|[cloudPCUserSettingsPersistenceAutoCleanupDetail](../resources/cloudpcusersettingspersistenceautocleanupdetail.md)|The specific settings which enables auto cleanup inactive detached profiles for user settings persistence. The default value is `null`|
|gracePeriodEndDateTime|DateTimeOffset| Indicates the grace period end time when user settings persistence exceeds the available quota. If usage exceeds the available quota when the grace period expires, the system automatically deletes the profile with the oldest last attached timestamp. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|id|String|Indicates the unique identifier for the Cloud PC user settings persistence configuration for a single policy collection. Required. Read-only.|
|snapshotConfiguration|[cloudPcUserSettingsPersistenceSnapshotConfiguration](../resources/cloudpcusersettingspersistencesnapshotconfiguration.md)|The specific settings for automatic snapshots of user settings persistence profiles. The default value is `null`.|
|storageConfiguration|[cloudPcStorageConfiguration](../resources/cloudpcstorageconfiguration.md)|Configures the storage behavior for persisted user settings. When `storageSizingType` is `fixed`, `allocatedStorageSizeCategory` determines the hard storage cap. When `dynamic`, `allocatedStorageSizeCategory` represents the maximum the profile can grow to based on usage. Only applicable for `sharedByEntraGroup` provisioning policies.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userProfileSnapshots|[cloudPcUserProfileSnapshot](../resources/cloudpcuserprofilesnapshot.md) collection|The collection of point-in-time snapshots of user settings persistence cloud profiles for this assignment. Snapshots are created either automatically by the background service based on `snapshotConfiguration`, or manually triggered by an IT admin via the `bulkCreateUserProfileSnapshot` action.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceDetail",
  "id": "String (identifier)",
  "gracePeriodEndDateTime": "String (timestamp)",
  "storageConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcStorageConfiguration"
  },
  "autoCleanupDetail": {
    "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceAutoCleanupDetail"
  },
  "snapshotConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcUserSettingsPersistenceSnapshotConfiguration"
  }
}
```
