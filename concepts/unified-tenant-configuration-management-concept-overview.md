---
title: "Overview of the unified tenant configuration management APIs in Microsoft Graph (preview)"
description: "Use the unified tenant configuration management APIs in Microsoft Graph to control and manage configuration settings for an entire organization."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
doc_type: conceptual
ms.subservice: "tenant-administration"
---

# Overview of the unified tenant configuration management APIs in Microsoft Graph (preview)

In traditional tenant configuration management, any administrator within an organization uses their credentials to access the resources to which they have access. However, administrators don't have full control over the tenant configuration and lack visibility into whether it deviates from the desired configuration state.

The unified tenant configuration management (UTCM) APIs allow administrators to control and manage configuration settings across a single workload or multiple workloads within the organization. The following list shows the supported workloads:

- [Microsoft Defender](/graph/utcm-securityandcompliance-resources)
- [Microsoft Entra](/graph/utcm-entra-resources)
- [Microsoft Exchange Online](/graph/utcm-exchange-resources)
- [Microsoft Intune](/graph/utcm-intune-resources)
- [Microsoft Purview](/graph/utcm-securityandcompliance-resources)
- [Microsoft Teams](/graph/utcm-teams-resources)

Administrators have the ability to manage tenant configuration through a declarative representation that helps maintain configuration settings in the desired state. This representation can define one or multiple resources, each with one or more associated properties.

## Why integrate with the unified tenant configuration management APIs?

### Maintain a secure and consistent tenant configuration

As the Microsoft 365 ecosystem grows, keeping tenant settings aligned with the desired configuration of an organization becomes increasingly complex. Currently, IT administrators often have to manually detect and resolve configuration drift, a process that is time-consuming and prone to error. The UTCM APIs address this challenge by enabling automated monitoring of tenant settings. With the [monitoring](/graph/api/resources/configurationmonitor?view=graph-rest-beta&preserve-view=true) APIs in UTCM, you can ensure your configurations remain secure and consistent, and quickly identify any deviations from the desired state.

### Easily extract and understand current configuration states

The [snapshot](/graph/api/resources/configurationsnapshotjob?view=graph-rest-beta&preserve-view=true) APIs in UTCM simplify the process of retrieving the current configuration across multiple workloads within a tenant. Administrators can use these snapshots to get a clear, declarative view of how settings are currently applied, which makes audits, reviews, and troubleshooting much easier.

## API reference

Looking for the API reference for this service, see [Unified tenant configuration management APIs in Microsoft Graph beta](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true).

## Next steps

- To learn how to authenticate and set up the UTCM service principal, see [Set up authentication for unified tenant configuration management APIs](/graph/utcm-authentication-setup).
- To learn more about the unified tenant configuration management APIs, see [Use the unified tenant configuration management APIs in Microsoft Graph (preview)](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true).
- Try the unified tenant configuration management APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
