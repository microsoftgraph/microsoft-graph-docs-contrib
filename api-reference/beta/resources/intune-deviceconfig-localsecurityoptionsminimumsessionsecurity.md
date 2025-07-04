---
title: "localSecurityOptionsMinimumSessionSecurity enum type"
description: "Possible values for LocalSecurityOptionsMinimumSessionSecurity"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# localSecurityOptionsMinimumSessionSecurity enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for LocalSecurityOptionsMinimumSessionSecurity

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Send LM & NTLM responses|
|requireNtmlV2SessionSecurity|1|Send LM & NTLM-use NTLMv2 session security if negotiated|
|require128BitEncryption|2|Send LM & NTLM responses only|
|ntlmV2And128BitEncryption|3|Send LM & NTLMv2 responses only|