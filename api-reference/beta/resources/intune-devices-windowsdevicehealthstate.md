---
title: "windowsDeviceHealthState enum type"
description: "Computer endpoint protection state"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsDeviceHealthState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Computer endpoint protection state

## Members
|Member|Value|Description|
|:---|:---|:---|
|clean|0|Computer is clean and no action is required|
|fullScanPending|1|Computer is in pending full scan state|
|rebootPending|2|Computer is in pending reboot state|
|manualStepsPending|4|Computer is in pending manual steps state|
|offlineScanPending|8|Computer is in pending offline scan state|
|critical|16|Computer is in critical failure state|