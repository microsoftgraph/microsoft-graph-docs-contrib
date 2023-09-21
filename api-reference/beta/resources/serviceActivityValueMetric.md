---
title: "serviceValueMetric resource type"
description: "Describes the aggregated value of a service activity metric over a given interval from the start time."
author: "zachpeng"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# serviceLevelAgreementAttainment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the aggregated value of a service activity metric over a given interval from the start time.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|intervalStartDateTime|DateTimeOffset|The starting date and time(UTC) of the interval.|
|value|Int64|The aggregated value over the given interval starting from the `intervalStartDateTime`. The value is aggregated at minute level. The value at the starting minute of the `intervalStartDateTime` is included. The value at the last minute of the given interval is excluded.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceLevelAgreementAttainment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceLevelAgreementAttainment",
  "intervalStartDateTime": "DateTimeOffset",
  "value": "Int64"
}
```