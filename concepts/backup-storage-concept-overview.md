---
title: "Microsoft 365 Backup Storage API overview"
description: "Use the Microsoft 365 Backup Storage API in Microsoft Graph to integrate with Microsoft 365 Backup Storage platform."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
---

# Microsoft 365 Backup Storage API overview

Business continuity assurance is a top-of-mind concern for many companies. Microsoft 365 Backup Storage delivers business continuity peace of mind by providing performance and restore reliability. When evaluating a backup and restore offering, what really matters isn't only the backup, but the ability to restore your data to a healthy state quickly when you need to do so. Recovering large volumes of content is difficult when data is copied at a scale from a remote, air-gapped location. It can take weeks or even months to get your business back up and running.

In cases such as a ransomware attack that encrypts large swaths of your data, or an internal accidental or malicious data deletion or overwrite event, you need to be able to get your business back to a healthy state as soon as possible. This is what Microsoft 365 Backup Storage offers, both through the Microsoft 365 admin center, and via partner applications built on the Microsoft 365 Backup Storage platform.

[Microsoft 365 Backup (preview) documentation](https://learn.microsoft.com/en-us/microsoft-365/backup/backup-overview?view=o365-worldwide).

## Why integrate with Microsoft 365 Backup Storage?

Applications built on the Microsoft 365 Backup Storage platform deliver the following benefits regardless of the size or scale of the protected tenant:

- Fast backup within hours

- Fast restore within hours  

- Full SharePoint site and OneDrive account restore fidelity, meaning the site and OneDrive are restored to their exact state at specific prior points in time via a rollback operation

- In the future, roll forward granular file-level restores in OneDrive and SharePoint

- Full Exchange mailbox item restores, or granular item restores using search

- Consolidated security and compliance domain management

Partners can use Microsoft 365 Backup Storage APIs in Microsoft Graph to create their own applications to manage backup.
Your application becomes the Microsoft 365 Backup Storage controller in the tenant where the application is deployed.

Use the following steps to create and deploy an application:

- Develop your Microsoft 365 Backup Storage application with the required OAuth permissions scopes an [Microsoft 365 Backup Storage APIs](https://learn.microsoft.com/en-us/graph/api/resources/backuprestoreroot?view=graph-rest-1.0).

- Create a billing policy for your Microsoft 365 Backup Storage application. For details, see [Set up third-party billing for Microsoft 365 Backup Storage](https://learn.microsoft.com/en-us/microsoft-365/backup/storage/backup-3p-billing?view=o365-worldwide).

- Request that the tenant backup admin consent your Microsoft 365 Backup Storage application in the tenant.

- Enable your application to be the Microsoft 365 Backup Storage controller in the tenant. For more information, see [Onboard a third-party Microsoft 365 Backup Storage application](https://learn.microsoft.com/en-us/microsoft-365/backup/storage/backup-3p-lifecycle?view=o365-worldwide#onboard-a-third-party-microsoft-365-backup-storage-application).

## API reference

Looking for the API reference for this service?

- [Microsoft 365 Backup Storage API in Microsoft Graph v1.0](/graph/api/resources/backuprestoreroot?view=graph-rest-1.0)
- [Microsoft 365 Backup Storage API in Microsoft Graph beta](/graph/api/resources/backuprestoreroot?view=graph-rest-beta)
