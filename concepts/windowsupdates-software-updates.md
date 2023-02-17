---
title: "Software updates with the Windows Update for Business deployment service"
description: "Software updates are the primary type of content the deployment service deploys. You can look in a catalog to find specific updates that are available to deploy."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Software updates with the Windows Update for Business deployment service

Software updates are the primary type of content the deployment service deploys. You can look in a catalog to find specific updates that are available to deploy.

You might already be familiar with the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/), which lists software updates for Windows. The deployment service provides its own [catalog](/graph/api/resources/windowsupdates-catalog), and aggregates equivalent updates under a single [catalogEntry](/graph/api/resources/windowsupdates-catalogentry) to simplify decision making and approval workflows.

## Windows update categories

In general, there are three high-level categories of Windows updates: feature updates, quality updates, and driver updates. Quality updates category includes security updates.

The deployment service [catalog](/graph/api/resources/windowsupdates-catalog?view=graph-rest-beta&preserve-view=true) also categorizes updates as feature, quality, and driver updates. [Quality update catalog entries](/graph/api/resources/windowsupdates-qualityupdatecatalogentry?view=graph-rest-beta&preserve-view=true) define security and non-security updates in a specific way and exclude driver updates. Note that the definition is different from the Microsoft Update Catalog. See [quality updates](#quality-updates) below for more details.

Effectively, the deployment service currently deploys only feature updates, _security_ quality updates, and driver updates as defined in its catalog. The service currently does not deploy non-security quality updates.

To learn more about Windows 10 updates and servicing, see [Quick guide to Windows as a service](/windows/deployment/update/waas-quick-start).

## Identifying updates for deployment

The updates in the Microsoft Update Catalog are very granular and specific to individual products, releases, and CPU architectures. 

For example, the following two security quality updates are considered different releases in the Microsoft Update Catalog, even though they differ only by architecture.

| Title                                                                                   | Products                           | Classification   |
|-----------------------------------------------------------------------------------------|------------------------------------|------------------|
| 2021-03 Cumulative Update for Windows 10 Version 20H2 for **x86**-based Systems (KB5000802) | Windows 10, version 1903 and later | Security Updates |
| 2021-03 Cumulative Update for Windows 10 Version 20H2 for **x64**-based Systems (KB5000802) | Windows 10, version 1903 and later | Security Updates |

In the catalog provided by the Windows Update for Business deployment service, these updates are aggregated into a single entry.

| Display name                                           | Type                                                     |
|--------------------------------------------------------|----------------------------------------------------------|
| 03/09/2021 - 2021.03 B Security Updates for Windows 10 | microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry |

This aggregation simplifies the process of approving updates across a diverse installed base. Similarly, the deployment service rolls up feature update releases.

### Common properties

All updates in the deployment service catalog have the following common properties.

| Property                | Description                                                        |
|-------------------------|--------------------------------------------------------------------|
| id                      | Unique identifier for the catalog entry.                           |
| displayName             | Title of the software update.                                      |
| releaseDateTime         | Date and time the update was released or refreshed.                |
| deployableUntilDateTime | Date and time until the update can no longer be deployed, if known.|

### Feature updates

Feature updates in the deployment service catalog are identified by version. Entries aggregate differences across architecture (for example, x86 vs. x64) and product (in the Microsoft Update Catalog, all feature updates are for the *Windows 10* product).

| Property | Description                                       |
|----------|---------------------------------------------------|
| version  | Feature update version for the Windows 10 release.|

Below are some examples of feature updates in the deployment service catalog.

| Display name                               | Version |
|--------------------------------------------|---------|
| Feature Update to Windows 10, version 20H1 | 20H1    |
| Feature Update to Windows 10, version 1909 | 1909    |
| Feature Update to Windows 10, version 1903 | 1903    |
| Feature Update to Windows 10, version 1809 | 1809    |

Once you identify a desired version, assign it as content to a deployment using [catalogContent](/graph/api/resources/windowsupdates-catalogcontent).

### Quality updates

Quality updates in the deployment service catalog are identified by a release date/time and an update classification. Entries aggregate differences across architecture, product (e.g. *Windows 10, version 1903 and later* vs. *Windows 10* vs. *Windows 10 LTSB*), and corresponding feature update version.

| Property | Description |
|----------|-------------|
| classification | Classification (security or non-security) of the quality update. |
| releaseDateTime | Date and time the update was released or refreshed. |

The following table shows the classification mapping between the deployment service catalog and the Microsoft Update Catalog.

| Deployment service catalog | Microsoft Update Catalog                                                                                                               |
|------------------|--------------------------------------------------------------------------------------------------------------------------------|
| Security         | Security Update<br>Critical Update<br>Update (if needed as a dependency)<br>Servicing Stack Update (if needed as a dependency) |
| Non-security     | Update<br>Servicing Stack Update                                                                                               |

The entries from the Microsoft Update Catalog corresponding to a quality update in the deployment service catalog with `classification = security` and `releaseDateTime = 2021-03-09` might include the following.

| Title                                                                                   | Products                           | Classification   |
|-----------------------------------------------------------------------------------------|------------------------------------|------------------|
| 2021-03 Cumulative Update for Windows 10 Version 20H2 for x86-based Systems (KB5000802) | Windows 10, version 1903 and later | Security Updates |
| 2021-03 Cumulative Update for Windows 10 Version 20H2 for x64-based Systems (KB5000802) | Windows 10, version 1903 and later | Security Updates |
| 2021-03 Cumulative Update for Windows 10 Version 1909 for x86-based Systems (KB5000808) | Windows 10, version 1903 and later | Security Updates |
| 2021-03 Cumulative Update for Windows 10 Version 1809 for x64-based Systems (KB5000822) | Windows 10, Windows 10 LTSB        | Security Updates |

Once you have identified the desired update, assign it as content to a deployment using [catalogContent](/graph/api/resources/windowsupdates-catalogContent).

## Examples

To see examples of [listing catalog entries](/graph/api/windowsupdates-catalog-list-entries), see [Deploy a feature update](windowsupdates-deploy-update.md) and [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).
