---
title: "managedAppDeviceThreatLevel enum type"
description: "The maxium threat level allowed for an app to be compliant."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppDeviceThreatLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The maxium threat level allowed for an app to be compliant.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Value not configured|
|secured|1|Device needs to have no threat|
|low|2|Device needs to have a low threat.|
|medium|3|Device needs to have not more than medium threat.|
|high|4|Device needs to have not more than high threat|