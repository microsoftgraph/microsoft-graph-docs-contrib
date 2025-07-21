---
title: "appListType enum type"
description: "Possible values of the compliance app list."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# appListType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the compliance app list.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value, no intent.|
|appsInListCompliant|1|The list represents the apps that will be considered compliant (only apps on the list are compliant).|
|appsNotInListCompliant|2|The list represents the apps that will be considered non compliant (all apps are compliant except apps on the list).|