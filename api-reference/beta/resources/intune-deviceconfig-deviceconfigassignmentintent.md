---
title: "deviceConfigAssignmentIntent enum type"
description: "The administrator intent for the assignment of the profile."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceConfigAssignmentIntent enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The administrator intent for the assignment of the profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|apply|0|Ensure that the configuration profile is applied to the devices in the assignment.|
|remove|1|Ensure that the configuration profile is removed from devices that have previously installed the configuration profile.|
