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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

type tracking the encryption state of a secret setting value

## Members
|Member|Value|Description|
|:---|:---|:---|
|invalid|0|default invalid value|
|notEncrypted|1|secret value is not encrypted|
|encryptedValueToken|2|a token for the encrypted value is returned by the service|
