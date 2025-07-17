---
title: "targetedManagedAppGroupType enum type"
description: "Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/13/2024
---

# targetedManagedAppGroupType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|selectedPublicApps|0|Target the collection of apps manually selected by the admin.|
|allCoreMicrosoftApps|1|Target the core set of Microsoft apps (Office, Edge, etc).|
|allMicrosoftApps|2|Target all apps with Microsoft as publisher.|
|allApps|4|Target all apps with an available assignment.|
