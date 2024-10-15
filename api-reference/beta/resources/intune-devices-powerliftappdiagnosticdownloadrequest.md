---
title: "powerliftAppDiagnosticDownloadRequest resource type"
description: "This type contains request details to download app diagnostic files."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# powerliftAppDiagnosticDownloadRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
