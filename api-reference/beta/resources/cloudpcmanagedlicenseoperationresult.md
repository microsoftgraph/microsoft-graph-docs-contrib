---
title: "cloudPcManagedLicenseOperationResult resource type"
description: "Represents the outcome of a Cloud PC managed-license operation for an individual user."
author: "huijunjin"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagedLicenseOperationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the outcome of a Cloud PC managed-license operation for an individual user. This complex type is returned in the **results** property of [cloudPcManagedLicenseExtendAccess](../resources/cloudpcmanagedlicenseextendaccess.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|entraUserId|String|The Microsoft Entra user object identifier to which the result applies that matches one of the values supplied in **entraUserIds** when the operation was submitted. This value isn't a user principal name or an entity key. Results are returned inline as part of the operation and can't be retrieved individually. Read-only. Not nullable.|
|failureCode|[cloudPcManagedLicenseOperationFailureCode](#cloudpcmanagedlicenseoperationfailurecode-values)|The reason the operation failed for this user. Returned only when **operationResultStatus** is `failed`. The possible values are: `internalServiceError`, `noActiveProvisioningPolicyAssignment`, `userLicenseAssignmentNotEnabled`, `maximumAccessDurationExceeded`, `sufficientAccessTimeRemaining`, `noEligibleLicenseAvailable`, `unknownFutureValue`. Read-only. Nullable.|
|operationResultStatus|[cloudPcManagedLicenseOperationStatus](../resources/cloudpcmanagedlicenseextendaccess.md#cloudpcmanagedlicenseoperationstatus-values)|The outcome for the individual user. Per-user results are returned only after the operation reaches a terminal status and use `succeeded` or `failed`. The `inProgress` and `partiallySucceeded` values aren't used for per-user results. The `unknownFutureValue` value is reserved for future enum members. Read-only. Not nullable.|

### cloudPcManagedLicenseOperationFailureCode values

|Member|Description|
|:---|:---|
|internalServiceError|Default. The operation can't be completed because of an internal service error. Retry the operation later for the affected user.|
|noActiveProvisioningPolicyAssignment|The user doesn't have an active provisioning policy assignment for the specified service plan.|
|userLicenseAssignmentNotEnabled|The user's license assignment isn't enabled.|
|maximumAccessDurationExceeded|Extending the user's access causes their total access duration to exceed the maximum of 30 days.|
|sufficientAccessTimeRemaining|The user's remaining access time already covers the rest of the current license cycle, so no extension is needed.|
|noEligibleLicenseAvailable|No Windows 365 Reserve license is available from subscriptions in the tenant for the user.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcManagedLicenseOperationResult",
  "openType": false,
  "optionalProperties": ["@odata.type", "failureCode"]
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagedLicenseOperationResult",
  "entraUserId": "String",
  "failureCode": "String",
  "operationResultStatus": "String"
}
```
