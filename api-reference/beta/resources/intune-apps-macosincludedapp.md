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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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