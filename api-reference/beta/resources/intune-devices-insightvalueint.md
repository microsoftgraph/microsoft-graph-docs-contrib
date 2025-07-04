---
title: "insightValueInt resource type"
description: "The value in an user experience analytics insight."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# insightValueInt resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The value in an user experience analytics insight.


Inherits from [userExperienceAnalyticsInsightValue](../resources/intune-devices-userexperienceanalyticsinsightvalue.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|Int32|The int value of the user experience analytics insight.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.insightValueInt"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.insightValueInt",
  "value": 1024
}
```