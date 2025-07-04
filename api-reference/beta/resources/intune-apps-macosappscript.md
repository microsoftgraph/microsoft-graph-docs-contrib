---
title: "macOSAppScript resource type"
description: "Shell script used to assist installation of a macOS app. These scripts are used to perform additional tasks to help the app successfully be configured."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSAppScript resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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