---
title: "powerliftDownloadRequest resource type"
description: "Request used to download app diagnostic files."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# powerliftDownloadRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Request used to download app diagnostic files.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|powerliftId|Guid|The unique id for the request|
|files|String collection|The list of files to download|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.powerliftDownloadRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.powerliftDownloadRequest",
  "powerliftId": "Guid",
  "files": [
    "String"
  ]
}
```
