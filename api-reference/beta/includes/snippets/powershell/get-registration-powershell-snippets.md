---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

# A UPN can also be used as -UserId.
Get-MgBetaUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId -ExpandProperty "microsoft.graph.meetingRegistration/customQuestions" 

```