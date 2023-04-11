---
description: "fetchPermissions.ps1 script"
---

```powershell
# Sign in with the required Application.ReadWrite.All scope
Connect-Graph -Scopes "Application.ReadWrite.All"

# Retrieve the service principal details for Azure AD Graph API.
$AADGraph = Get-MgServicePrincipal -Filter "appId eq '00000002-0000-0000-c000-000000000000'"

# Format output of the request above and display AppRoles (application permissions) and oauth2PermissionScopes (delegated permissions)
Echo "Azure AD Graph service principal object and its supported permissions:"
Echo "Application permissions:"
$AADGraph.AppRoles | Format-List
Echo "Delegated permissions:"
$AADGraph.Oauth2PermissionScopes | Format-List
```