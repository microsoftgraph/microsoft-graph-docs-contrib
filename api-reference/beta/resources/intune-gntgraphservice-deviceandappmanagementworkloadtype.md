---
title: "deviceAndAppManagementWorkloadType enum type"
description: "Identifies the workload of a deployment payload."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 11/05/2026
---

# deviceAndAppManagementWorkloadType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Identifies the workload of a deployment payload. Used by [deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md). This is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Members

|Member|Description|
|:---|:---|
|unknown|Unknown or unspecified workload.|
|deviceConfiguration|Device configuration.|
|application|Application management.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|
