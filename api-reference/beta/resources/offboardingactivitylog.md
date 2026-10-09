---
title: "offboardingActivityLog resource type"
description: "Represents an offboarding activity log and its properties."
author: "Vassu05"
ms.date: 02/12/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# offboardingActivityLog resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents activity logs related to offboarding operations. This resource tracks offboarding activities at both the protection unit level and policy level.


Inherits from [activityLogBase](../resources/activitylogbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-activitylogs.md)|[activityLogBase](../resources/activitylogbase.md) collection| Get a list of [activityLogBase](../resources/activitylogbase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityType|[activityLogOperationType](../resources/enums.md#activitylogoperationtype-values)|The type of activity performed. The possible values are: `backupPolicyCreated`, `backupPolicyActivated`, `backupPolicyModified`, `backupPolicyPaused`, `backupPolicyRenamed`, `dynamicRuleExecution`, `dynamicRuleDeletion`, `protectionUnitLevelOffboarding`, `policyLevelOffboarding`, `restoreTaskCreated`, `restoreTaskCompleted`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|error|[publicError](../resources/publicerror.md)|Contains error details if an error occurred while processing this activity. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|eventDateTime|DateTimeOffset|Timestamp of activity completion. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|id|String|The unique identifier of the activityLog. Inherited from [entity](../resources/entity.md).|
|offboardingDetails|[offboardingDetails](../resources/offboardingdetails.md)|Contains detailed information about the offboarding operation, including affected protection units and their status.|
|performedBy|String|The identity of the person who performed the activity. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|policyId|String|The unique identifier of the protection policy associated with the activity log.|
|policyName|String|Name of the protection policy.|
|policyStatus|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|The aggregated status of the protection units associated with the policy. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`, `dormant`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `dormant`.|
|resultStatus|[activityLogResultStatus](../resources/enums.md#activitylogresultstatus-values)|Indicates the outcome status of the activity. The possible values are: `succeeded`, `failed`, `partiallySucceeded`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|serviceType|[serviceType](../resources/enums.md#servicetype-values)|Represents the service type. The possible values are: `unknown`, `sharepoint`, `exchange`, `oneDriveForBusiness`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|
|severity|[activityLogSeverity](../resources/enums.md#activitylogseverity-values)|Indicates the severity of the activity. The possible values are: `high`, `medium`, `low`, `unknownFutureValue`. Inherited from [activityLogBase](../resources/activitylogbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.offboardingActivityLog",
  "baseType": "microsoft.graph.activityLogBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.offboardingActivityLog",
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
  "policyId": "String",
  "policyName": "String",
  "policyStatus": "String",
  "offboardingDetails": {
    "@odata.type": "microsoft.graph.offboardingDetails"
  }
}
```

