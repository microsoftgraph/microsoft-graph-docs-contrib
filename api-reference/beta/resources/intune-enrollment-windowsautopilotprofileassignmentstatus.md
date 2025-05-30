---
title: "windowsAutopilotProfileAssignmentStatus enum type"
description: "Intune Enrollment Windowsautopilotprofileassignmentstatus Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsAutopilotProfileAssignmentStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown assignment status|
|assignedInSync|1|Assigned successfully in Intune and in sync with Windows auto pilot program|
|assignedOutOfSync|2|Assigned successfully in Intune and not in sync with Windows auto pilot program|
|assignedUnkownSyncState|3|Assigned successfully in Intune and either in-sync or out of sync with Windows auto pilot program|
|notAssigned|4|Not assigned|
|pending|5|Pending assignment|
|failed|6| Assignment failed|