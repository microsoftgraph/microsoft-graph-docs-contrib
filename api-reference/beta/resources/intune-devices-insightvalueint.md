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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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