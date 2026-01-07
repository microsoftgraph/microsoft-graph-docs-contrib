---
title: "connectorHealthState enum type"
description: "Connector health state for connector status"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# connectorHealthState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Connector health state for connector status

## Members
|Member|Value|Description|
|:---|:---|:---|
|healthy|0|Indicates a healthy connector status and no action required.|
|warning|1|Indicates that a connector needs attention.|
|unhealthy|2|Indicates that a connector needs immediate attention to retain functionality.|
|unknown|3|unknown|