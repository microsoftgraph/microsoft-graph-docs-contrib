---
title: "adminReportSettings resource type"
description: "Represents the tenant-level settings for Microsoft 365 reports."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "reports"
author: "ganggao"
ms.date: 08/12/2024
---

# adminReportSettings resource type

Namespace: microsoft.graph

Represents the tenant-level settings for Microsoft 365 reports.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/adminreportsettings-get.md)|[adminReportSettings](../resources/adminreportsettings.md)|Get the tenant-level settings for Microsoft 365 reports.|
|[Update](../api/adminreportsettings-update.md)|[adminReportSettings](../resources/adminreportsettings.md)|Update tenant-level settings for Microsoft 365 reports.|

## Properties

| Property       | Type           | Description                                 |
| -------------- | -------------- | ------------------------------------------- |
| displayConcealedNames | Boolean | If set to `true`, all reports conceal user information such as usernames, groups, and sites. If `false`, all reports show identifiable information. This property represents a setting in the Microsoft 365 admin center. Required. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.adminReportSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminReportSettings",
  "displayConcealedNames": "Boolean"
}
```
