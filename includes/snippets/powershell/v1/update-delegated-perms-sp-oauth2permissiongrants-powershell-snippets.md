---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	scope = "openid profile offline_access DelegatedPermissionGrant.ReadWrite.All AccessReview.ReadWrite.All AgentIdentityBlueprint.ReadWrite.All"
}

Update-MgOauth2PermissionGrant -OAuth2PermissionGrantId $oAuth2PermissionGrantId -BodyParameter $params

```