---
title: "Use the unified tenant configuration management APIs in Microsoft Graph (preview)"
description: "Learn how to use the unified tenant configuration management APIs in Microsoft Graph to control and manage configuration settings for an entire organization."
ms.localizationpriority: high
author: "swatyario"
ms.subservice: "tenant-administration"
doc_type: conceptualPageType
ms.date: 01/19/2026
---

# Use the unified tenant configuration management APIs in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The unified tenant configuration management (UTCM) APIs allow administrators to control and manage configuration settings across a single workload or multiple workloads within the organization.

## Authorization

To call the UTCM APIs in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

> [!IMPORTANT] 
> The UTCM APIs work only with built-in Azure roles. Administrators must be assigned one of the supported roles (for example, Exchange administrator, Global reader, and Compliance administrator) to access the APIs.

## Tenant monitoring APIs

The tenant [monitoring](../resources/configurationmonitor.md) APIs in UTCM allow administrators to create one or more monitors, review their monitoring results, and get information about all active drifts in a tenant. Administrators can then resolve these [drifts](../resources/configurationdrift.md) by using the relevant admin centers or other available methods.

## Snapshot APIs

The [snapshot](../resources/configurationsnapshotjob.md) APIs in UTCM allow administrators to extract the current tenant configuration settings. This process allows administrators to get a baseline that represents the desired tenant configuration and serves as the foundation for periodic tenant monitoring.

## Common use cases

The following table lists common use cases for the UTCM APIs.

| Use case                                                   | REST resource                                                                | See also                                                                                         |
| :---------------------------------------------------------- | :---------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| Get a baseline and create a snapshot job | [configurationBaseline](../resources/configurationbaseline.md) | [configurationBaseline methods](../resources/configurationbaseline.md#methods) |
| List and get drifts | [configurationDrift](../resources/configurationdrift.md) | [configurationDrift methods](../resources/configurationdrift.md#methods) |
| Create and manage monitors | [configurationMonitor](../resources/configurationmonitor.md) | [configurationMonitor methods](../resources/configurationmonitor.md#methods) |
| List and get monitoring results | [configurationMonitoringResult](../resources/configurationmonitoringresult.md) | [configurationMonitoringResult methods](../resources/configurationmonitoringresult.md#methods) |
| List, get, and delete snapshot jobs | [configurationSnapshotJob](../resources/configurationsnapshotjob.md) | [configurationSnapshotJob methods](../resources/configurationsnapshotjob.md#methods) |

## API limits

### Tenant monitoring

The following API limits apply to the [configurationMonitor](../resources/configurationmonitor.md) API:

- You can create a maximum of 10 **configurationMonitor** objects per tenant.
- A maximum of 500 configuration resources per **configurationMonitor** can be included in a **configurationBaseline**. For example, if an administrator wants to monitor 300 transport rules and 200 conditional access policies, they can include them in the baseline during monitor creation.
- A **configurationMonitor** can run at one of the following frequencies: six hours, 12 hours, or 24 hours.
- When an administrator updates the baseline for a monitor, all associated monitoring results and drifts are automatically deleted.

### Drifts

The following API limits apply to the [configurationDrift](../resources/configurationdrift.md) API:

- All active drifts are retained and available for administrators to review at any time.
- Each fixed drift is deleted 30 days after it is resolved.

### Snapshot

The following API limits apply to the [configurationSnapshotJob](../resources/configurationsnapshotjob.md) API:

- You can take a maximum of five snapshots per day per tenant.
- You can take a maximum of 20 snapshots per month per tenant.
- You can extract a maximum of 1,000 resources per snapshot.
- A maximum of 12 snapshot jobs are visible to the administrator. If the administrator wants to create more snapshot jobs, they have to delete one or more of the existing jobs.
- A snapshot is retained for a maximum of seven days, after which it is automatically deleted.

## Next steps

Use the Microsoft Graph UTCM APIs to control and manage configuration settings across one or more workloads within an organization. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Related content

[Overview of the unified tenant configuration management APIs in Microsoft Graph (preview)](/graph/unified-tenant-configuration-management-concept-overview)
