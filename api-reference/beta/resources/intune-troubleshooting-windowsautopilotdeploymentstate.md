---
title: "windowsAutopilotDeploymentState enum type"
description: "Deployment states for Autopilot devices"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# windowsAutopilotDeploymentState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Deployment states for Autopilot devices

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The deployment state is unknown.|
|success|1|The deployment succeeded.|
|inProgress|2|The deployment state is in progress.|
|failure|3|The deployment failed.|
|successWithTimeout|4|The deployment timed out but user clicked past failure.|
|notAttempted|5|The deployment was not run.|
|disabled|6|The deployment is disabled.|
|successOnRetry|7|The deployment succeeded after hitting an initial timeout failure.|
