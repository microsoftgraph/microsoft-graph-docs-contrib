---
title: "win32LobAppPublishingConstraints resource type"
description: "Contains properties for Win32 LOB app publishing constraints."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppPublishingConstraints resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for Win32 LOB app publishing constraints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maxContentFileSizeInBytes|Int64|Indicates the maximum Win32 LOB content file size in bytes that can be uploaded. Valid values 0 to 42949672960|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppPublishingConstraints"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppPublishingConstraints",
  "maxContentFileSizeInBytes": 1024
}
```