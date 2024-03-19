---
title: "managedAppLogUploadConsent enum type"
description: "Represents the current consent status of the associated `managedAppLogCollectionRequest`."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# managedAppLogUploadConsent enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the current consent status of the associated `managedAppLogCollectionRequest`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|The Default state. This state is automatically assigned at request creation time, and is updated when the User Accepts or Declines the log collection request.|
|declined|1|The User has Declined the Log Collection Request. Log uploads will not occur and the request will be abandoned.|
|accepted|2|The User has Accepted the Log Collection Request. Log uploads will occur.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
