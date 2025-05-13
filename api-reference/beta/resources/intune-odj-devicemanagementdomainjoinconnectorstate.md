---
title: "deviceManagementDomainJoinConnectorState enum type"
description: "The ODJ request states."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementDomainJoinConnectorState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ODJ request states.

## Members
|Member|Value|Description|
|:---|:---|:---|
|active|0|Connector is actively pinging Intune.|
|error|1|There is no heart-beat from connector from last one hour.|
|inactive|2|There is no heart-beat from connector from last 5 days.|