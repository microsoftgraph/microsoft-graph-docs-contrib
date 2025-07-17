---
title: "iosHomeScreenFolderPage resource type"
description: "A page for a folder containing apps and web clips on the Home Screen."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosHomeScreenFolderPage resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A page for a folder containing apps and web clips on the Home Screen.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the folder page|
|apps|[iosHomeScreenApp](../resources/intune-deviceconfig-ioshomescreenapp.md) collection|A list of apps and web clips to appear on a page within a folder. This collection can contain a maximum of 500 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosHomeScreenFolderPage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenFolderPage",
  "displayName": "String",
  "apps": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenApp",
      "displayName": "String",
      "bundleID": "String"
    }
  ]
}
```
