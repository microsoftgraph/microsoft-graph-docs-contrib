---
title: "macOSAppScript resource type"
description: "Shell script used to assist installation of a macOS app. These scripts are used to perform additional tasks to help the app successfully be configured."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# macOSAppScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Shell script used to assist installation of a macOS app. These scripts are used to perform additional tasks to help the app successfully be configured.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|scriptContent|String|The base64 encoded shell script (.sh) that assists managing macOS apps.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSAppScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSAppScript",
  "scriptContent": "String"
}
```
