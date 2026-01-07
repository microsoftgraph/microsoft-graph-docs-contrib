---
title: "Overview of the unified tenant configuration management APIs in Microsoft Graph (preview)"
description: "Use the unified tenant configuration management APIs in Microsoft Graph to control and manage configuration settings for an entire organization."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
doc_type: conceptual
ms.subservice: "tenant-administration"
---

# Overview of the unified tenant configuration management APIs in Microsoft Graph (preview)

In traditional tenant configuration management, any administrator within an organization uses their credentials to access the resources to which they have access. However, administrators don't have full control over the tenant configuration and lack visibility into whether it deviates from the desired configuration state.

The unified tenant configuration management (UTCM) APIs allow administrators to control and manage configuration settings across a single workload or multiple workloads within the organization. The following list shows the supported workloads:

- Microsoft Defender
- Microsoft Entra
- Microsoft Exchange Online
- Microsoft Intune
- Microsoft Purview
- Microsoft Teams

> [!IMPORTANT]
> UTCM APIs give administrators the ability to manage tenant configuration through a declarative representation that helps maintain configuration settings in the desired state. This representation can define one or multiple resources, each with one or more associated properties. For the complete list of supported resource types and their properties, see [Supported workloads and resource types](/graph/utcm-supported-resourcetypes).

## Why integrate with the unified tenant configuration management APIs?

### Maintain a secure and consistent tenant configuration

As the Microsoft 365 ecosystem grows, keeping tenant settings aligned with the desired configuration of an organization becomes increasingly complex. Currently, IT administrators often have to manually detect and resolve configuration drift, a process that is time-consuming and prone to error. The UTCM APIs address this challenge by enabling automated monitoring of tenant settings. With the [monitoring](../api-reference/beta/resources/configurationmonitor.md) APIs in UTCM, you can ensure your configurations remain secure and consistent, and quickly identify any deviations from the desired state.

### Easily extract and understand current configuration states

The [snapshot](../api-reference/beta/resources/configurationsnapshotjob.md) APIs in UTCM simplify the process of retrieving the current configuration across multiple workloads within a tenant. Administrators can use these snapshots to get a clear, declarative view of how settings are currently applied, which making audits, reviews, and troubleshooting much easier.

## API reference

Looking for the API reference for this service, see [Unified tenant configuration management APIs in Microsoft Graph beta](../api-reference/beta/resources/unified-tenant-configuration-management-api-overview.md).

## Next steps

- To learn how to authenticate and set up the UTCM service principal, see [Set up authentication for unified tenant configuration management APIs](/graph/utcm-authentication-setup).
- To learn more about the unified tenant configuration management APIs, see [Use the unified tenant configuration management APIs in Microsoft Graph (preview)](../api-reference/beta/resources/unified-tenant-configuration-management-api-overview.md).
- To learn more about the supported workloads and resource types for UTCM, see [Supported workloads and resource types](/graph/utcm-supported-resourcetypes).
- Try the unified tenant configuration management APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
