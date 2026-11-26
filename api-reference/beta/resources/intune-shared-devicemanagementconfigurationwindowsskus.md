---
title: "deviceManagementConfigurationWindowsSkus enum type"
description: "Specifies the Windows SKU families to which a device management configuration setting applies."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationWindowsSkus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the Windows SKU families to which a [deviceManagementConfigurationWindowsSettingApplicability](../resources/intune-shared-devicemanagementconfigurationwindowssettingapplicability.md) resource applies.

## Members

This enum is evolvable. Use the `Prefer: include-unknown-enum-members` request header to get the `windowsServer` member; otherwise, this member is returned as `unknownFutureValue`.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Not yet documented|
|windowsHome|1|Not yet documented|
|windowsProfessional|2|Not yet documented|
|windowsEnterprise|3|Not yet documented|
|windowsEducation|4|Not yet documented|
|windowsMobile|5|Not yet documented|
|windowsMobileEnterprise|6|Not yet documented|
|windowsTeamSurface|7|Not yet documented|
|iot|8|Not yet documented|
|iotEnterprise|9|Not yet documented|
|holoLens|10|Not yet documented|
|holoLensEnterprise|11|Not yet documented|
|holographicForBusiness|12|Not yet documented|
|windowsMultiSession|13|Not yet documented|
|surfaceHub|14|Not yet documented|
|windowsCPC|18|The setting applies to the Windows CPC SKU family.|
|unknownFutureValue|19|Evolvable enumeration sentinel value. Don't use.|
|windowsServer|20|The setting applies to the Windows Server SKU family.|