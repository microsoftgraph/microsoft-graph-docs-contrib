---
title: "userExperienceAnalyticsAnomalySeverityOverview resource type"
description: "The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalySeverityOverview resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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