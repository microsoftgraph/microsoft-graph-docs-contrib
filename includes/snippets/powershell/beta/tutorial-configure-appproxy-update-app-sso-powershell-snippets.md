---
description: "Manually updated on 02/22/2024 to as part of PowerShell snippets corrections"
ms.reviewer: "arpadg, dhruvinshah"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$applicationId = "bf21f7e9-9d25-4da2-82ab-7fdd85049f83"
$SSOMode = "onPremisesKerberos"
$SPN = "HTTP/iwademo.contoso.com"
$UserNameFormat = "userPrincipalName"
$params = @{
    onPremisesPublishing = @{
        singleSignOnSettings = @{
            singleSignOnMode = $SSOMode
            kerberosSignOnSettings = @ {
            kerberosServicePrincipalName = $SPN 
             kerberosSignOnMappingAttributeType = $UserNameFormat
          }
        }
    }
}
Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```