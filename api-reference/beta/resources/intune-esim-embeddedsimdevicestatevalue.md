---
title: "embeddedSIMDeviceStateValue enum type"
description: "Describes the various states for an embedded SIM activation code."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# embeddedSIMDeviceStateValue enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the various states for an embedded SIM activation code.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notEvaluated|0|Designates that the embedded SIM activation code is free and available to be assigned to a device.|
|failed|1|Designates that Intune Service failed to deliver this profile to a device.|
|installing|2|Designates that the embedded SIM activation code has been assigned to a device and the device is installing the token.|
|installed|3|Designates that the embedded SIM activation code has been successfully installed on the target device.|
|deleting|4|Designates that Intune Service is trying to delete the profile from the device.|
|error|5|Designates that there is error with this profile.|
|deleted|6|Designates that the profile is deleted from the device.|
|removedByUser|7|Designates that the profile is removed from the device by the user|