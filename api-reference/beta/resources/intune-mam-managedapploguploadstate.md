---
title: "managedAppLogUploadState enum type"
description: "Represents the current status of the associated `managedAppLogCollectionRequest`."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppLogUploadState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the current status of the associated `managedAppLogCollectionRequest`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|pending|0|Default. The log upload request has been successfully created, and is pending delivery to the Mobile Application Management (MAM) application.|
|inProgress|1|One or more log upload components have uploaded their logs.|
|completed|2|All log upload successfully components have uploaded their logs.|
|declinedByUser|3|The log upload request was declined by the user on the device.|
|timedOut|4|The log upload request was not acknowledged by the user within the allowed time window.|
|failed|5|The log upload request encountered an error.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|