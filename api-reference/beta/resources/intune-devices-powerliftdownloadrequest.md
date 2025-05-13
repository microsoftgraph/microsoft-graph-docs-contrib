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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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