---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

Get-MgDriveRoot -DriveId $driveId -ExpandProperty "children(`$select=id,name)" 

```