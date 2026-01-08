---
title: "customAppSettings resource type"
description: "Represents tenant-wide custom app settings for all Microsoft Teams apps."
author: "shsarda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/25/2025
---

# customAppSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide custom app settings for all [Microsoft Teams apps](teamsapp.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|developerToolsForShowingAppUsageMetrics|[appDevelopmentPlatforms](../resources/customappsettings.md#appdevelopmentplatforms-values)|A comma-separated list of developer tools that are allowed to display app usage metrics. The possible values are: `developerPortal`, `unknownFutureValue`.|

### appDevelopmentPlatforms values

| Member             | Description                                                |
|:-------------------|:-----------------------------------------------------------|
| developerPortal    | Enables the developer portal to display app usage metrics. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.           |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppSettings",
  "developerToolsForShowingAppUsageMetrics": "String"
}
```
