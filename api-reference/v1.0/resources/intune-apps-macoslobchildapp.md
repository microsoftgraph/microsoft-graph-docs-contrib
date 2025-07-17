---
title: "macOSLobChildApp resource type"
description: "Contains properties of a macOS .app in the package"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# macOSLobChildApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties of a macOS .app in the package

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleId|String|The bundleId of the app.|
|buildNumber|String|The build number of the app.|
|versionNumber|String|The version number of the app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSLobChildApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSLobChildApp",
  "bundleId": "String",
  "buildNumber": "String",
  "versionNumber": "String"
}
```
