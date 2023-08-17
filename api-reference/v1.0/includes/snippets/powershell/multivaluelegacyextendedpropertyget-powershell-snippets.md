---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

# A UPN can also be used as -UserId.
Get-MgUserEvent -UserId $userId -EventId $eventId -ExpandProperty "multiValueExtendedProperties(`$filter=id eq 'StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation')" 

```