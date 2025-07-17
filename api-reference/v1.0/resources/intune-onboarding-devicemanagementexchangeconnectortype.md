---
title: "deviceManagementExchangeConnectorType enum type"
description: "The type of Exchange Connector."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementExchangeConnectorType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of Exchange Connector.

## Members
|Member|Value|Description|
|:---|:---|:---|
|onPremises|0|Connects to on-premises Exchange Environment.|
|hosted|1|Connects to O365 multi-tenant Exchange environment|
|serviceToService|2|Intune Service connects directly to O365 multi-tenant Exchange environment|
|dedicated|3|Connects to O365 Dedicated Exchange environment.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
