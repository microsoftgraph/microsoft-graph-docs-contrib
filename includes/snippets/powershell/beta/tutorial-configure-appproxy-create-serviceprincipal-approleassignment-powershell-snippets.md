---
description: "Manually updated on 02/22/2024 to as part of PowerShell snippets corrections"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$userObjectId  = "4628e7df-dff3-407c-a08f-75f08c0806dc"

ServicePrincipalObjectId = Get-MgBetaServicePrincipal -Filter "DisplayName eq 'Contoso IWA App'" 


New-MgBetaUserAppRoleAssignment -UserId $userObjectId -PrincipalId $userObjectId -ResourceId $servicePrincipalObjectId.Id -AppRoleId "18d14569-c3bd-439b-9a66-3a2aee01d14f"

```