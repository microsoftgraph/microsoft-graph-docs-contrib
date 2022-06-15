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

## Properties
| Property       | Type           | Description                                 | Key       | Required  | ReadOnly  |
| -------------- | -------------- | ------------------------------------------- | --------- | --------- | --------- |
| `displayConcealedNames` | `Boolean` | `true` represent all reports will display concealed user, group, and site names. `false` represent all reports will display real user, group and site names. The value is connected to a checkbox in the M365 Admin Center Setting. | No | Yes | No |

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#adminReportSettings/displayConcealedNames ",
  "value": true
}
```
