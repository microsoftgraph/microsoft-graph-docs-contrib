---
title: "cloudPcTenantEncryptionSetting resource type"
description: "Represents the Cloud PC encryption setting for a tenant."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcTenantEncryptionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC encryption setting for a tenant. Only one encryption setting can be applied to the tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcTenantEncryptionSetting](../api/virtualEndpoint-retrieveTenantEncryptionSetting.md)|[cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md)|Retrieve the encryption setting of the tenant associated with the current authenticated user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantDiskEncryptionType|[cloudPcDiskEncryptionType](#cloudpcdiskencryptiontype-values)|Indicates the Cloud PC disk encryption type for a tenant. It is a tenant-level setting that applies globally to all Cloud PCs in the tenant. Possible values are: `platformManagedKey`, `customerManagedKey`, `unknownFutureValue`. Read-only.|
|lastSyncDateTime|DateTimeOffset|Indicates the date and time when last sync tenant encryption setting.|

### cloudPcDiskEncryptionType values

|Member|Description|
|:---|:---|
|platformManagedKey|Default. The Cloud PC disk is encrypted with a platform-managed key.|
|customerManagedKey|Indicates the Cloud PC disk is encrypted with a customer-managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource.
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
