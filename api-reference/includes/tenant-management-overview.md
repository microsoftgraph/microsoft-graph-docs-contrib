---
title: Manage your tenants by using Microsoft Graph
description: Use the Microsoft Graph tenant management APIs to back up data, manage configuration settings, and govern tenants at scale programmatically.
author: FaithOmbongi
ms.author: ombongifaith
ms.date: 04/30/2026
ms.topic: include
ms.subservice: non-product-specific
---

---
:::image type="icon" source="/graph/images/tenants/backup-icon.svg" alt-text="" border="false":::

### [Backup and restore](/graph/api/resources/tenants-backup-recovery-overview)

The backup and restore APIs provide a programmatic surface for building business continuity into applications and managed service offerings.

Currently, only the **Microsoft 365 Backup Storage** APIs are generally available. These APIs protect SharePoint sites, OneDrive accounts, and Exchange mailboxes with up to one year of retention and recovery points every ten minutes. Backups use append-only, immutable storage that prevents ransomware and compromised accounts from corrupting historical data. Restores are free, and data never leaves the Microsoft 365 trust boundary.

---

:::image type="icon" source="/graph/images/tenants/configuration-icon.svg" alt-text="" border="false":::

### [Configuration management](/graph/api/resources/unified-tenant-configuration-management-api-overview)

Define a baseline of your tenant configuration settings and monitor them over time. Detect and resolve configuration drift across workloads such as Conditional Access policies, security defaults, and identity providers.

---

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

### [Multitenant organization](/graph/api/resources/multitenantorganization-overview)

Define and manage an organization that spans multiple Microsoft Entra tenants. Add or remove member tenants, configure roles, and set up cross-tenant access and synchronization templates so all tenants collaborate as a single entity.

---

<!--
ICON GUIDELINES
===============
- Add a square icon (~100x100px PNG) to /api-reference/beta/media/icons/
- Use the naming convention: tenants-<category>.png
- icon type images do not need alt text (leave alt-text="" )
-->
