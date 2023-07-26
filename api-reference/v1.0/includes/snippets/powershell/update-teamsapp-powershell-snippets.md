---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = [Zip file containing a Teams app package]


New-MgAppCatalogTeamAppDefinition -TeamsAppId $teamsAppId -Requiresreview true  -BodyParameter $params

```