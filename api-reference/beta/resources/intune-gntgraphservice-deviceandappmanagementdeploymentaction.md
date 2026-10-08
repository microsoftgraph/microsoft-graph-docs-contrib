---
title: "deviceAndAppManagementDeploymentAction enum type"
description: "Represents the type of management action to perform on a device and app management deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the type of management action to perform on a device and app management deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|commit|0|Commit the deployment|
|pause|1|Pause the deployment|
|resume|2|Resume the deployment|
|cancel|3|Cancel the deployment|
|unknownFutureValue|4|Unknown future value.|