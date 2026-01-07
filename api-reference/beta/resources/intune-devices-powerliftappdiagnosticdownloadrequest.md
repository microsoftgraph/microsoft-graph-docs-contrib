---
title: "powerliftAppDiagnosticDownloadRequest resource type"
description: "This type contains request details to download app diagnostic files."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# powerliftAppDiagnosticDownloadRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This type contains request details to download app diagnostic files.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|powerliftId|String|The unique id for the request that serves as an identifer for the diagnostic to be downloaded.|
|files|String collection|The list of files to download which is associated with the diagnostic.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.powerliftAppDiagnosticDownloadRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.powerliftAppDiagnosticDownloadRequest",
  "powerliftId": "String",
  "files": [
    "String"
  ]
}
```