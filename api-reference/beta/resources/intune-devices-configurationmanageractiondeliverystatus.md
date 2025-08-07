---
title: "configurationManagerActionDeliveryStatus enum type"
description: "Delivery state of Configuration Manager device action"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# configurationManagerActionDeliveryStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Delivery state of Configuration Manager device action

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Pending to deliver the action to ConfigurationManager|
|pendingDelivery|1|Pending to deliver the action to ConfigurationManager|
|deliveredToConnectorService|2|Action is sent to ConfigurationManager Connector service (cloud)|
|failedToDeliverToConnectorService|3|Failed to send the action to ConfigurationManager Connector service (cloud)|
|deliveredToOnPremisesServer|4|Action is delivered to ConfigurationManager on-prem server|