---
title: "UTCM [Unified Tenant Configuration Monitoring] APIs"
description: "This document talks about what UTCM APIs are, and what all admins can do via them."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
---

# UTCM [Unified Tenant Configuration Monitoring] APIs

**Namespace:** `microsoft.graph`

In the traditional Microsoft Tenant Configuration Management space, any administrator from an organization could use their identity to access resources that they have access to. Administrators today didn't have complete control over the tenant configuration, and didn’t have a view on if there are deviations from the desired configuration state.

**Unified-tenant configuration management APIs** let administrators control and manage configuration settings for the entire organization. The settings can be on one or a combination of settings across the following workloads:

- MS Exchange Online
- MS Entra
- MS Teams
- MS Purview
- MS Defender
- MS OneDrive SharePoint
- MS Intune

The list of supported resource types across the above 7 workloads is [here](utcm-supported-resourcetypes.md).

> **Important**  
> UTCM APIs are providing admins capabilities to manage tenant configuration via the declarative representation helping them keep the tenant configurations settings in the desired state. The declarative representation can contain one or many resources and one or more properties for each of these resources. The list of all resources and all properties for these mentioned resource types that UTCM support can be seen [here](utcm-supported-resourcetypes.md).

---

## Tenant/Drift Monitoring APIs

UTCM tenant monitoring APIs will allow admins to create a monitor or multiple monitors, check the monitoring results of these monitors and get information regarding all active drifts in their tenant. The administrators can then fix the drifts by going to the relevant admin centres or any other means.

---

## Snapshot APIs

UTCM snapshots will allow admins to extract the current tenant configuration settings. This will allow admins to get a baseline [depicting possible desired tenant configuration] to initiate periodic tenant monitoring.

> **Important**  
> UTCM APIs will work with all Azure in-built roles only. The administrators will need to have one of the roles (e.g., Exchange administrator, Global reader, Compliance administrator, etc.) assigned to access the APIs.

---

## Restrictions

### Tenant Monitoring:

- A maximum of **10 configurationMonitors** can be created per tenant.
- A maximum of **500 configuration resources** per configurationMonitor can be part of the configurationBaseline.  
  _Example: If an administrator wants to monitor 300 Transport Rules and 200 Conditional Access Policies, they can put it in the baseline during monitor creation._
- The configurationMonitors can run at one of the following frequencies:  
  **6 hours**, **12 hours**, and **24 hours** _(Default)_

### Snapshot:

- A maximum of **5 snapshots** can be taken **per day** per tenant.
- A maximum of **20 snapshots** can be taken **per month** per tenant.
- A maximum of **1000 resources** can be extracted per snapshot.
