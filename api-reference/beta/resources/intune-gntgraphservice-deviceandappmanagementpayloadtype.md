---
title: "deviceAndAppManagementPayloadType enum type"
description: "The DeviceAndAppManagementPayloadType represents the type of a payload assigned to a target."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementPayloadType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The DeviceAndAppManagementPayloadType represents the type of a payload assigned to a target.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value. Do not use.|
|settingsCatalog|1|Indicates that the payload is of settings catalog type.|
|securityBaseline|2|Indicates that the payload is of security baseline type.|
|antivirus|3|Indicates that the payload is of antivirus type.|
|diskEncryption|4|Indicates that the payload is of disk encryption type.|
|attackSurfaceReduction|5|Indicates that the payload is of attack surface reduction type.|
|firewall|6|Indicates that the payload is of firewall type.|
|endpointDetectionAndResponse|7|Indicates that the payload is of endpoint detection and response type.|
|compliancePolicy|8|Indicates that the payload is of compliance policy type.|
|deviceRestrictions|9|Indicates that the payload is of device restriction type.|
|unknownFutureValue|10|Evolvable enumeration sentinel value. Do not use.|