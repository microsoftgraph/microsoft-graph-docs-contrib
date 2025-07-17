---
title: "mobileAppIntent enum type"
description: "Indicates the status of the mobile app on the device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppIntent enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the status of the mobile app on the device.

## Members
|Member|Value|Description|
|:---|:---|:---|
|available|0|Available|
|notAvailable|1|Not Available|
|requiredInstall|2|Required Install|
|requiredUninstall|3|Required Uninstall|
|requiredAndAvailableInstall|4|RequiredAndAvailableInstall|
|availableInstallWithoutEnrollment|5|AvailableInstallWithoutEnrollment|
|exclude|6|Exclude|