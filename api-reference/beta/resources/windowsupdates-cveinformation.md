---
title: "cveInformation resource type"
description: "Represents the number and URL of a CVE associated with a Quality Update."
author: "angiechen22"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# cveInformation resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number and URL for a Common Vulnerability and Exposure (CVE).

Information about Common Vulnerabilities and Exposures (CVEs) are maintained by the [Microsoft Security Response Center](https://msrc.microsoft.com/update-guide/vulnerability) (MSRC). MSRC investigates all reports of security vulnerabilities affecting Microsoft products and services, and provides the information here as part of the ongoing effort to help you manage security risks and help keep your systems protected. Each security quality update may address several CVEs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|number|String| Identifying number of the CVE. Read-only.|
|url|String|URL to the full CVE information. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.cveInformation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.cveInformation",
  "id": "String",
  "url": "String"
}
```
