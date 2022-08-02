---
title: "organizationalMessageStatus enum type"
description: "Indicates the deployment status of the message"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# organizationalMessageStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the deployment status of the message

## Members
|Member|Value|Description|
|:---|:---|:---|
|scheduled|0|Indicates that the message has been scheduled for a future date|
|active|1|Indicates that the message is currently live and being presented to clients|
|completed|2|Indicates that the message has been displayed to users already and is no longer active|
|cancelled|3|Indicates that the message has been cancelled and will not be shown|




