---
title: "adminReportSettings resource type"
description: "Represents the report setting of a tenant. "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "reports"
author: "qiwhuang"
---

# adminReportSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the report setting of a tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get adminReportSettings](../api/adminreportsettings-get.md)|[adminReportSettings](../resources/adminreportsettings.md)|Read the properties and relationships of an [adminReportSettings](../resources/adminreportsettings.md) object.|
|[Update adminReportSettings](../api/adminreportsettings-update.md)|[adminReportSettings](../resources/adminreportsettings.md)|Update the properties of an [adminReportSettings](../resources/adminreportsettings.md) object.|

## Properties

| Property       | Type           | Description                                 |
| -------------- | -------------- | ------------------------------------------- |
| `displayConcealedNames` | `Boolean` | If set to `true`, all reports will conceal user information such as usernames, groups, and sites. If `false`, all reports will display real information. This property represents a setting in the Microsoft 365 admin center. Required. |

## JSON representation

The following is a JSON representation of the resource.
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
