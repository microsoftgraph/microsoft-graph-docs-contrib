---
title: "userExperienceAnalyticsAnomalySeverityOverview resource type"
description: "The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAnomalySeverityOverview resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lowSeverityAnomalyCount|Int32|Indicates count of low severity anomalies which have been detected. Valid values -2147483648 to 2147483647|
|mediumSeverityAnomalyCount|Int32|Indicates count of medium severity anomalies which have been detected. Valid values -2147483648 to 2147483647|
|highSeverityAnomalyCount|Int32|Indicates count of high severity anomalies which have been detected. Valid values -2147483648 to 2147483647|
|informationalSeverityAnomalyCount|Int32|Indicates count of informational severity anomalies which have been detected. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalySeverityOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalySeverityOverview",
  "lowSeverityAnomalyCount": 1024,
  "mediumSeverityAnomalyCount": 1024,
  "highSeverityAnomalyCount": 1024,
  "informationalSeverityAnomalyCount": 1024
}
```
