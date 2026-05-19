---
title: "Overview of tenant management APIs in Microsoft Graph"
description: "Use Microsoft Graph tenant management APIs to configure, govern, and protect tenants at scale. Manage cross-tenant access, multitenant organizations, migrations, and more."
author: "FaithOmbongi"
ms.author: "ombongifaith"
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: "entra-directory-management"
ms.topic: overview
ms.date: 05/11/2026
# Customer intent: As a developer integrating with Microsoft Graph, I want to know which tenant management APIs are available so I can choose the right APIs to programmatically manage my organization's tenant configurations and governance at scale.
---

# Overview of tenant management APIs in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Tenants are the foundation of your organization's cloud environment, providing the boundaries for collaboration, identity, access, and resource management. Microsoft Graph provides a growing set of APIs to programmatically manage, configure, and govern those tenants at scale—from maintaining consistent settings and establishing cross-tenant governance relationships to controlling how users collaborate across organizational boundaries and migrating content between tenants.

## Available services and APIs

---
:::image type="icon" source="/graph/images/tenants/backup-icon.svg" alt-text="" border="false":::

### [Backup and restore](/graph/api/resources/tenants-backup-recovery-overview)

The backup and restore APIs provide a programmatic surface for building business continuity into applications and managed service offerings.
- **Microsoft 365 Backup Storage** protects SharePoint sites, OneDrive accounts, and Exchange mailboxes with up to one year of retention and recovery points every ten minutes. Backups use append-only, immutable storage that prevents ransomware and compromised accounts from corrupting historical data. Restores are free, and data never leaves the Microsoft 365 trust boundary.
- **Microsoft Entra Backup and Recovery** extends that resilience to the identity layer: it automatically captures daily snapshots of critical directory objects—users, groups, applications, and other identity objects—through a Microsoft-managed process that no user or application, regardless of privilege, can disable or tamper with.

Using these APIs, your application can programmatically enable protection policies, run preview jobs to inspect what would change before committing a recovery, run targeted restore operations at scale, and monitor job progress end-to-end—so your solution can respond to bulk accidental changes, HR provisioning errors, or security compromises without manual portal intervention.

---

:::image type="icon" source="/graph/images/tenants/configuration-icon.svg" alt-text="" border="false":::

### [Configuration management](/graph/api/resources/unified-tenant-configuration-management-api-overview)

Define a baseline of your tenant configuration settings and monitor them over time. Detect and resolve configuration drift across workloads such as Conditional Access policies, security defaults, and identity providers.

---

:::image type="icon" source="/graph/images/tenants/governance-icon.svg" alt-text="" border="false":::

### [Governance](/graph/api/resources/tenantgovernanceservices-tenantgovernance-overview)

Discover related tenants and establish governance relationships at scale. Configure cross-tenant delegated administration, manage multitenant applications across governed tenants, and enforce consistent governance policies.

:::image type="content" source="/graph/images/preview-label.png" alt-text="Badge indicating this feature is available on the beta endpoint only.":::

---

:::image type="icon" source="/graph/images/tenants/cross-tenant-access-icon.svg" alt-text="" border="false":::

### [Cross-tenant access](/graph/api/resources/crosstenantaccesspolicy-overview)

Define and control the external organizations that your users can collaborate with for seamless and secure collaboration. Configure cross-tenant access policies to specify:
- Which organizations and in what Microsoft Azure clouds can your users collaborate with?
- Is the collaboration limited to specific users in the organizations?
- What authentication controls are applied to users from the organizations?

---

:::image type="icon" source="/graph/images/tenants/cross-tenant-migration-icon.svg" alt-text="" border="false":::

### [Cross-tenant migration](/graph/api/resources/crosstenant-migration-overview)

:::image type="content" source="/graph/images/preview-label.png" alt-text="Badge indicating this feature is available on the beta endpoint only.":::

Programmatically migrate user content across Microsoft 365 tenants for mergers, acquisitions, or organizational restructuring. Create and manage migration jobs for Exchange, Teams, and SharePoint data, and monitor progress end to end.

---

:::image type="icon" source="/graph/images/tenants/multitenant-org-icon.svg" alt-text="" border="false":::

### [Multitenant organizations](/graph/api/resources/multitenantorganization-overview)

Define and manage an organization that spans multiple Microsoft Entra tenants. Add or remove member tenants, configure roles, and set up cross-tenant access and synchronization templates so all tenants collaborate as a single entity.

---

<!--
ICON GUIDELINES
===============
- Add a square icon (~100x100px PNG) to /api-reference/beta/media/icons/
- Use the naming convention: tenants-<category>.png
- icon type images do not need alt text (leave alt-text="" )
-->
