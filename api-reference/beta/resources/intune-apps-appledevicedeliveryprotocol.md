---
title: "appleDeviceDeliveryProtocol enum type"
description: "Enum of the supported types of Apple delivery protocols, representing the available protocols to deliver payloads to Apple devices"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# appleDeviceDeliveryProtocol enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum of the supported types of Apple delivery protocols, representing the available protocols to deliver payloads to Apple devices

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|Default. Set if the client hasn't specified a value for an entity. Indicates the payload will be delivered to devices using Intune's default delivery protocol, which is Mobile Device Management (MDM). This protocol is not specific to the apps payload.|
|mobileDeviceManagement|1|Indicates the payload will be delivered to devices using the Mobile Device Management (MDM) protocol. This protocol is not specific to the apps payload.|
|declarativeDeviceManagement|2|Indicates the payload will be delivered to devices using the Declarative Device Management (DDM) protocol. This protocol is not specific to the apps payload.|
|unknownFutureValue|3|Unknown future value, reserved for future usage as expandable enum.|