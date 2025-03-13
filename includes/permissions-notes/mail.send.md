---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

Administrators can configure [application access policy](/graph/auth-limit-mailbox-access) to limit app access to *specific* mailboxes and not to all the mailboxes in the organization, even if the app has been granted the *Mail.Send* application permission.

*Mail.Send* is valid valid for both Microsoft accounts and work or school accounts.

With the *Mail.Send* permission, an app can send mail and save a copy to the user's Sent Items folder, even if the app isn't granted the *Mail.ReadWrite* or *Mail.ReadWrite.Shared* permission.