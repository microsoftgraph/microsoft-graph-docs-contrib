---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

# A UPN can also be used as -UserId.
Get-MgBetaUserEventInstance -UserId $userId -EventId $eventId -Startdatetime "2019-04-08T09:00:00.0000000" -Enddatetime "2019-04-30T09:00:00.0000000" -Property "subject,bodyPreview,seriesMasterId,type,recurrence,start,end" 

```