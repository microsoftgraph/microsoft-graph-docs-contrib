---
title: "organizationalMessageLogoGuide resource type"
description: "Example logo and its size requirements"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageLogoGuide resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Example logo and its size requirements

## Properties
|Property|Type|Description|
|:---|:---|:---|
|logoCdnUrl|String|The url at which the logo resides|
|assetName|String|The asset name is the key for this specific logo. This is used to compute the required token when accessing the logoCdnUrl to fetch the logo|
|dimensions|[organizationalMessageLogoDimensions](../resources/intune-partnerintegration-organizationalmessagelogodimensions.md)|The required size dimensions of the logo|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageLogoGuide"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageLogoGuide",
  "logoCdnUrl": "String",
  "assetName": "String",
  "dimensions": {
    "@odata.type": "microsoft.graph.organizationalMessageLogoDimensions",
    "minWidth": 1024,
    "maxWidth": 1024,
    "minHeight": 1024,
    "maxHeight": 1024
  }
}
```




