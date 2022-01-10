---
title: "teamworkDeviceOperationType enum type"
description: "Describes the type of an async operation on a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: enumPageType
---

# teamworkDeviceOperationType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the type of an async [teamworkDeviceOperation](teamworkdeviceoperation.md) on a device.

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|deviceRestart|0|Restart a device.|
|configUpdate|1|Update the device configuration.|
|deviceDiagnostics|2|Get the device logs.|
|softwareUpdate|3|Update the device software.|
|deviceManagementAgentConfigUpdate|4|Update the device agent configuration.|
|remoteLogin|5|Device remote login.|
|remoteLogout|6|Device remote logout.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|

