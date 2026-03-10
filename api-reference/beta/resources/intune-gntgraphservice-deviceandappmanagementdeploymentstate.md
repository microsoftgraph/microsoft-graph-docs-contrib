---
title: "deviceAndAppManagementDeploymentState enum type"
description: "Represents the status of a deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the status of a deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notStarted|0|Deployment has not yet started.|
|inProgress|1|Deployment is in progress.|
|canceled|2|Deployment has been canceled.|
|paused|3|Deployment has been paused.|
|completed|4|Deployment has been completed.|
|error|5|Deployment has errors.|
|unknownFutureValue|6|Unknown future value.|