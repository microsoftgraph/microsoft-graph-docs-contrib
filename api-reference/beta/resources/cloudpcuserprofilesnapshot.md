---
title: "cloudPcUserProfileSnapshot resource type"
description: "Represents a point-in-time snapshot of a user settings persistence cloud profile."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserProfileSnapshot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a point-in-time snapshot of a user settings persistence cloud profile. Snapshots are created either automatically by the background service based on the snapshot configuration, or triggered manually by an IT admin. Snapshots can be used for disaster recovery and restore scenarios.

Used by the **userProfileSnapshots** relationship of a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcusersettingspersistencedetail-list-userprofilesnapshots.md)|[cloudPcUserProfileSnapshot](../resources/cloudpcuserprofilesnapshot.md) collection|List all [snapshots](../resources/cloudpcuserprofilesnapshot.md) for a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) resource through the **userProfileSnapshots** navigation property.|
|[Restore](../api/cloudpcuserprofilesnapshot-restore.md)|None|Restore a user settings persistence profile from the bound snapshot as a long-running operation.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cloudProfileId|String|Indicates the unique identifier of the user settings persistence profile that this snapshot belongs to. Used to associate a snapshot with its parent profile. Read-only. Not nullable.|
|createdDateTime|DateTimeOffset|Indicates the date and time at which the snapshot was taken. The value can't be modified and is automatically populated when the snapshot is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 looks like this: `2014-01-01T00:00:00Z`. Read-only. Not nullable.|
|expirationDateTime|DateTimeOffset|Indicates the date and time when the snapshot expires and is no longer available for restore or export. The value is automatically calculated by the system. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 looks like this: `2014-01-01T00:00:00Z`. Read-only. Nullable.|
|id|String|Indicates the unique identifier of the user settings persistence profile snapshot. This identifier is assigned when the snapshot is created. Read-only. Not nullable. Inherited from [entity](../resources/entity.md).|
|lastRestoredDateTime|DateTimeOffset|Indicates the date and time when this snapshot was last used for a restore operation. The value is `null` if the snapshot was never restored. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: `2014-01-01T00:00:00Z`. Read-only. Nullable.|
|snapshotSizeInGB|Int32|Indicates the size of the snapshot in gigabytes (GB). Read-only. Nullable.|
|snapshotType|[cloudPcUserSettingsPersistenceSnapshotType](#cloudpcusersettingspersistencesnapshottype-values)|Indicates the type of snapshot and how it was created. Default value is `automatic`. Possible values are: `automatic`, `manual`, `unknownFutureValue`. Read-only. Not nullable.|
|userPrincipalName|String|Indicates the user principal name (UPN) of the user who owns the profile. Example: `json@contoso.com`. Read-only. Not nullable.|

### cloudPcUserSettingsPersistenceSnapshotType values

Describes the type of snapshot for a user settings persistence profile.

|Member|Description|
|:---|:---|
|automatic|Default. Indicates the snapshot was created automatically by the system based on the configured snapshot frequency defined in [cloudPcUserSettingsPersistenceSnapshotConfiguration](../resources/cloudpcusersettingspersistencesnapshotconfiguration.md).|
|manual|Indicates the snapshot was created manually by an IT admin via the [Bulk create user profile snapshot](../api/cloudpcusersettingspersistencedetail-bulkcreateuserprofilesnapshot.md) action.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcUserProfileSnapshot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshot",
  "id": "String (identifier)",
  "cloudProfileId": "String",
  "userPrincipalName": "String",
  "snapshotType": "String",
  "snapshotSizeInGB": "Integer",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "lastRestoredDateTime": "String (timestamp)"
}
```
