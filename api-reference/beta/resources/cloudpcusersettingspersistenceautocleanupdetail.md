---
title: "cloudPCUserSettingsPersistenceAutoCleanupDetail resource type"
description: "Describes the cloud profile auto cleanup configuration for user settings persistence."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPCUserSettingsPersistenceAutoCleanupDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the cloud profile auto cleanup configuration for user settings persistence.

Used by the **autoCleanupDetail** property of a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autoCleanupMode|[cloudPcAutoCleanupMode](#cloudpcautocleanupmode-values)|Specifies the cleanup mode for detached cloud profiles. This property is a flags enum that supports bitwise combination. Possible values are: `none` (no automatic cleanup), `scheduled` (cleanup inactive profiles on a regular schedule), `onQuotaExceeded` (cleanup only when storage quota is exceeded), `unknownFutureValue`. The default value is `none`.|
|inactiveProfileRetentionDays|Int32|Specifies the number of inactivity days before a detached cloud profile becomes eligible for cleanup. Only applies when **autoCleanupMode** includes `scheduled` or `onQuotaExceeded`. Valid values range from `5` to `365` days. Default value is `null`. For example, when set to `45`, detached profiles inactive for more than 45 days are eligible for cleanup based on the configured mode.|

### cloudPcAutoCleanupMode values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). This flagged enumeration allows multiple members to be selected simultaneously.

|Member|Description|
|:---|:---|
|none|No automatic cleanup is performed. Detached profiles are preserved indefinitely.|
|scheduled|Cleanup inactive detached profiles on a regular schedule based on **inactiveProfileRetentionDays**.|
|onQuotaExceeded|Cleanup inactive detached profiles only when the total storage quota is exceeded.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceAutoCleanupDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceAutoCleanupDetail",
  "autoCleanupMode": "String",
  "inactiveProfileRetentionDays": "Int32"
}
```
