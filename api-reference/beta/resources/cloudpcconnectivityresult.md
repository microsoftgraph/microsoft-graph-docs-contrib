---
title: "cloudPcConnectivityResult resource type"
description: "Represents the details of the cloud pc connectivity status."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcConnectivityResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the cloud pc connectivity status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedHealthCheckItems|[cloudPcHealthCheckItem](../resources/cloudpchealthcheckitem.md) collection|A list of failed health check items. If `status` is `available`, this property will be empty.|
|status|[cloudPcConnectivityStatus](#cloudpcconnectivitystatus-values)|Connectivity status of the Cloud PC. Possible values are: `unknown`, `available`, `availableWithWarning`, `unavailable`.|
|updatedDateTime|string|Datetime when the status was updated. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`. |

### cloudPcConnectivityStatus values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The cloud pc connectivity status is unknown.|
|available|1|The cloud pc is able to be connected.|
|availableWithWarning|2|The cloud pc is able to be connected but there are warnings.|
|unavailable|3|The cloud pc is unable to be connected.|
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