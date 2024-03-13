---
title: "elevationRequestState enum type"
description: "Indicates state of elevation request"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# elevationRequestState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates state of elevation request

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default Value. Indicates that elevation request status is unavailable|
|pending|1|Initial state when request is submitted but no approval/denial action taken|
|approved|2|Indicates elevation request has been approved by IT Admin.|
|denied|3|Indicates elevation request has been denied by IT Admin.|
|expired|4|Set to expire when Approved for is elapsed or ExpireDate is elapsed, whichever is sooner.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|
|revoked|6|Set to expire when Approved for is elapsed or ExpireDate is elapsed, whichever is sooner.|
