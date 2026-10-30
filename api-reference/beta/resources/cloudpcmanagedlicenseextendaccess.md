---
title: "cloudPcManagedLicenseExtendAccess resource type"
description: "Represents an asynchronous operation that extends Windows 365 Reserve access for specified users."
author: "huijunjin"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagedLicenseExtendAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an asynchronous operation that extends Windows 365 Reserve access for specified users. Supply this type in the **operation** parameter of the [submitManagedLicenseOperation](../api/cloudpcmanagedlicense-submitmanagedlicenseoperation.md) action on the [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection, and set **@odata.type** to `#microsoft.graph.cloudPcManagedLicenseExtendAccess`. The [retrieveManagedLicenseOperation](../api/cloudpcmanagedlicense-retrievemanagedlicenseoperation.md) function returns the overall status and per-user results.

For each user whose operation succeeds, the service adds 10 days (864,000 seconds) to both **totalAllocatedTimeInSeconds** and **remainingAllocatedTimeInSeconds** in the user's Reserve device details. The operation doesn't change **licenseExpirationDateTime**. An administrator can verify the updated **Days left** value for the user's Reserve Cloud PC in the Microsoft Intune admin center.

Inherits from [cloudPcManagedLicenseOperation](../resources/cloudpcmanagedlicenseoperation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the service accepts the operation. The value uses ISO 8601 format and is always in UTC. For example, `2026-10-09T09:00:00Z`. Read-only. Not nullable. Inherited from [cloudPcManagedLicenseOperation](../resources/cloudpcmanagedlicenseoperation.md).|
|entraUserIds|String collection|The Microsoft Entra user object identifiers of the users whose access is extended, not their user principal names. A maximum of 1,000 user identifiers can be submitted in one operation. Duplicate values aren't allowed. An invalid identifier or an identifier for a user outside the tenant of the caller produces a failed per-user result rather than failing the entire accepted operation. Required in the submitted operation. Not nullable.|
|operationRequestId|String|The unique, service-generated identifier for the operation. The value is a GUID with a maximum length of 36 characters and remains stable for the lifetime of the accepted operation. Read-only. Not nullable. Inherited from [cloudPcManagedLicenseOperation](../resources/cloudpcmanagedlicenseoperation.md).|
|operationStatus|[cloudPcManagedLicenseOperationStatus](#cloudpcmanagedlicenseoperationstatus-values)|The overall status across all users supplied in **entraUserIds**. The initial value when the service accepts the operation is `inProgress`. The possible values are: `inProgress`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. Read-only. Not nullable.|
|results|[cloudPcManagedLicenseOperationResult](../resources/cloudpcmanagedlicenseoperationresult.md) collection|The per-user outcomes, with one entry for each identifier supplied in **entraUserIds**. The collection is empty when **operationStatus** is `inProgress` and is populated when the operation reaches a terminal status. Results are returned inline and aren't independently addressable. Read-only. Not nullable.|
|servicePlanId|String|The unique identifier of the service plan that selects the target license SKU. The maximum length is 36 characters. Required in the submitted operation. Not nullable. Inherited from [cloudPcManagedLicenseOperation](../resources/cloudpcmanagedlicenseoperation.md).|

### cloudPcManagedLicenseOperationStatus values

|Member|Description|
|:---|:---|
|inProgress|Default. The operation is in progress.|
|succeeded|The operation completed successfully for all users, or the individual user's operation succeeded.|
|partiallySucceeded|The operation completed with a mix of succeeded and failed results. This value isn't used for an individual user's result.|
|failed|The operation failed, or the individual user's operation failed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcManagedLicenseExtendAccess",
  "baseType": "microsoft.graph.cloudPcManagedLicenseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagedLicenseExtendAccess",
  "createdDateTime": "String (timestamp)",
  "entraUserIds": ["String"],
  "operationRequestId": "String",
  "operationStatus": "String",
  "results": [{"@odata.type": "microsoft.graph.cloudPcManagedLicenseOperationResult"}],
  "servicePlanId": "String"
}
```
