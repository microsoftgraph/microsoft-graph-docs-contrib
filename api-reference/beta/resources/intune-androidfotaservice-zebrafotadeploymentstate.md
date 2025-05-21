---
title: "zebraFotaDeploymentState enum type"
description: "Represents the state of Zebra FOTA deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# zebraFotaDeploymentState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the state of Zebra FOTA deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|pendingCreation|0|Deployment is created but Zebra has not confirmed its creation.|
|createFailed|1|Deployment was not successfully created with Zebra.|
|created|2|Deployment has been created but has not been deployed yet.|
|inProgress|3|Deployment has started but not completed.|
|completed|4|Deployment has completed or end date has passed.|
|pendingCancel|5|Admin has requested to cancel a deployment but Zebra has not confirmed cancellation.|
|canceled|6|Deployment has been successfully canceled by Zebra.|
|unknownFutureValue|99|Unknown future enum value.|
