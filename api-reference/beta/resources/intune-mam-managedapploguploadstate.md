---
title: "managedAppLogUploadState enum type"
description: "Represents the current status of the associated `managedAppLogCollectionRequest`."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# managedAppLogUploadState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the current status of the associated `managedAppLogCollectionRequest`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|pending|0|Default. The log upload request has been successfully created, and is pending delivery to the Mobile Application Management (MAM) application.|
|inProgress|1|One or more log upload components have uploaded their logs.|
|completed|2|All log upload successfully components have uploaded their logs.|
|declinedByUser|4|The log upload request was declined by the user on the device.|
|timedOut|5|The log upload request was not acknowledged by the user within the allowed time window.|
|failed|6|The log upload request encountered an error.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|