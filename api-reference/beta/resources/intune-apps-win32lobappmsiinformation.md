---
title: "win32LobAppMsiInformation resource type"
description: "Contains MSI app properties for a Win32 App."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppMsiInformation resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains MSI app properties for a Win32 App.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|productCode|String|The MSI product code.|
|productVersion|String|The MSI product version.|
|upgradeCode|String|The MSI upgrade code.|
|requiresReboot|Boolean|Whether the MSI app requires the machine to reboot to complete installation.|
|packageType|[win32LobAppMsiPackageType](../resources/intune-apps-win32lobappmsipackagetype.md)|The MSI package type. The possible values are: `perMachine`, `perUser`, `dualPurpose`.|
|productName|String|The MSI product name.|
|publisher|String|The MSI publisher.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppMsiInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppMsiInformation",
  "productCode": "String",
  "productVersion": "String",
  "upgradeCode": "String",
  "requiresReboot": true,
  "packageType": "String",
  "productName": "String",
  "publisher": "String"
}
```