---
title: "windows10AssociatedApps resource type"
description: "Windows 10 Associated Application definition."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windows10AssociatedApps resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows 10 Associated Application definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appType|[windows10AppType](../resources/intune-deviceconfig-windows10apptype.md)|Application type. The possible values are: `desktop`, `universal`.|
|identifier|String|Identifier.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows10AssociatedApps"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10AssociatedApps",
  "appType": "String",
  "identifier": "String"
}
```