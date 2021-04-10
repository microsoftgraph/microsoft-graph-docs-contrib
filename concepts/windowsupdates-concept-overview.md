---
title: "Windows updates API overview"
description: "The Windows Update for Business deployment service gives control to your organization over the updates offered to your devices."
author: "aarononeal"
localization_priority: Normal
ms.prod: "w10"
doc_type: conceptualPageType
---

# Windows updates API overview

## Why use the Windows Update for Business deployment service?

The Windows Update for Business deployment service gives control to your organization over the updates offered to your devices.

As a cloud service it can continuously take action to keep your devices up to date and compliant according to your organization's policies while also safeguarding against the application of updates that could introduce device specific issues or lead to unnecessary reboots.

The combination of greater control supported by cloud intelligence leads to a best-in-class management experience for network administrators and a more streamlined update experience for users of Windows.

![WUfB: ds overview](images/windowsupdates-wufbds.png)

## License requirements

* **Subscription**
  * Microsoft 365 E3/E5, A3/A5, F3, Business Premium
* **Operating System**
  * Windows 10 Enterprise E3/E5, A3/A5

## Enroll devices to be managed

After meeting license requirements, the first step to using the service is to enroll your devices in management.

To learn more, see:
* [Enroll in update management by the Windows Update for Business deployment service](windowsupdates-enroll.md)

## Approve and schedule Windows content delivered from Windows Update

The deployment service simplifies the process of reviewing, approving, scheduling, and deploying content throughout a diverse device ecosystem. The service's catalog of software updates provides an approval tailored view of the updates offered for Windows, helping you focus on the approval decisions that matter rather than sorting through deep lists of related updates.

Once the desired updates have been chosen, deployments can be scheduled to start at a future time or deploy over a period of time.

To learn more, see:
* [Software updates with the Windows Update for Business deployment service](windowsupdates-software-updates.md)
* [Deployments in the Windows Update for Business deployment service](windowsupdates-deployments.md)
* [Schedule a deployment using the Windows Update for Business deployment service](windowsupdates-schedule-deployment.md)

## Immediately deploy an update when critical needs arise

In some circumstances, such as a critical security or compatibility issue, it may be desirable to bypass a standard update policy in order to expedite deployment sooner.

To learn more, see:
* [Deploy an expedited update using the Windows Update for Business deployment service](windowsupdates-deploy-expedited-update.md)

## Protect devices by default

Deployments initiated by the service automatically benefit from [safeguard holds](https://docs.microsoft.com/en-us/windows/deployment/update/safeguard-holds) which prevent devices affected by quality or compatibility issues from taking an update.

Additionally, you can configure rules to monitor deployments and either alert or pause based on device signals like rollbacks.

To learn more, see:
* [Manage monitoring rules for a deployment using the Windows Update for Business deployment service](windowsupdates-manage-monitoring-rules.md)