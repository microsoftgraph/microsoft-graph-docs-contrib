---
title: "deviceManagementExchangeConnectorStatus enum type"
description: "The current status of the Exchange Connector."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementExchangeConnectorStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The current status of the Exchange Connector.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No Connector exists.|
|connectionPending|1|Pending Connection to the Exchange Environment.|
|connected|2|Connected to the Exchange Environment|
|disconnected|3|Disconnected from the Exchange Environment|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|