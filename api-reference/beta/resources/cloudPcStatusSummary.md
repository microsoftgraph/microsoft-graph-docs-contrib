---
title: "cloudPcStatusSummary resource type"
description: "Represents Cloud PC count with this status."
author: "ziqifu9527"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/05/2025
---

# cloudPcStatusSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Cloud PC count with this status.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve Cloud PC count group by Status column](../api/cloudpc-retrieveCloudPcCountByStatus.md)|[cloudPcStatusSummary](../resources/cloudPcStatusSummary.md) collection|Retrieve [cloudPcStatusSummary](../resources/cloudPcStatusSummary.md) for each status.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|status|[cloudPcStatus](../resources/cloudpc.md/#cloudpcstatus-values)|The status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `inGracePeriod`, `deprovisioning`, `failed`, `provisionedWithWarnings`, `resizing`, `restoring`, `pendingProvision`, `unknownFutureValue`, `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `preparing`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `preparing`.|
|count|Int32|The count of Cloud PCs with this status.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcStatusSummary"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStatusSummary",
  "status": "String",
  "count": "Int32",
}
```
