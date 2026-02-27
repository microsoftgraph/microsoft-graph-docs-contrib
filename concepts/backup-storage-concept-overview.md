---
title: "Microsoft 365 Backup Storage API overview"
description: "Use the Microsoft 365 Backup Storage API in Microsoft Graph to integrate with Microsoft 365 Backup."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
ms.date: 11/07/2024
ms.topic: concept-article
---

# Microsoft 365 Backup Storage API overview

Business continuity assurance is a top-of-mind concern for many companies. Microsoft 365 Backup delivers business continuity peace of mind by providing performance and restore reliability. When evaluating a backup and restore offering, what really matters isn't only the backup, but the ability to restore your data to a healthy state quickly when you need to. Recovering large volumes of content is difficult when data is copied at scale from a remote, air-gapped location. It can take weeks or even months to get your business back up and running.

In cases such as a ransomware attack that encrypts large swaths of your data, or an internal accidental or malicious data deletion or overwrite event, you need to be able to get your business back to a healthy state as soon as possible. This is what Microsoft 365 Backup offers, both through the Microsoft 365 admin center, and via partner applications built with the Microsoft 365 Backup Storage API.

To learn more about Microsoft 365 Backup, see [Microsoft 365 Backup (preview) documentation](/microsoft-365/backup/backup-overview?view=o365-worldwide).

## Why integrate with Microsoft 365 Backup?

Applications built with the Microsoft 365 Backup Storage API deliver the following benefits, regardless of the size or scale of the protected tenant:

- Fast backup within hours

- Fast restore within hours  

- Full SharePoint site and OneDrive account restore fidelity, meaning the site and OneDrive are restored to their exact state at specific prior points in time via a rollback operation

- Full Exchange mailbox item restores, or granular item restores using search

- Consolidated security and compliance domain management

Partners can use the Microsoft 365 Backup Storage API in Microsoft Graph to create their own applications to manage backups. Your application becomes the Microsoft 365 Backup Storage controller in the tenant where the application is deployed.

Use the following steps to create and deploy an application:

- Develop your Microsoft 365 Backup application with the required OAuth permissions scopes and [Microsoft 365 Backup Storage APIs](/graph/api/resources/backuprestoreroot).

- Create a billing policy for your Microsoft 365 Backup Storage application. For details, see [Set up third-party billing for Microsoft 365 Backup Storage](/microsoft-365/backup/storage/backup-3p-billing?view=o365-worldwide).

- Request that the tenant backup admin consent your Microsoft 365 Backup Storage application in the tenant.

- Enable your application to be the Microsoft 365 Backup controller in the tenant. For more information, see [Onboard a third-party Microsoft 365 Backup Storage application](/microsoft-365/backup/storage/backup-3p-lifecycle?view=o365-worldwide#onboard-a-third-party-microsoft-365-backup-storage-application).

## API reference

Looking for the API reference for this service?

- [Microsoft 365 Backup Storage API in Microsoft Graph v1.0](/graph/api/resources/backuprestoreroot?view=graph-rest-1.0&preserve-view=true)
- [Microsoft 365 Backup Storage API in Microsoft Graph beta](/graph/api/resources/backuprestoreroot?view=graph-rest-beta&preserve-view=true)
