---
title: "macOSAppleEventReceiver resource type"
description: "Represents a process that can receive an Apple Event notification."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSAppleEventReceiver resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a process that can receive an Apple Event notification.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|codeRequirement|String|Code requirement for the app or binary that receives the Apple Event.|
|identifier|String|Bundle ID of the app or file path of the process or executable that receives the Apple Event.|
|identifierType|[macOSProcessIdentifierType](../resources/intune-deviceconfig-macosprocessidentifiertype.md)|Use bundle ID for an app or path for a process or executable that receives the Apple Event. Possible values are: `bundleID`, `path`.|
|allowed|Boolean|Allow or block this app from receiving Apple events.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSAppleEventReceiver"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSAppleEventReceiver",
  "codeRequirement": "String",
  "identifier": "String",
  "identifierType": "String",
  "allowed": true
}
```