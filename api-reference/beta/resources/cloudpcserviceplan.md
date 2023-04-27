---
title: "cloudPcServicePlan resource type"
description: "Represents a Windows 365 service plan that can be purchased and configured for a Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Windows 365 service plan that can be purchased and configured for a Cloud PC.

For examples of currently available service plans, see [Windows 365 compare plans and pricing](https://www.microsoft.com/windows-365/business/compare-plans-pricing). Currently, the Microsoft Graph API is available for Windows 365 Enterprise.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List servicePlans](../api/virtualendpoint-list-serviceplans.md)|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|List the currently available service plans that the organization can purchase for the Cloud PCs.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name for the service plan. Read-only.|
|id|String|Unique identifier for the service plan. Read-only.|
|ramInGB|Int32|The size of the RAM in GB. Read-only.|
|storageInGB|Int32|The size of the OS Disk in GB. Read-only.|
|type|[cloudPcServicePlanType](#cloudpcserviceplantype-values)|The type of the service plan. Possible values are: `enterprise`, `business`, `unknownFutureValue`. Read-only.|
|userProfileInGB|Int32|The size of the user profile disk in GB. Read-only.|
|vCpuCount|Int32|The number of vCPUs. Read-only.|
|supportedSolution|[cloudPcManagementService](../resources/cloudpconpremisesconnection.md#cloudpcmanagementservice-values)|The supported service or solution for the region. The possible values are: `windows365`, `devBox`, `rpaBox`, `unknownFutureValue`. Read-only.|
|provisioningType|[cloudPcProvisioningType](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values)|Specifies the type of license used when provisioning Cloud PCs. By default, the license type is `dedicated`. Possible values are: `dedicated`, `shared`, `unknownFutureValue`.|

### cloudPcServicePlanType values

|Member|Description|
|:---|:---|
|enterprise|Enterprise service plan type for enterprise customers.|
|business|Business service plan type for Very Small Business (VSB) customers.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcServicePlan",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcServicePlan",
  "displayName": "String",
  "id": "String (identifier)",
  "provisioningType": "String",
  "ramInGB": "Int32",
  "storageInGB": "Int32",
  "supportedSolution": "String",
  "type": "String",
  "userProfileInGB": "Int32",
  "vCpuCount": "Int32"
}
```
