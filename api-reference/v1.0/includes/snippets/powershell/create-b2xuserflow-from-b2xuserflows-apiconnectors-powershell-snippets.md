---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Id = "UserFlowWithAPIConnector"
	UserFlowType = "signUpOrSignIn"
	UserFlowTypeVersion = 1
	ApiConnectorConfiguration = @{
		PostFederationSignup = @{
			"@odata.id" = "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
		}
		PostAttributeCollection = @{
			"@odata.id" = "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
		}
	}
}

New-MgIdentityB2XUserFlow -BodyParameter $params

```