---
title: "cloudPcServicePlan resource type"
description: "Represents a Windows 365 service plan configured for a Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Windows 365 service plan configured for a Cloud PC.

For examples of currently available service plans, see [Windows 365 compare plans and pricing](https://www.microsoft.com/windows-365/business/compare-plans-pricing). Currently, Microsoft Graph API is available for Windows 365 Enterprise.

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
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "vCpuCount": "Int32",
  "ramInGB": "Int32",
  "storageInGB": "Int32",
  "userProfileInGB": "Int32"
}
```
