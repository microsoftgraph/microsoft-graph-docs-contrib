---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgApplication -Search "displayName:Web" -CountVariable CountVar -ConsistencyLevel eventual 
 -OutFile $outFileId

```