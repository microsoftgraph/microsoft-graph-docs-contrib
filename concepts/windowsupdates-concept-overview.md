---
title: "Windows updates API overview"
description: "The Windows Update for Business deployment service gives control to your organization over the updates offered to your devices."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Windows updates API overview

The Windows Update for Business deployment service provides control over updates through the ability to approve, schedule, and safeguard content delivered by Windows Update to managed devices.

## Why use the Windows Update for Business deployment service?

IT professionals and management tool vendors alike can use the deployment service to:
* Schedule update deployments to begin on a specific date.
* Stage deployments over a period of days or weeks using rich expressions.
* Bypass pre-configured Windows Update for Business policies to immediately deploy a security update.
* Ensure coverage of hardware and software in your organization through deployments tailored to unique device population(s).

Today, the deployment service supports managing Windows feature updates, expediting Windows security updates, and managing driver updates. To learn more about the deployment service in the context of Windows Update for Business, see [Overview of the deployment service](/windows/deployment/update/deployment-service-overview). To track the progress and status of your deployments, see [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview). This solution is  integrated with the deployment service to enable per deployment reporting, monitoring, and troubleshooting.

## Prerequisites

To use the deployment service, your organization must have one of the following subscriptions:
* Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
* Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5)
* Windows Virtual Desktop Access E3 or E5
* Microsoft 365 Business Premium

Additionally, devices managed by the deployment service must:
* Have installed Windows 10 version 1709 or later
* Be Azure AD joined or Hybrid AD joined
* Have one of the following Windows 10 or Windows 11 editions installed:
    Pro
    Enterprise
    Education
    Pro Education
    Pro for Workstations

## Feature updates

Feature updates add new features and functionality to Windows 10 and Windows 11. You can use the deployment service to deploy a feature update of a supported Windows OS version. When you successfully deploy a feature update to your devices, those devices will be updated to the version specified in the deployment and stay at that version until you target them with a new deployment that upgrades their current operating system version. To deploy Windows 11, you can target current Windows 11 devices and Windows 10 devices that meet the Windows 11 [minimum requirements](https://blogs.windows.com/windows-insider/2021/06/28/update-on-windows-11-minimum-system-requirements/). Devices that don’t meet the requirements for Windows 11 won’t install the update and will remain at their current Windows 10 version.

## Quality updates

Quality updates released by Microsoft deliver both security and non-security fixes. Windows Update for Business helps devices to take security updates through Expedite. Security updates are typically released on the second Tuesday of each month, although out-of-band security updates can be released at any time. Quality updates are cumulative, so installing the latest quality update is sufficient to get all the available fixes released for your specific operating system version.

## Drivers and firmware

Driver and firmware updates are published to Windows Update by independent hardware vendors and original equipment manufacturers, who continuously build new drivers and firmware or update existing ones. The deployment service will only show you driver and firmware updates that are applicable and better (normally by version number or version date) than what is currently installed on your devices . The service takes the guess work out of identifying what drivers and firmware updates apply to your devices and lets you focus on approving content that will help keep your devices protected and productive.

## Capabilities of the Windows Update for Business deployment service

The deployment service is designed for IT Pros who are looking for more control than is provided through deferral policies and deployment rings. The service provides the following capabilities:

|Capabilities | Quality updates | Feature updates | Drivers and firmware|
|---|---|---|---|
|Approval and scheduling | | Yes | Yes |
|Gradual rollout | | Yes | |
|Expedite | Yes | | |
|Safeguard holds| | Yes | |

## Approval and scheduling

The deployment service simplifies reviewing, approving, scheduling, and deploying [content](/graph/api/resources/windowsupdates-catalogcontent) for a diverse device ecosystem. A [catalog](/graph/api/resources/windowsupdates-catalog) of content and [applicable content] exists to provide a view tailored for approvals, helping you focus on approval decisions that matter without a need to sort through deep lists of related updates. After you choose an update to deploy, you can schedule deployments to start at a future time.

## Gradual rollout

Stage deployments over a period of days or weeks by specifying [gradual rollout settings](/graph/api/resources/windowsupdates-gradualrolloutsettings). If you choose to deploy an update over a period of time, the deployment service automatically optimizes the order in which devices are offered updates. When possible, the service orders devices to ensure that a diversity of hardware and software assets are represented early in the deployment, to minimize the number of devices that might encounter an unexpected update issue.

## Expedite

In the case of a critical security issue, you can use the deployment service to bypass a standard update policy and expedite deployment of a security update.

To learn more, see [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).

## Safeguard holds

Enjoy the benefit of [safeguard holds](/windows/deployment/update/safeguard-holds) that prevent devices with a quality or compatibility issue from installing an update, resulting in failure or rollback otherwise. For deployments of Windows 11, the deployment service extends these safeguard holds to further protect devices. Microsoft uses machine learning algorithms to monitor the breadth of the Windows ecosystem as devices upgrade to Windows 11. For devices that are identified to be at a higher risk of experiencing a post-upgrade issue, the deployment service applies early safeguards to protect these devices while the issue is investigated and confirmed.

To learn more, see [Manage safeguards for a deployment](windowsupdates-manage-safeguards.md).

Additionally, you can configure monitoring rules that are unique to your organization. These rules can send an alert or pause a deployment based on device signals such as rollbacks.

To learn more, see [Manage monitoring rules for a deployment](windowsupdates-manage-monitoring-rules.md).

## API reference

Looking for the API reference for this service?

See [Windows updates API in Microsoft Graph beta](/graph/api/resources/adminwindowsupdates?view=graph-rest-beta&preserve-view=true).

