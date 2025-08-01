---
title: "mobileAppDependencyType enum type"
description: "Indicates the dependency type associated with a relationship between two mobile apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppDependencyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the dependency type associated with a relationship between two mobile apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|detect|0|Indicates that the child app should be detected before installing the parent app.|
|autoInstall|1|Indicates that the child app should be installed before installing the parent app.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|