---
title: "cloudPCUserSettingsPersistenceDetail resource type"
description: "Indicates whether Cloud PC user settings persistence is enabled. When enabled, Windows 365 saves user-specific application data in a central cloud storage location and reconnects the user to that storage upon each connection."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceDetail  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether Cloud PC user settings persistence is enabled. When enabled, Windows 365 saves user-specific application data in a central cloud storage location and reconnects the user to that storage upon each connection.

## Methods
|Method|Return Type|Description|
|:-------------|:------------|:------------|
|[Retrieve user settings persistence usage](../api/cloudpcprovisioningpolicy-batchcleanupusersettingspersistenceprofile.md)|[cloudPCUserSettingsPersistenceUsageResult](cloudpcusersettingspersistenceusageresult.md) |Retrieve Cloud PC user settings persistence usage **cloudpcusersettingspersistenceusageresult** objects of selected Cloud PC's policy assignment.|
|[Read Cloud PC user settings persistence user profle](../api/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofiles.md)|[cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistenceprofile.md) collection|Read Cloud PC user settings persistence user profile list **cloudpcusersettingspersistenceprofile** objects of selected Cloud PC's policy assignment.|
|[Batch delete Cloud PC user settings persistence user profile list](../api/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofileusage.md)||Batch delete Cloud PC user settings persistence user profile list of selected Cloud PC's policy assignment.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|gracePeriodEndDateTime|DateTimeOffset| Indicates the grace period end time when user settings persistence exceeds the available quota. If the usage of user settings persistence is over the available quota when the grace period expires, the system will automatically delete the profile with the oldest last attached timestamp. For example, grace period date would look like this '2025-01-01T00:00:00Z'. Read-only.  |
|id|String|Indicates unique identifier for the Cloud PC user settings persistence configuration for a single policy collection. Required. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudpcusersettingspersistencedetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudpcusersettingspersistencedetail",
  "id": "String (identifier)",
  "gracePeriodEndDateTime": "String (timestamp)"
}
```
