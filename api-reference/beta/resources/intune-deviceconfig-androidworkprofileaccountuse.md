---
title: "androidWorkProfileAccountUse enum type"
description: "An enum representing possible values for account use in work profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidWorkProfileAccountUse enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for account use in work profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|allowAllExceptGoogleAccounts|0|Allow additon of all accounts except Google accounts in Android Work Profile.|
|blockAll|1|Block any account from being added in Android Work Profile. |
|allowAll|2|Allow addition of all accounts (including Google accounts) in Android Work Profile.|
|unknownFutureValue|3|Unknown future value for evolvable enum patterns.|