---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration"
	id = "X509Certificate"
	state = "enabled"
	certificateUserBindings = @(
		@{
			x509CertificateField = "PrincipalName"
			userProperty = "onPremisesUserPrincipalName"
			priority = 
		}
	)
	authenticationModeConfiguration = @{
		x509CertificateAuthenticationDefaultMode = "x509CertificateMultiFactor"
		rules = @(
			@{
				x509CertificateRuleType = "issuerSubject"
				identifier = "CN=ContosoCA,DC=Contoso,DC=org "
				x509CertificateAuthenticationMode = "x509CertificateMultiFactor"
			}
			@{
				x509CertificateRuleType = "policyOID"
				identifier = "1.2.3.4"
				x509CertificateAuthenticationMode = "x509CertificateMultiFactor"
			}
		)
	}
	issuerHintsConfiguration = @{
		state = "disabled"
	}
	includeTargets = @(
		@{
			targetType = "group"
			id = "all_users"
			isRegistrationRequired = $false
		}
	)
}

Update-MgBetaPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```