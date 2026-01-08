---
title: "edgeSearchEngine resource type"
description: "Allows IT admins to set a predefined default search engine for MDM-Controlled devices."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# edgeSearchEngine resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Allows IT admins to set a predefined default search engine for MDM-Controlled devices.


Inherits from [edgeSearchEngineBase](../resources/intune-deviceconfig-edgesearchenginebase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|edgeSearchEngineType|[edgeSearchEngineType](../resources/intune-deviceconfig-edgesearchenginetype.md)|Allows IT admins to set a predefined default search engine for MDM-Controlled devices. The possible values are: `default`, `bing`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.edgeSearchEngine"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.edgeSearchEngine",
  "edgeSearchEngineType": "String"
}
```