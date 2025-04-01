---
title: "customAppSettings resource type"
description: "Represents the details about the custom app settings properties of a Teams App."
author: "shsarda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/25/2025
---

# customAppSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide custom app settings for all [Microsoft Teams apps](teamsapp.md) in a tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|developerToolsForShowingAppUsageMetrics|[developerToolsForShowingAppUsageMetrics](../resources/customAppSettings.md#developerToolsForShowingAppUsageMetrics-values)|Developer tools that are allowed to display app usage metrics. Possible values `developerPortal`, `unknownFutureValue`|


## developerToolsForShowingAppUsageMetrics values

| Member | Value| Description |
|:---------------|:--------|:----------|
|unknown|0|Unknown developer tool.|
|developerPortal|1|Enable the Developer Portal to display app usage metrics.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Don't use.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "#microsoft.graph.customAppSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppSettings",
  "developerToolsForShowingAppUsageMetrics": "String"
}
```
