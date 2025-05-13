---
title: "localSecurityOptionsAdministratorElevationPromptBehaviorType enum type"
description: "Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# localSecurityOptionsAdministratorElevationPromptBehaviorType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not Configured|
|elevateWithoutPrompting|1|Elevate without prompting.|
|promptForCredentialsOnTheSecureDesktop|2|Prompt for credentials on the secure desktop|
|promptForConsentOnTheSecureDesktop|3|Prompt for consent on the secure desktop|
|promptForCredentials|4|Prompt for credentials|
|promptForConsent|5|Prompt for consent|
|promptForConsentForNonWindowsBinaries|6|Prompt for consent for non-Windows binaries|