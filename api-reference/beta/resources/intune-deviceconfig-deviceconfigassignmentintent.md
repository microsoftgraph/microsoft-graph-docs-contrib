---
title: "deviceConfigAssignmentIntent enum type"
description: "The administrator intent for the assignment of the profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceConfigAssignmentIntent enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The administrator intent for the assignment of the profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|apply|0|Ensure that the configuration profile is applied to the devices in the assignment.|
|remove|1|Ensure that the configuration profile is removed from devices that have previously installed the configuration profile.|