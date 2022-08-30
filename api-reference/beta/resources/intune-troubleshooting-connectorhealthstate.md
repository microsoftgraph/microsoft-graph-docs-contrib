---
title: "connectorHealthState enum type"
description: "Connector health state for connector status"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# connectorHealthState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Connector health state for connector status

## Members
|Member|Value|Description|
|:---|:---|:---|
|healthy|0|Indicates a healthy connector status and no action required.|
|warning|1|Indicates that a connector needs attention.|
|unhealthy|2|Indicates that a connector needs immediate attention to retain functionality.|
|unknown|3|unknown|