---
title: "mobileAppEnforcementIntentType enum type"
description: "A list of possible app enforcement intents."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppEnforcementIntentType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible app enforcement intents.

## Members
|Member|Value|Description|
|:---|:---|:---|
|requiredInstall|0|Indicates that the app should be installed for the target users or devices.|
|requiredUninstall|1|Indicates that the app should be uninstalled for the target users or devices.|
|available|2|Indicates that the app should be available for enforcement to the target users or devices.|
|availableWithoutEnrollment|3|Indicates that the app should be available for enforcement for the target users.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|