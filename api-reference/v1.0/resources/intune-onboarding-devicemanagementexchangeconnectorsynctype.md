---
title: "deviceManagementExchangeConnectorSyncType enum type"
description: "The type of Exchange Connector sync requested."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementExchangeConnectorSyncType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of Exchange Connector sync requested.

## Members
|Member|Value|Description|
|:---|:---|:---|
|fullSync|0|Discover all the device in Exchange.|
|deltaSync|1|Discover only the device in Exchange which have updated during the delta sync window.|
