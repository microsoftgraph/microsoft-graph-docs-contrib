---
title: "automaticUpdateMode enum type"
description: "Possible values for automatic update mode."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# automaticUpdateMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for automatic update mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|notifyDownload|1|Notify on download.|
|autoInstallAtMaintenanceTime|2|Auto-install at maintenance time.|
|autoInstallAndRebootAtMaintenanceTime|3|Auto-install and reboot at maintenance time.|
|autoInstallAndRebootAtScheduledTime|4|Auto-install and reboot at scheduled time.|
|autoInstallAndRebootWithoutEndUserControl|5|Auto-install and restart without end-user control|
|windowsDefault|6|Reset to Windows default value.|