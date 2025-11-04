---
title: "windowsQualityUpdateCveDetail resource type"
description: "Exploitation details for CVE"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCveDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Exploitation details for CVE

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cveNumber|String|Exploitation number of CVE|
|cveInformationUrl|String|Exploitation url of CVE|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateCveDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCveDetail",
  "cveNumber": "String",
  "cveInformationUrl": "String"
}
```