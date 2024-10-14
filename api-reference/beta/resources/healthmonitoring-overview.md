---
title: "Microsoft Entra Health monitoring API overview"
description: "The Microsoft Entra Health monitoring APIs allow you to view anomalous usage patterns for your tenant on business-critical identity scenarios and receive alert notifications."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
toc.title: "Health monitoring"
---

# Microsoft Entra Health monitoring API overview

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Entra Health monitoring alerts APIs allow you to view anomalous usage patterns for your tenant on business-critical identity scenarios and receive alert notifications. The API is built to fire alerts based on monitoring the health metric streams in [serviceActivity APIs](../resources/serviceactivity.md). These alerts contain information about the type, date, and impact of the anomalous usage patterns and allow you to investigate and remediate issues that you find.

## Licenses

For more information about the licenses required to use this premium feature, see [Microsoft Entra licensing: Microsoft Entra monitoring and health](/entra/fundamentals/licensing#microsoft-entra-monitoring-and-health).

## Common requests

The following table lists some common requests that you can use with this API.

|  Scenarios  | API |
| ----------- | ----------- |
| Retrieve all alerts of a Microsoft Entra tenant | [List alerts](../api/healthmonitoring-healthmonitoringroot-list-alerts.md) |
| Retrieve an alert and its associated data, including the impacted resources | [Get alert](../api/healthmonitoring-alert-get.md) |
| Update the state of an alert | [Update alert](../api/healthmonitoring-alert-update.md) |
| Retrieve alert configurations for all alert types | [List alert configurations](../api/healthmonitoring-healthmonitoringroot-list-alertconfigurations.md) |
| Retrieve alert configuration for an alert type | [Get alert configuration](../api/healthmonitoring-alertconfiguration-get.md) |
| Update alert configuration for an alert type | [Update alert configuration](../api/healthmonitoring-alertconfiguration-update.md) |

> [!NOTE]
> You might see `unknownFutureValue` as a member in enums due to evolvable enumerations. Here's how you can [handle future members in evolvable enumerations](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Related content

- [What is Microsoft Entra Health?](/entra/identity/monitoring-health/concept-microsoft-entra-health)
