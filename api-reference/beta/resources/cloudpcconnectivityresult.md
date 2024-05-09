---
title: "cloudPcConnectivityResult resource type"
description: "Represents the details of the Cloud PC connectivity status."
author: "yayang3"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
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
|updatedDateTime|string|Datetime when the status was updated. Starting from January 31, 2023, updatedDatetime property will no longer be supported and will be marked as deprecated. Please use lastModifiedDateTime instead. Read-Only. |
|lastModifiedDateTime|string|The last modified time for connectivity status of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. |

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
The following JSON representation shows the resource type.
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
  "updatedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
