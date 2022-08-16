---
title: "cloudPcConnectivityResult resource type"
description: "Represents the details of the Cloud PC connectivity status."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcConnectivityResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Cloud PC connectivity status, including whether the Cloud PC is available, and if not, the failed health check items.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedHealthCheckItems|[cloudPcHealthCheckItem](../resources/cloudpchealthcheckitem.md) collection|A list of failed health check items. If the status property is `available`, this property will be empty.|
|status|[cloudPcConnectivityStatus](#cloudpcconnectivitystatus-values)|Connectivity status of the Cloud PC. Possible values are: `unknown`, `available`, `availableWithWarning`, `unavailable`, and `unknownFutureValue`.|
|updatedDateTime|string|Datetime when the status was updated. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`. |

### cloudPcConnectivityStatus values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The Cloud PC connectivity status is unknown.|
|available|1|The Cloud PC is able to be connected.|
|availableWithWarning|2|The Cloud PC is able to be connected but there are warnings.|
|unavailable|3|The Cloud PC is unable to be connected.|
|unknownFutureValue|999|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcConnectivityResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcConnectivityResult",
  "failedHealthCheckItems": "String",
  "status": "String",
  "updatedDateTime": "String (timestamp)"
}
```
