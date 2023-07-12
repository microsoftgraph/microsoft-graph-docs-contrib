---
title: "win32LobAppPublishingConstraints resource type"
description: "Contains properties for Win32 LOB app publishing constraints."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppPublishingConstraints resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for Win32 LOB app publishing constraints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maxContentFileSizeInBytes|Int64|Indicates the maximum Win32 LOB content file size in bytes that can be uploaded.|

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
