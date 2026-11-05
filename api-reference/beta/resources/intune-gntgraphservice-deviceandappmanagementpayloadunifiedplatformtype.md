---
title: "deviceAndAppManagementPayloadUnifiedPlatformType enum type"
description: "Identifies the platform of a deployment payload."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 11/05/2026
---

# deviceAndAppManagementPayloadUnifiedPlatformType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Identifies the platform of a deployment payload. Used by [deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md). This flagged enumeration allows multiple members to be selected simultaneously. This is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Members

|Member|Description|
|:---|:---|
|unknown|Unknown or unspecified platform.|
|android|Android.|
|appleMobile|Apple mobile platforms, including iOS, iPadOS, tvOS, and visionOS.|
|linux|Linux.|
|macOS|macOS.|
|web|Web.|
|windows|Windows.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|
