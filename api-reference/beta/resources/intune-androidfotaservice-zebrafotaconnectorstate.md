---
title: "zebraFotaConnectorState enum type"
description: "Represents various states for Zebra FOTA connector."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# zebraFotaConnectorState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various states for Zebra FOTA connector.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value when the connector has not been setup (the feature has not been used yet).|
|connected|1|Connected state indicates that Intune is linked to Zebra Update Services for the current tenant.|
|disconnected|2|Disconnected state indicates that the account was connected in the past and later disconnected.|
|unknownFutureValue|99|Unknown future enum value.|