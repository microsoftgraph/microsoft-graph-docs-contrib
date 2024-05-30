---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

# A UPN can also be used as -UserId.
Get-MgBetaUserDefaultCalendarEvent -UserId $userId -Filter "startsWith(subject,'All')" 

```