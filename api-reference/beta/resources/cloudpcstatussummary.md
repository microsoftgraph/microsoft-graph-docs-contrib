---
title: "cloudPcStatusSummary resource type"
description: "Represents the number of Cloud PCs for each status."
author: "ziqifu9527"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/05/2025
---

# cloudPcStatusSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number of Cloud PCs for each status.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|count|Int32|The count of Cloud PCs with this status.|
|status|[cloudPcStatus](../resources/cloudpc.md#cloudpcstatus-values)|The status of the Cloud PC. The possible values are: `notProvisioned`, `provisioning`, `provisioned`, `inGracePeriod`, `deprovisioning`, `failed`, `provisionedWithWarnings`, `resizing`, `restoring`, `pendingProvision`, `unknownFutureValue`, `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`,`refreshPolicyConfiguration`, `preparing`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `preparing`.|

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
  "count": "Int32",
  "status": "String"
}
```
