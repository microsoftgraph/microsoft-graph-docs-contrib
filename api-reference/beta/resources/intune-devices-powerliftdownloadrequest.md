---
title: "powerliftDownloadRequest resource type"
description: "Request used to download app diagnostic files."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# powerliftDownloadRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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