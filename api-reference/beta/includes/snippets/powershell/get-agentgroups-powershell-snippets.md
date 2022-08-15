---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgOnPremisePublishingProfileAgentGroup -OnPremisesPublishingProfileId $onPremisesPublishingProfileId -ExpandProperty "agents,publishedResources"  -OutFile $outFileId

```