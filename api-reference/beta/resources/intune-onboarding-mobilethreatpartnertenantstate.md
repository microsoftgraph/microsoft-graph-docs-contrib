---
title: "mobileThreatPartnerTenantState enum type"
description: "Partner state of this tenant."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# mobileThreatPartnerTenantState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Partner state of this tenant.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unavailable|0|Partner is unavailable.|
|available|1|Partner is available.|
|enabled|2|Partner is enabled.|
|unresponsive|3|Partner is unresponsive.|
|notSetUp|4|Indicates that the partner connector is not set up. This can occur when the connector is not provisioned and Intune has not received a heartbeat for the connector. Please see https://go.microsoft.com/fwlink/?linkid=2239039 for more information on connector states.|
|error|5|Indicates that the partner connector is in an error state. This can occur when the connector has a non-zero error code set due to an internal error in processing. Please see https://go.microsoft.com/fwlink/?linkid=2239039 for more information on connector states.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|
