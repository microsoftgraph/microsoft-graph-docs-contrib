---
description: "Manually updated on 02/22/2024 to as part of PowerShell snippets corrections"
ms.reviewer: "arpadg, dhruvinshah"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$userObjectId  = "2fe96d23-5dc6-4f35-8222-0426a8c115c8"

ServicePrincipalObjectId = Get-MgBetaServicePrincipal -Filter "DisplayName eq 'Contoso IWA App'" 

New-MgBetaUserAppRoleAssignment -UserId $userObjectId -PrincipalId $userObjectId -ResourceId $servicePrincipalObjectId.Id -AppRoleId "18d14569-c3bd-439b-9a66-3a2aee01d14f"

```