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

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
