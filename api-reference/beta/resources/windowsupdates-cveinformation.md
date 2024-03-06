---
title: "cveInformation resource type"
description: "Represents the number and URL for a Common Vulnerability and Exposure (CVE)."
author: "angiechen22"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# cveInformation resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number and URL for a Common Vulnerability and Exposure (CVE).

Information about CVEs is maintained by the [Microsoft Security Response Center](https://msrc.microsoft.com/update-guide/vulnerability). The Microsoft Security Response Center investigates all reports of security vulnerabilities that affect Microsoft products and services, and provides the information as part of the ongoing effort to help you manage security risks and help keep your systems protected. Each security quality update may address many CVEs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|number|String| Identifies the number of the CVE. Read-only.|
|url|String| URL to the full CVE information. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "number",
  "@odata.type": "microsoft.graph.windowsUpdates.cveInformation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.cveInformation",
  "number": "String (identifier)",
  "url": "String"
}
```
