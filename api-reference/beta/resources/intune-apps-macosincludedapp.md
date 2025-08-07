---
title: "macOSIncludedApp resource type"
description: "Contains properties of an included .app in a MacOS app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSIncludedApp resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties of an included .app in a MacOS app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleId|String|The bundleId of the app. This maps to the CFBundleIdentifier in the app's bundle configuration.|
|bundleVersion|String|The version of the app. This maps to the CFBundleShortVersion in the app's bundle configuration.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSIncludedApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSIncludedApp",
  "bundleId": "String",
  "bundleVersion": "String"
}
```