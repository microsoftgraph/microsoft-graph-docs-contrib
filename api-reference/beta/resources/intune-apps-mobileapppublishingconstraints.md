---
title: "mobileAppPublishingConstraints resource type"
description: "Contains properties for constraints that the UX need to take into consideration to guide the user experience for app creation and publishing flow."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppPublishingConstraints resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for constraints that the UX need to take into consideration to guide the user experience for app creation and publishing flow.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|win32LobAppConstraints|[win32LobAppPublishingConstraints](../resources/intune-apps-win32lobapppublishingconstraints.md)|Contains properties for Win32 LOB app publishing constraints.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppPublishingConstraints"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppPublishingConstraints",
  "win32LobAppConstraints": {
    "@odata.type": "microsoft.graph.win32LobAppPublishingConstraints",
    "maxContentFileSizeInBytes": 1024
  }
}
```
