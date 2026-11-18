---
title: "deviceAndAppManagementDeploymentState enum type"
description: "Identifies the rollout state of a deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentState enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Identifies the rollout state of a deployment. Used by [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md). This is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to retrieve `pendingApproval`.

## Members

|Member|Description|
|:---|:---|
|notStarted|The rollout hasn't started.|
|inProgress|The rollout is in progress.|
|canceled|The rollout was canceled.|
|paused|The rollout is paused.|
|completed|The rollout is complete.|
|error|The rollout encountered an error.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|
|pendingApproval|The deployment change is pending multi-admin approval.|
