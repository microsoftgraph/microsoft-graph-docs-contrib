---
title: "deviceManagementConfigurationSecretSettingValueState enum type"
description: "type tracking the encryption state of a secret setting value"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationSecretSettingValueState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

type tracking the encryption state of a secret setting value

## Members
|Member|Value|Description|
|:---|:---|:---|
|invalid|0|default invalid value|
|notEncrypted|1|secret value is not encrypted|
|encryptedValueToken|2|a token for the encrypted value is returned by the service|
