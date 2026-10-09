---
title: "restoreTaskActivityLog resource type"
description: "Represents a restore task activity log and its properties."
author: "Vassu05"
ms.date: 02/12/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreTaskActivityLog resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents activity logs related to restore task operations. This resource tracks restore task activities such as task creation and completion, including details about the restore session and artifacts.


Inherits from [activityLogBase](../resources/activitylogbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-activitylogs.md)|[activityLogBase](../resources/activitylogbase.md) collection| Get a list of [activityLogBase](../resources/activitylogbase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityType|[activityLogOperationType](../resources/enums.md#activitylogoperationtype-values)|The type of activity performed. The possible values are: `backupPolicyCreated`, `backupPolicyActivated`, `backupPolicyModified`, `backupPolicyPaused`, `backupPolicyRenamed`, `dynamicRuleExecution`, `dynamicRuleDeletion`, `protectionUnitLevelOffboarding`, `policyLevelOffboarding`, `restoreTaskCreated`, `restoreTaskCompleted`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|destinationType|[destinationType](../resources/restoretaskactivitylog.md#destinationtype-values)|Specifies the type of destination where the data is being restored. The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an error occurred while processing this activity. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|eventDateTime|DateTimeOffset|Timestamp of activity completion. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|id|String|The unique identifier of the activityLog. Inherited from [entity](../resources/entity.md).|
|performedBy|String|The identity of the person who performed the activity. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|restoreArtifactDetails|[restoreArtifactDetails](../resources/restoreartifactdetails.md)|Contains detailed information about the artifacts being restored, including counts and status of restored items.|
|restoreCompletionDateTime|DateTimeOffset|The date and time when the restore task was completed.|
|restoreSessionId|String|The unique identifier of the restore session associated with this activity log.|
|restoreSessionStatus|[restoreSessionStatus](../resources/restoretaskactivitylog.md#restoresessionstatus-values)|Indicates the current status of the restore session. The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|
|resultStatus|[activityLogResultStatus](../resources/enums.md#activitylogresultstatus-values)|Indicates the outcome status of the activity. The possible values are: `succeeded`, `failed`, `partiallySucceeded`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|serviceType|[serviceType](../resources/enums.md#servicetype-values)|Represents the service type. The possible values are: `unknown`, `sharepoint`, `exchange`, `oneDriveForBusiness`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|severity|[activityLogSeverity](../resources/enums.md#activitylogseverity-values)|Indicates the severity of the activity. The possible values are: `high`, `medium`, `low`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|tags|[restorePointTags](../resources/restoretaskactivitylog.md#restorepointtags-values)|Indicates tags associated with the restore point used for this restore operation. The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

### destinationType values

|Member | Description |
|:------|:------------|
|new | Data is restored to a new location.|
|inPlace | Data is restored to its original location.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

### restoreSessionStatus values

|Member | Description |
|:------|:------------|
|draft | The restore session is in draft state.|
|activating | The restore session is being activated.|
|active | The restore session is active.|
|completedWithError | The restore session completed with errors.|
|completed | The restore session completed successfully.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|
|failed | The restore session failed.|

### restorePointTags values

|Member | Description |
|:------|:------------|
|none | No specific tags associated with the restore point.|
|fastRestore | The restore point supports fast restore operations.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restoreTaskActivityLog",
  "baseType": "microsoft.graph.activityLogBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreTaskActivityLog",
  "id": "String (identifier)",
  "eventDateTime": "String (timestamp)",
  "activityType": "String",
  "resultStatus": "String",
  "serviceType": "String",
  "severity": "String",
  "performedBy": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "restoreSessionId": "String",
  "restoreSessionStatus": "String",
  "destinationType": "String",
  "tags": "String",
  "restoreArtifactDetails": {
    "@odata.type": "microsoft.graph.restoreArtifactDetails"
  },
  "restoreCompletionDateTime": "String (timestamp)"
}
```

