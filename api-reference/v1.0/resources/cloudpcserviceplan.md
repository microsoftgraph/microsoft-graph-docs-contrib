---
title: "cloudPcServicePlan resource type"
description: "Represents a Windows 365 service plan that can be purchased and configured for a Cloud PC."
author: "johnnyjiang1"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/08/2026
---

# cloudPcServicePlan resource type

Namespace: microsoft.graph

Represents a Windows 365 service plan that can be purchased and configured for a Cloud PC.

For examples of currently available service plans, see [Windows 365 compare plans and pricing](https://www.microsoft.com/windows-365/business/compare-plans-pricing). Currently, the Microsoft Graph API is available for Windows 365 Enterprise.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-serviceplans.md)|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|List the currently available [service plans](../resources/cloudpcserviceplan.md) that an organization can purchase for their Cloud PCs.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name for the service plan. Read-only.|
|id|String|Unique identifier for the service plan. Read-only.|
|ramInGB|Int32|The size of the RAM in GB. Read-only.|
|storageInGB|Int32|The size of the operating system disk in GB. Read-only.|
|vCpuCount|Int32|The number of vCPUs. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "ramInGB": "Int32",
  "storageInGB": "Int32",
  "vCpuCount": "Int32"
}
```
