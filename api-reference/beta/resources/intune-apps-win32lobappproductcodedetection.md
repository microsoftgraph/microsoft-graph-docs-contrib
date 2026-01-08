---
title: "win32LobAppProductCodeDetection resource type"
description: "Contains product code and version properties to detect a Win32 App"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppProductCodeDetection resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains product code and version properties to detect a Win32 App


Inherits from [win32LobAppDetection](../resources/intune-apps-win32lobappdetection.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|productCode|String|The product code of Win32 Line of Business (LoB) app.|
|productVersionOperator|[win32LobAppDetectionOperator](../resources/intune-apps-win32lobappdetectionoperator.md)|The operator to detect product version. The possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|productVersion|String|The product version of Win32 Line of Business (LoB) app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppProductCodeDetection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppProductCodeDetection",
  "productCode": "String",
  "productVersionOperator": "String",
  "productVersion": "String"
}
```