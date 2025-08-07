---
title: "operationApprovalSource enum type"
description: "Source of the action on the approval request."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# operationApprovalSource enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Source of the action on the approval request.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates the source of the action on the approval request is unknown.|
|adminConsole|1|Indicates the source of the action on the approval request is from an interactive session using the Intune Admin Console.|
|email|2|Indicates the source of the action on the approval request is from an email based form.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|