---
title: "userExperienceAnalyticsSettings resource type"
description: "The user experience analytics insight is the recomendation to improve the user experience analytics score."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics insight is the recomendation to improve the user experience analytics score.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurationManagerDataConnectorConfigured|Boolean|When TRUE, indicates Tenant attach is configured properly and System Center Configuration Manager (SCCM) tenant attached devices will show up in endpoint analytics reporting. When FALSE, indicates Tenant attach is not configured. FALSE by default.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsSettings",
  "configurationManagerDataConnectorConfigured": true
}
```
