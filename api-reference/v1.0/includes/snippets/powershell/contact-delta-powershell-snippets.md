---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.PersonalContacts

# A UPN can also be used as -UserId.
Get-MgUserContactFolderContactDelta -UserId $userId -ContactFolderId $contactFolderId -Property "displayName" 

```