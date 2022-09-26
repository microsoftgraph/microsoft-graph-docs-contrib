---
title: "microsoftTunnelServerHealthStatus enum type"
description: "Enum of possible MicrosoftTunnelServer health status types"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# microsoftTunnelServerHealthStatus enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum of possible MicrosoftTunnelServer health status types

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Indicates that the health status of the server is unknown. This occurs when no health status has been reported, for example when the server is initialized, but has not yet been evaluated for its health.|
|healthy|1|Indicates that the health status of the server is healthy. This should be the normal operational health status.|
|unhealthy|2|Indicates that the health status of the server is unhealthy. This is normally a transient condition that will last up to 5 minutes. If the server cannot be remediated while reporting unhealthy state, the health state will change to 'warning'. If it can be remediated, the health state will return to 'healthy'.|
|warning|3|Indicates a warning based on the Tunnel Gateway server's CPU usage, memory usage, latency, TLS certificate, version|
|offline|4|Indicates the server state is offline|
|upgradeInProgress|5|Indicates the upgrade in progress during the upgrade cycle of when Intune begins upgrading servers, one server at a time|
|upgradeFailed|6|Indicates the failure of the upgrade during the upgrade cycle of when Intune begins upgrading servers, one server at a time|




