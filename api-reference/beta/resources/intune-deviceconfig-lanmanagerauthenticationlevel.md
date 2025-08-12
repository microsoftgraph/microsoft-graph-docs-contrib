---
title: "lanManagerAuthenticationLevel enum type"
description: "Possible values for LanManagerAuthenticationLevel"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# lanManagerAuthenticationLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for LanManagerAuthenticationLevel

## Members
|Member|Value|Description|
|:---|:---|:---|
|lmAndNltm|0|Send LM & NTLM responses|
|lmNtlmAndNtlmV2|1|Send LM & NTLM-use NTLMv2 session security if negotiated|
|lmAndNtlmOnly|2|Send LM & NTLM responses only|
|lmAndNtlmV2|3|Send LM & NTLMv2 responses only|
|lmNtlmV2AndNotLm|4|Send LM & NTLMv2 responses only. Refuse LM|
|lmNtlmV2AndNotLmOrNtm|5|Send LM & NTLMv2 responses only. Refuse LM & NTLM|