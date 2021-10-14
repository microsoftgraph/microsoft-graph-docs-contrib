---
title: "cloudPcServicePlan resource type"
description: "Represents a defined collection of service plan configurations that Cloud PCs support for a tenant."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of service plan configurations that Cloud PCs support for a tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List servicePlans](../api/virtualendpoint-list-serviceplans.md)|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|List the service plans that Cloud PCs support for this tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the service plan. Read-only.|
|displayName|String|The name for the service plan. Read-only.|
|ramInGB|Int32|The size of RAM in GB. Read-only.|
|storageInGB|Int32|The size of OS Disk in GB. Read-only.|
|type|[cloudPcServicePlanType](#cloudpcserviceplantype-values)|The type of the service plan. There will be 2 types including 'enterprise' and 'business' now. Read-only.|
|userProfileInGB|Int32|The size of user profile disk in GB. Read-only.|
|vCpuCount|Int32|The number of vCPUs. Read-only.|

### cloudPcServicePlanType values

|Member|Description|
|:---|:---|
|enterprise|Enterprise service plan type for enterprise customer.|
|business|Business service plan type for Very Small Business(VSB) customer.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

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
  "vCpuCount": "Integer",
  "ramInGB": "Integer",
  "storageInGB": "Integer",
  "userProfileInGB": "Integer"
}
```
