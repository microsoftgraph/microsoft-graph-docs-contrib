---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

Get-MgUserChatMessage -UserId $userId -ChatId $chatId -Top 2 -Filter "lastModifiedDateTime gt 2021-03-17T07:13:28.000z" -Sort "createdDateTime desc" 

```