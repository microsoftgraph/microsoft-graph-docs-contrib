---
title: "deviceInventoryQueryRequestStatus enum type"
description: "Indicates the current status of an Intune Pivot Multi-Device query request."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# deviceInventoryQueryRequestStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the current status of an Intune Pivot Multi-Device query request.

## Members
|Member|Value|Description|
|:---|:---|:---|
|created|0|Default. Indicates that the query request has been created.|
|submitted|1|Indicates that the query request has been successfully submitted for execution.|
|inProgress|2|Indicates that the query request is currently being executed and waiting for results.|
|timedOut|3|Indicates that the query request's execution did not complete within the timeout configured by the backend service.|
|failed|4|Indicates that query request's execution failed.|
|completed|5|Indicates that the query request's execution completed and the result is valid.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|
