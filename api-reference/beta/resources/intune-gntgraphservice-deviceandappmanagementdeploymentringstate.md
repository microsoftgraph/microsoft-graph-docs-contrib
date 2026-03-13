---
title: "deviceAndAppManagementDeploymentRingState enum type"
description: "Represents the status of a deployment ring."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentRingState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the status of a deployment ring.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notActivated|0|Deployment Ring is not activated.|
|activating|1|Deployment Ring is activating.|
|canceled|2|Deployment Ring has been canceled.|
|paused|3|Deployment Ring has been paused.|
|activated|4|Deployment Ring has been activated.|
|error|5|Deployment Ring has errors.|
|unknownFutureValue|6|Unknown future value.|