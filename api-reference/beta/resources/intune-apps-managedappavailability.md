---
title: "managedAppAvailability enum type"
description: "A managed (MAM) application's availability."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppAvailability enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A managed (MAM) application's availability.

## Members
|Member|Value|Description|
|:---|:---|:---|
|global|0|A globally available app to all tenants.|
|lineOfBusiness|1|A line of business apps private to an organization.|