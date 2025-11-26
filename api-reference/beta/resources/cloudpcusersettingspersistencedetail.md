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
|[Batch delete user settings persistence profile](../api/cloudpcusersettingspersistencedetail-batchcleanupusersettingspersistenceprofile.md)|None|Delete a list of selected [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) profiles that aren't attached to a specific user's Cloud PC in the Cloud PC policy assignment.|
|[Retrieve user settings persistence profiles](../api/cloudpcusersettingspersistencedetail-retrieveusersettingspersistenceprofiles.md)|[cloudPCUserSettingsPersistenceProfile](../resources/cloudpcusersettingspersistenceprofile.md) collection|Retrieve the user storage list for Cloud PC [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) under the selected Cloud PC policy assignment.|
|[Retrieve user settings persistence usage](../api/cloudpcusersettingspersistencedetail-retrieveusersettingspersistenceprofileusage.md)|[cloudPCUserSettingsPersistenceUsageResult](cloudpcusersettingspersistenceusageresult.md) |Retrieve the usage of Cloud PC [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) in the selected Cloud PC policy assignment.|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|gracePeriodEndDateTime|DateTimeOffset| Indicates the grace period end time when user settings persistence exceeds the available quota. If usage exceeds the available quota when the grace period expires, the system automatically deletes the profile with the oldest last attached timestamp. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|id|String|Indicates the unique identifier for the Cloud PC user settings persistence configuration for a single policy collection. Required. Read-only.|

## Relationships

None.

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
  "gracePeriodEndDateTime": "String (timestamp)"
}
```
