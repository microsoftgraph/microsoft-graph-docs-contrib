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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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