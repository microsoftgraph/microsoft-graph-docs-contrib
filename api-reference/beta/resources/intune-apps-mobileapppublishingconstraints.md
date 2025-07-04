---
title: "mobileAppPublishingConstraints resource type"
description: "Contains properties for constraints that the UX need to take into consideration to guide the user experience for app creation and publishing flow."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppPublishingConstraints resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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