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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Source of the action on the approval request.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates the source of the action on the approval request is unknown.|
|adminConsole|1|Indicates the source of the action on the approval request is from an interactive session using the Intune Admin Console.|
|email|2|Indicates the source of the action on the approval request is from an email based form.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|