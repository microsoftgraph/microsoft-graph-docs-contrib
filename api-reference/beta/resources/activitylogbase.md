---
title: "activityLogBase resource type"
description: "Represents an activity log and its properties."
author: "Vassu05"
ms.date: 02/12/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# activityLogBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an activity log record that contains information about any admin activity on backup and restore resources.

Base type for [backupPolicyActivityLog](../resources/backuppolicyactivitylog.md), [dynamicRuleActivityLog](../resources/dynamicruleactivitylog.md), [offboardingActivityLog](../resources/offboardingactivitylog.md), and [restoreTaskActivityLog](../resources/restoretaskactivitylog.md).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-activitylogs.md)|[activityLogBase](../resources/activitylogbase.md) collection| Get a list of [activityLogBase](../resources/activitylogbase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityType|[activityLogOperationType](../resources/enums.md#activitylogoperationtype-values)|The type of activity performed. The possible values are: `backupPolicyCreated`, `backupPolicyActivated`, `backupPolicyModified`, `backupPolicyPaused`, `backupPolicyRenamed`, `dynamicRuleExecution`, `dynamicRuleDeletion`, `protectionUnitLevelOffboarding`, `policyLevelOffboarding`, `restoreTaskCreated`, `restoreTaskCompleted`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an error occurred while processing this activity.|
|eventDateTime|DateTimeOffset|Timestamp of activity completion.|
|id|String|The unique identifier of the activityLog.|
|performedBy|String|The identity of the person who performed the activity.|
|resultStatus|[activityLogResultStatus](../resources/enums.md#activitylogresultstatus-values)|Indicates the outcome status of the activity. The possible values are: `succeeded`, `failed`, `partiallySucceeded`, `unknownFutureValue`.|
|serviceType|[serviceType](../resources/enums.md#servicetype-values)|Represents the service type. The possible values are: `unknown`, `sharepoint`, `exchange`, `oneDriveForBusiness`, `unknownFutureValue`.|
|severity|[activityLogSeverity](../resources/enums.md#activitylogseverity-values)|Indicates the severity of the activity. The possible values are: `high`, `medium`, `low`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activityLogBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activityLogBase",
  "id": "String (identifier)",
  "eventDateTime": "String (timestamp)",
  "activityType": "String",
  "resultStatus": "String",
  "serviceType": "String",
  "severity": "String",
  "performedBy": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

