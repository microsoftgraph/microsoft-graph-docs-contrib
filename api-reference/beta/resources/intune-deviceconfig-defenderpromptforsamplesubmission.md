---
title: "defenderPromptForSampleSubmission enum type"
description: "Possible values for prompting user for samples submission."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderPromptForSampleSubmission enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for prompting user for samples submission.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|alwaysPrompt|1|Always prompt.|
|promptBeforeSendingPersonalData|2|Send safe samples automatically.|
|neverSendData|3|Never send data.|
|sendAllDataWithoutPrompting|4|Send all data without prompting.|