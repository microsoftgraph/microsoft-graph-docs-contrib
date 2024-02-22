---
description: "Manually updated on 02/22/2024 to as part of PowerShell snippets corrections"
ms.reviewer: "arpadg, dhruvinshah"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$onPremisesPublishingProfileId = "applicationProxy"
Remove-MgBetaOnPremisePublishingProfileConnectorGroup -OnPremisesPublishingProfileId $onPremisesPublishingProfileId -ConnectorGroupId $connectorGroupId

```