---
title: "deviceAndAppManagementDeploymentRingAssignmentStatus enum type"
description: "Represents the status of an individual assignment within a deployment ring."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentRingAssignmentStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the status of an individual assignment within a deployment ring.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notActivated|0|Assignment is not activated.|
|activating|1|Assignment is activating.|
|canceled|2|Assignment has been canceled.|
|paused|3|Assignment has been paused.|
|activated|4|Assignment has been activated.|
|error|5|Assignment has errors.|
|unknownFutureValue|6|Unknown future value.|