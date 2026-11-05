---
title: "deviceAndAppManagementDeploymentAssignmentState enum type"
description: "Identifies the state of a deployment assignment."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 11/05/2026
---

# deviceAndAppManagementDeploymentAssignmentState enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Identifies the state of a deployment assignment. Used by [deviceAndAppManagementDeploymentAssignmentResult](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentassignmentresult.md). This is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Members

|Member|Description|
|:---|:---|
|unknown|Unknown state.|
|notActivated|The assignment hasn't been activated.|
|activating|The assignment is being activated.|
|canceled|The assignment was canceled.|
|paused|The assignment is paused.|
|activated|The assignment was activated.|
|error|An error occurred while applying the assignment.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|
