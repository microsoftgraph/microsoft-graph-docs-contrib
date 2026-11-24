---
title: "Use the Tenant Configuration Management APIs in Microsoft Graph"
description: "Learn how to use the Tenant Configuration Management APIs in Microsoft Graph to control and manage configuration settings for an entire organization."
ms.localizationpriority: high
author: "swatyario"
ms.subservice: "tenant-configuration-management"
doc_type: conceptualPageType
ms.date: 01/19/2026
---

# Use the Tenant Configuration Management APIs in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Tenant Configuration Management (TCM) APIs allow administrators to control and manage configuration settings across a single workload or multiple workloads within the organization.

TCM is available only in the global service, not in national clouds. Configuration templates, drift remediation, and `applyOnce` monitors are available in preview through Microsoft Graph beta.

The tenant configuration APIs need admins to first add TCM service principal to their tenant and then grant permissions to it. This is a pre-requisite step. Read more here: [Set up authentication for Tenant Configuration Management APIs](/graph/utcm-authentication-setup)

## Authorization

To call the TCM APIs in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Tenant monitoring APIs

The tenant [monitoring](../resources/configurationmonitor.md) APIs in TCM allow administrators to create one or more monitors, review their monitoring results, and get information about all active drifts in a tenant. The default `monitorOnly` mode detects drift without changing the configuration.

## Apply a baseline once

Create a monitor in `applyOnce` mode to apply its desired-state baseline once in a background job. The job runs on behalf of the signed-in administrator, within that administrator's permissions. After execution, the monitor becomes inactive. To run it again, update its status to `active`.

## Remediate configuration drift

Use [remediate](../api/configurationdrift-remediate.md) on an existing [configurationDrift](../resources/configurationdrift.md) to restore its drifted properties to the baseline values. Remediation returns success if all drifted properties are updated to the baseline values; otherwise, it returns failure.

Remediation and `applyOnce` support delegated permissions only. The calling app, TCM service principal, and signed-in user each need the appropriate permissions or roles. See [Set up authentication](/graph/utcm-authentication-setup) and [Supported resources for remediation and applyOnce (preview)](/graph/utcm-remediation-applyonce-resources).

## Configuration templates

Use [configurationTemplate](../resources/configurationtemplate.md) and [configurationTemplateVersion](../resources/configurationtemplateversion.md) to reuse versioned baselines across monitors. Each version contains a baseline. Monitors reference a specific version and don't automatically move to a newer version.

## Snapshot APIs

The [snapshot](../resources/configurationsnapshotjob.md) APIs in TCM allow administrators to extract the current tenant configuration settings. This process allows administrators to get a baseline that represents the desired tenant configuration and serves as the foundation for periodic tenant monitoring.

## Common use cases

The following table lists common use cases for the TCM APIs.

| Use case                                                   | REST resource                                                                | See also                                                                                         |
| :---------------------------------------------------------- | :---------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| Get a baseline and create a snapshot job | [configurationBaseline](../resources/configurationbaseline.md) | [configurationBaseline methods](../resources/configurationbaseline.md#methods) |
| List and get drifts | [configurationDrift](../resources/configurationdrift.md) | [configurationDrift methods](../resources/configurationdrift.md#methods) |
| Remediate a drift | [configurationDriftRemediationResult](../resources/configurationdriftremediationresult.md) | [Remediate](../api/configurationdrift-remediate.md) |
| Create and manage monitors | [configurationMonitor](../resources/configurationmonitor.md) | [configurationMonitor methods](../resources/configurationmonitor.md#methods) |
| Create a monitor that applies a baseline once | [configurationMonitor](../resources/configurationmonitor.md) | [Create configurationMonitor](../api/configurationmanagement-post-configurationmonitors.md) |
| Manage reusable templates and versions | [configurationTemplate](../resources/configurationtemplate.md) | [configurationTemplate methods](../resources/configurationtemplate.md#methods) |
| List and get monitoring results | [configurationMonitoringResult](../resources/configurationmonitoringresult.md) | [configurationMonitoringResult methods](../resources/configurationmonitoringresult.md#methods) |
| List, get, and delete snapshot jobs | [configurationSnapshotJob](../resources/configurationsnapshotjob.md) | [configurationSnapshotJob methods](../resources/configurationsnapshotjob.md#methods) |

## API limits

### Tenant monitoring

The following API limits apply to the [configurationMonitor](../resources/configurationmonitor.md) API:

- You can create up to 30 **configurationMonitor** objects per tenant.
- Each configurationMonitor runs at a **fixed interval of six hours**. A monitor cannot be configured to run at any other frequency.
- An administrator can monitor up to **800 configuration resources per day per tenant**, across all monitors. Administrators decide how to use this quota—through a single monitor or multiple monitors. Example: If an admin includes **20 transport rules** and **30 conditional access policies** in a monitor's baseline, that monitor tracks **50 resources per cycle**. Since the monitor runs every six hours (**4 cycles/day**), this results in **200 monitored resources per day**. Additional monitors can be created until the daily **800‑resource** limit is reached.
- When an administrator updates the baseline of an existing monitor, **all previously generated monitoring results and detected drifts for that monitor** are automatically deleted.

An `applyOnce` run counts each baseline resource once toward the same 800-resource daily tenant quota, rather than the four scheduled evaluations of a `monitorOnly` monitor.

### Configuration templates

A configuration template can contain a maximum of three versions.

### Drifts

The following API limits apply to the [configurationDrift](../resources/configurationdrift.md) API:

- All active drifts are retained and available for administrators to review at any time.
- Each fixed drift is deleted 30 days after it is resolved.

### Snapshot

The following API limits apply to the [configurationSnapshotJob](../resources/configurationsnapshotjob.md) API:

- You can extract a maximum of 20000 resources per tenant per month. This is a cumulative limit across all snapshots.
- There is **no maximum number of snapshots** you can create per day or per month. You may generate as many snapshots as needed, as long as the **total number of resources extracted** stays within the **20,000-resource monthly quota** for the tenant.
- A maximum of 12 snapshot jobs are visible to the administrator. If the administrator wants to create more snapshot jobs, they have to delete one or more of the existing jobs.
- A snapshot is retained for a maximum of seven days, after which it is automatically deleted.

## Next steps

Use the Microsoft Graph TCM APIs to control and manage configuration settings across one or more workloads within an organization. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Related content

[Overview of the Tenant Configuration Management APIs in Microsoft Graph](/graph/unified-tenant-configuration-management-concept-overview)

[Set up authentication for Tenant Configuration Management APIs](/graph/utcm-authentication-setup)
