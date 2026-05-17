---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	id = "UserFlowWithAPIConnector"
	userFlowType = "signUpOrSignIn"
	userFlowTypeVersion = 1
	apiConnectorConfiguration = @{
		postFederationSignup = @{
			"@odata.id" = "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
		}
		postAttributeCollection = @{
			"@odata.id" = "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
		}
	}
}

New-MgIdentityB2XUserFlow -BodyParameter $params

```