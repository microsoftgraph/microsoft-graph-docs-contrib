---
title: Manage your tenants by using Microsoft Graph
description: Use the Microsoft Graph tenant management APIs to back up data, manage configuration settings, and govern tenants at scale programmatically.
author: FaithOmbongi
ms.author: ombongifaith
ms.date: 04/29/2026
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

<!--
ICON GUIDELINES
===============
- Add a square icon (~100x100px PNG) to /api-reference/beta/media/icons/
- Use the naming convention: tenants-<category>.png
- icon type images do not need alt text (leave alt-text="" )
-->
