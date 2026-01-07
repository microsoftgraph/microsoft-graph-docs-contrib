---
title: "mobileAppActionType enum type"
description: "Defines the Action Types for an Intune Application."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppActionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defines the Action Types for an Intune Application.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown result.|
|installCommandSent|1|Application install command was sent.|
|installed|3|Application installed.|
|uninstalled|4|Application uninstalled.|
|userRequestedInstall|5|User requested installation|