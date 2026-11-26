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


Specifies the Windows SKU families to which a [deviceManagementConfigurationWindowsSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationwindowssettingapplicability.md) resource applies.

## Members

This enum is evolvable. Use the `Prefer: include-unknown-enum-members` request header to get the `windowsServer` member; otherwise, this member is returned as `unknownFutureValue`.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0||
|windowsHome|1||
|windowsProfessional|2||
|windowsEnterprise|3||
|windowsEducation|4||
|windowsMobile|5||
|windowsMobileEnterprise|6||
|windowsTeamSurface|7||
|iot|8||
|iotEnterprise|9||
|holoLens|10||
|holoLensEnterprise|11||
|holographicForBusiness|12||
|windowsMultiSession|13||
|surfaceHub|14||
|windowsCPC|18|The setting applies to the Windows CPC SKU family.|
|unknownFutureValue|19|Evolvable enumeration sentinel value. Don't use.|
|windowsServer|20|The setting applies to the Windows Server SKU family.|