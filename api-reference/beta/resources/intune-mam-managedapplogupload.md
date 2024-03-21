---
title: "managedAppLogUpload resource type"
description: "A `managedAppLogUpload` represents the log upload result for a given Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedAppLogUpload resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A `managedAppLogUpload` represents the log upload result for a given Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedAppComponent|String|The Mobile Application Management (MAM) Logs Uploading Component.|
|status|[managedAppLogUploadState](../resources/intune-mam-managedapploguploadstate.md)|The status of the log upload. Possible values are: `pending`, `partiallyCompleted`, `completed`, `cancelled`, `cancelledByUser`, `timedOut`, `failed`, `unknownFutureValue`.|
|referenceId|String|A provider-specific reference id for the uploaded logs.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedAppLogUpload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppLogUpload",
  "managedAppComponent": "String",
  "status": "String",
  "referenceId": "String"
}
```
