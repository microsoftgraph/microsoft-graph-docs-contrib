---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	onPremisesPublishing = @{
		externalAuthenticationType = "aadPreAuthentication"
		internalUrl = "https://contosoiwaapp.com"
		externalUrl = "https://contosoiwaapp-contoso.msappproxy.net"
		isHttpOnlyCookieEnabled = $true
		isOnPremPublishingEnabled = $true
		isPersistentCookieEnabled = $true
		isSecureCookieEnabled = $true
		isStateSessionEnabled = $true
		isTranslateHostHeaderEnabled = $true
		isTranslateLinksInBodyEnabled = $true
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```