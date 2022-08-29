---
title: "organizationalMessageLogoDimensions resource type"
description: "Contains the required size dimensions of a logo"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageLogoDimensions resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the required size dimensions of a logo

## Properties
|Property|Type|Description|
|:---|:---|:---|
|minWidth|Int32|Minimum width of the logo|
|maxWidth|Int32|Maximum width of the logo|
|minHeight|Int32|Minimum height of the logo|
|maxHeight|Int32|Maximum height of the logo|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageLogoDimensions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageLogoDimensions",
  "minWidth": 1024,
  "maxWidth": 1024,
  "minHeight": 1024,
  "maxHeight": 1024
}
```






