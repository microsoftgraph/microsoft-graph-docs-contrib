---
title: "cloudPcManagedLicense resource type"
description: "Represents a license that is directly managed by the Cloud PC service. This is distinct from other license types that can be used in the Cloud PC service but are not managed by it. This entity provides the status and details of policy-managed Cloud PC licenses to help administrators manage license allocation."
author: "bchopra"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagedLicense resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a license that is directly managed by the Cloud PC service. This is distinct from other license types that can be used in the Cloud PC service but are not managed by it. This entity provides the status and details of policy-managed Cloud PC licenses to help administrators manage license allocation.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-managedlicenses.md)|[cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection|Get a list of the cloudPcManagedLicense objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDateTime|DateTimeOffset|Indicates the date and time when the license will become active. The date and time information is shown using ISO 8601 format and is always in UTC time. For example, midnight UTC on Aug 7, 2024 would look like this: `2024-08-07T00:00:00Z`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Nullable.|
|allotmentLicensesCount|Int32|Indicates how many licenses have been allocated to assignments. The total number of allotted licenses cannot be greater than the total license count. Allowed range is 0 to `licensesCount`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Nullable.|
|assignedCount|Int32|Indicates the number of licenses currently assigned to users. Allowed range is 0 to `licensesCount`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Not nullable.|
|displayName|String|Indicates the display name of the license. Example: `Cloud PC Enterprise 4vCPU/16GB/256GB`. Supports `$filter` (eq, ne, in, startsWith). Read-only. Nullable.|
|expirationDateTime|DateTimeOffset|Indicates the date and time when the license will expire. The date and time information is shown using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2026 would look like this: `2026-01-01T00:00:00Z`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Not nullable.|
|id|String|The unique identifier for the license. This is a system-generated key. Example: `1a13832e-cd79-497d-be76-24186f55c8b0`. Supports `$filter` (eq). Read-only. Not nullable. Inherits from [entity](../resources/entity.md).|
|latestLicenseStartDateTime|DateTimeOffset|Indicates the start date of the current license term. This is the date of the initial purchase or the most recent renewal. The date and time information is shown using ISO 8601 format and is always in UTC time. For example, midnight UTC on Aug 7, 2024 would look like this: `2024-08-07T00:00:00Z`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Not nullable.|
|licensesCount|Int32|Indicates the total number of licenses purchased. Allowed range is 0 to 2,147,483,647. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Not nullable.|
|licenseType|[cloudPcManagedLicenseType](#cloudpcmanagedlicensetype-values)|Indicates the type of the Cloud PC license. The possible values are: `frontline`, `reserve`, `unknownFutureValue`. Default value is `frontline`. Supports `$filter` (eq, ne, in). Read-only. Not nullable.|
|nextBillingDateTime|DateTimeOffset|Indicates the date and time of the next billing cycle. The date and time information is shown using ISO 8601 format and is always in UTC time. For example, midnight UTC on Sep 7, 2025 would look like this: `2025-09-07T00:00:00Z`. Supports `$filter` (eq, ne, gt, ge, lt, le). Read-only. Nullable.|
|servicePlanId|String|Indicates the unique identifier for the service plan, which defines the specific SKU of the license. For example, this ID maps to a specific offering like 'Cloud PC Enterprise 4vCPU/16GB/256GB'. Example: `3a94476b-504b-41a4-9f6a-18c5199a55e9`. Supports `$filter` (eq). Read-only. Not nullable.|
|status|[cloudPcManagedLicenseStatus](#cloudpcmanagedlicensestatus-values)|Indicates the current status of the license. The possible values are: `enabled`, `expired`, `blocked`, `deleted`, `unknown`, `unknownFutureValue`. Supports `$filter` (eq, ne, in). Read-only. Not nullable.|
|subscriptionId|String|Indicates the ID of the Azure commercial subscription to which the license belongs. This unique identifier specifies the subscription where the license was purchased and is managed by the organization. Example: `0d5b1a2b-4d6e-4b8e-88e2-3e7a5b9d0f1a`. Supports `$filter` (eq). Read-only. Nullable.|

### cloudPcManagedLicenseType values

|Member|Value|Description|
|:---|:---|:---|
|frontline|0|Default. Indicates the Cloud PC license is associated with `frontline` license.|
|reserve|1|The license is a reserve license.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

### cloudPcManagedLicenseStatus values

|Member|Value|Description|
|:---|:---|:---|
|enabled|0|Default. Indicates that the license is active and available for assignment. Cloud PCs can be provisioned or continue to run using this license.|
|expired|1|The license has passed its expiration date and is no longer valid for provisioning or active use.|
|blocked|2|The license is temporarily suspended, often due to administrative action, a grace period, or billing issues. It can't be used for new provisioning until the block is removed.|
|deleted|3|The license has been permanently removed from the tenant's Azure subscription and can't be recovered or used.|
|unknown|4|The license status couldn't be determined. This might be a temporary state during license synchronization or indicate an issue with retrieving data from the billing system.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcManagedLicense",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagedLicense",
  "activeDateTime": "String (timestamp)",
  "allotmentLicensesCount": "Int32",
  "assignedCount": "Int32",
  "displayName": "String",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "latestLicenseStartDateTime": "String (timestamp)",
  "licensesCount": "Int32",
  "licenseType": "String",
  "nextBillingDateTime": "String (timestamp)",
  "servicePlanId": "String",
  "status": "String",
  "subscriptionId": "String"
}
```

