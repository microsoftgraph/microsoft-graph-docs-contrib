---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

# A UPN can also be used as -UserId.
Get-MgBetaUserEvent -UserId $userId -EventId $eventId -Property "subject,body,bodyPreview" 

```