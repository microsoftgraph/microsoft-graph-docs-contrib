---
title: "managedAppLogUpload resource type"
description: "A `managedAppLogUpload` represents the log upload result for a given Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedAppLogUpload resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A `managedAppLogUpload` represents the log upload result for a given Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedAppComponent|String|The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.|
|managedAppComponentDescription|String|The Mobile Application Management (MAM) Logs Uploading Component. Such components can be the application itself, the MAM SDK, and other on-device components that are capable of uploading diagnostic logs. Read-only.|
|status|[managedAppLogUploadState](../resources/intune-mam-managedapploguploadstate.md)|The status of the log upload. If a result is present, the log collection is complete and the upload status for the component is final. completed is the default value. Read-only. Possible values are: `pending`, `inProgress`, `completed`, `declinedByUser`, `timedOut`, `failed`, `unknownFutureValue`.|
|referenceId|String|A provider-specific reference id for the uploaded logs. Read-only.|

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
  "managedAppComponentDescription": "String",
  "status": "String",
  "referenceId": "String"
}
```