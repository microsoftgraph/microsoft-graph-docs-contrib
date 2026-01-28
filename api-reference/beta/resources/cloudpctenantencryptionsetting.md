---
title: "cloudPcTenantEncryptionSetting resource type"
description: "Represents the Cloud PC encryption setting for a tenant."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/18/2024
---

# cloudPcTenantEncryptionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC encryption setting for a tenant. Only one encryption setting can be applied to the tenant.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantDiskEncryptionType|[cloudPcDiskEncryptionType](#cloudpcdiskencryptiontype-values)|Indicates the Cloud PC disk encryption type for a tenant. It is a tenant-level setting that applies globally to all Cloud PCs in the tenant. The possible values are: `platformManagedKey`, `customerManagedKey`, `unknownFutureValue`. Read-only.|
|lastSyncDateTime|DateTimeOffset|Indicates the date and time when last sync tenant encryption setting.|

### cloudPcDiskEncryptionType values

|Member|Description|
|:---|:---|
|platformManagedKey|Default. The Cloud PC disk is encrypted with a platform-managed key.|
|customerManagedKey|Indicates that the Cloud PC disk is encrypted with a customer-managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcTenantEncryptionSetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcTenantEncryptionSetting",
  "tenantDiskEncryptionType": "customerManagedKey",
}
```
