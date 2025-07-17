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
