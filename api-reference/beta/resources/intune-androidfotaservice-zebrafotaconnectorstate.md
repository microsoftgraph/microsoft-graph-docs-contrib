---
title: "zebraFotaConnectorState enum type"
description: "Represents various states for Zebra FOTA connector."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# zebraFotaConnectorState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various states for Zebra FOTA connector.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value when the connector has not been setup (the feature has not been used yet).|
|connected|1|Connected state indicates that Intune is linked to Zebra Update Services for the current tenant.|
|disconnected|2|Disconnected state indicates that the account was connected in the past and later disconnected.|
|unknownFutureValue|99|Unknown future enum value.|
