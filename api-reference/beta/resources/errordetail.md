---
title: "errorDetail resource type"
description: "Represents the information and properties of an errorDetail object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# errorDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of an [errorDetail](../resources/errordetail.md) object. This resource allows the admins to get details of errors found during a [configurationMonitor](../resources/configurationmonitor.md) run or a [configurationSnapshotJob](../resources/configurationsnapshotjob.md). These details help admins identify the issues. When the administrator resolves the issues, the monitor and snapshot jobs run successfully.

Administrators can use the `$select` query parameter to get **errorDetails** from the [configurationMonitoringResult](../resources/configurationmonitoringresult.md) and [configurationSnapshotJob](../resources/configurationsnapshotjob.md) APIs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errorMessage|String|The message that describes the error to help the admin take action.|
|resourceInstanceName|String|The resource type identifier.|
|resourceType|String|Name of the resource type.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.errorDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.errorDetail",
  "errorMessage": "String",
  "resourceInstanceName": "String",
  "resourceType": "String"
}
```

