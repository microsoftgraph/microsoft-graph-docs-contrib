---
title: "elevationRequestState enum type"
description: "Indicates state of elevation request"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# elevationRequestState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates state of elevation request

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0||
|pending|1||
|approved|2||
|denied|3||
|expired|4||
|unknownFutureValue|5||
|revoked|6||
|completed|7||