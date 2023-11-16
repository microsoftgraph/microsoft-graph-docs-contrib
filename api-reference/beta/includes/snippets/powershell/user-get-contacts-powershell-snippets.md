---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

# A UPN can also be used as -UserId.
Get-MgBetaUserContact -UserId $userId -Property "displayName,emailAddresses" 

```