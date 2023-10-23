---
title: "cloudPcTenantEncryptionSetting resource type"
description: "Represents the Cloud PC encryption setting for a tenant."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcTenantEncryptionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC organization settings for a tenant. A tenant has only one **cloudPcTenantEncryptionSetting** object.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcTenantEncryptionSetting](../api/virtualEndpoint-retrieveTenantEncryptionSetting.md)|[cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md)|Retrieve the tenant encryption setting of the tenant with authenticated IT admin.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantDiskEncryptionType|[cloudPcDiskEncryptionType](#cloudpcdiskencryptiontype-values)|Defines the Cloud PC disk encryption type of a tenant. Possible values are: `platformManagedKey`, `customerManagedKey`, `unknownFutureValue`. Read-only.|

### cloudPcDiskEncryptionType values

|Member|Description|
|:---|:---|
|platformManagedKey|Default. The Cloud PC disk is encrypted with a platform managed key.|
|customerManagedKey|Indicates the Cloud PC disk is encrypted with a customer managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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
