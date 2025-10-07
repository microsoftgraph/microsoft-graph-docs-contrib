---
title: "cloudPcManagedLicense resource type"
description: "Represents a license that the Cloud PC service directly manages."
author: "bchopra"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagedLicense resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a license that the Cloud PC service directly manages. This license is distinct from other license types that can be used in the Cloud PC service but aren't managed by it. This entity provides the status and details of policy-managed Cloud PC licenses to help administrators manage license allocation.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-managedlicenses.md)|[cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection|Get information about [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) objects that the Cloud PC service manages directly.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDateTime|DateTimeOffset|The date and time when the license becomes active. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only.| 
|allotmentLicensesCount|Int32|The number of licenses that are allocated to assignments. The total number of allotted licenses can't be greater than the total license count. The allowed range is from `0` to the value of **licensesCount**. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only. Nullable.|
|assignedCount|Int32|The number of licenses currently assigned to users. The allowed range is from `0` to the value of **licensesCount**. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only. |
|displayName|String|The display name of the license. For example, `Cloud PC Enterprise 4vCPU/16GB/256GB`. Supports `$filter` (`eq`, `ne`, `in`, `startsWith`). Read-only.|
|expirationDateTime|DateTimeOffset|The date and time when the license expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only. |
|id |String|The unique identifier for the license. This value is a system-generated key. For example, `1a13832e-cd79-497d-be76-24186f55c8b0`. Supports `$filter` (`eq`). Read-only. Inherits from [entity](../resources/entity.md).|
|latestLicenseStartDateTime|DateTimeOffset|The start date of the current license term. This date is the date of the initial purchase or the most recent renewal. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only.|
|licensesCount|Int32|The total number of licenses purchased. The allowed range is fropm `0` to `2,147,483,647`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only.|
|licenseType|[cloudPcManagedLicenseType](#cloudpcmanagedlicensetype-values)|The type of the Cloud PC license. The possible values are: `frontline`, `reserve`, `unknownFutureValue`. The default value is `frontline`. Supports `$filter` (`eq`, `ne`, `in`). Read-only.|
|nextBillingDateTime|DateTimeOffset|The date and time of the next billing cycle. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`). Read-only.|
|servicePlanId|String|The unique identifier for the service plan that defines the specific stock keeping unit (SKU) of the license. For example, this ID maps to a specific offering like *Cloud PC Enterprise 4vCPU/16GB/256GB*. For example, `3a94476b-504b-41a4-9f6a-18c5199a55e9`. Supports `$filter` (`eq`). Read-only.|
|status|[cloudPcManagedLicenseStatus](#cloudpcmanagedlicensestatus-values)|The current status of the license. The possible values are: `enabled`, `expired`, `blocked`, `deleted`, `unknown`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `in`). Read-only.|
|subscriptionId|String|The ID of the Azure commercial subscription to which the license belongs. This unique identifier specifies the subscription where the organization purchased and manages the license. For example, `0d5b1a2b-4d6e-4b8e-88e2-3e7a5b9d0f1a`. Supports `$filter` (`eq`). Read-only.|

### cloudPcManagedLicenseType values

|Member|Description|
|:---|:---|
|frontline|Default. Indicates that the Cloud PC license is associated with a frontline license.|
|reserve|The license is a reserve license.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcManagedLicenseStatus values

|Member|Description|
|:---|:---|
|enabled|Default. Indicates that the license is active and available for assignment. Cloud PCs can be provisioned or continue to run using this license.|
|expired|The license passes its expiration date and is no longer valid for provisioning or active use.|
|blocked|The license is temporarily suspended, often due to administrative action, a grace period, or billing issues. It can't be used for new provisioning until the block is removed.|
|deleted|The license is permanently removed from Azure subscription for the organization and can't be recovered or used.|
|unknown|The license status can't be determined. This status might be a temporary state during license synchronization or indicate an issue retrieving data from the billing system.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

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

