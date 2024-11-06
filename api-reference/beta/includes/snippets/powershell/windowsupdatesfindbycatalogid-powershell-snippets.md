---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

Find-MgBetaWindowsUpdatesProductByCatalogId -ExpandProperty "revisions(`$expand=catalogEntry,knowledgeBaseArticle),knownIssues(`$expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)"  -CatalogID $catalogIDId 

```