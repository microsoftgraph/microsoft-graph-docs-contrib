---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

Find-MgBetaWindowsUpdatesProductByKbNumber -ExpandProperty "revisions(`$expand=catalogEntry,knowledgeBaseArticle),knownIssues"  -KbNumber $kbNumberId 

```