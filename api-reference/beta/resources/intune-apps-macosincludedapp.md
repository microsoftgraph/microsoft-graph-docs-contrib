---
title: "macOSIncludedApp resource type"
description: "Contains properties of an included .app in a MacOS app."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# macOSIncludedApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
