---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	appRoles = @(
		@{
			allowedMemberTypes = @(
				"User"
			)
			displayName = "User"
			id = "8774f594-1d59-4279-b9d9-59ef09a23530"
			isEnabled = $true
			description = "User"
			value = $null
			origin = "Application"
		}
		@{
			allowedMemberTypes = @(
				"User"
			)
			displayName = "msiam_access"
			id = "e7f1a7f3-9eda-48e0-9963-bd67bf531afd"
			isEnabled = $true
			description = "msiam_access"
			value = $null
			origin = "Application"
		}
		@{
			allowedMemberTypes = @(
				"User"
			)
			description = "Admin,WAAD"
			displayName = "Admin,WAAD"
			id = "3a84e31e-bffa-470f-b9e6-754a61e4dc63"
			isEnabled = $true
			value = "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD"
		}
		@{
			allowedMemberTypes = @(
				"User"
			)
			description = "Finance,WAAD"
			displayName = "Finance,WAAD"
			id = "7a960000-ded3-455b-8c04-4f2ace00319b"
			isEnabled = $true
			value = "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD"
		}
	)
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```