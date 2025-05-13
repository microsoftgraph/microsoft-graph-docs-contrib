---
title: "deviceManagementConfigurationSecretSettingValueState enum type"
description: "type tracking the encryption state of a secret setting value"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSecretSettingValueState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

type tracking the encryption state of a secret setting value

## Members
|Member|Value|Description|
|:---|:---|:---|
|invalid|0|default invalid value|
|notEncrypted|1|secret value is not encrypted|
|encryptedValueToken|2|a token for the encrypted value is returned by the service|
