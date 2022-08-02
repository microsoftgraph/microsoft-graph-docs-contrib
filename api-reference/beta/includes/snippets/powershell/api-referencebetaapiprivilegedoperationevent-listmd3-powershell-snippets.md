---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgPrivilegedOperationEvent -Filter "(creationDateTime ge 2017-06-25T07:00:00Z) and (creationDateTime le 2017-07-25T17:30:17Z)" -CountVariable CountVar -Sort "creationDateTime desc"  -OutFile $outFileId

```