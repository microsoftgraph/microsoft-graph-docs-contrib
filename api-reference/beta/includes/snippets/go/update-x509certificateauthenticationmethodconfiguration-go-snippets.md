---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationMethodConfiguration()
id := "X509Certificate"
requestBody.SetId(&id) 
state := graphmodels.ENABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 


x509CertificateUserBinding := graphmodels.NewX509CertificateUserBinding()
x509CertificateField := "PrincipalName"
x509CertificateUserBinding.SetX509CertificateField(&x509CertificateField) 
userProperty := "onPremisesUserPrincipalName"
x509CertificateUserBinding.SetUserProperty(&userProperty) 
priority := int32(1)
x509CertificateUserBinding.SetPriority(&priority) 

certificateUserBindings := []graphmodels.X509CertificateUserBindingable {
	x509CertificateUserBinding,
}
requestBody.SetCertificateUserBindings(certificateUserBindings)
authenticationModeConfiguration := graphmodels.NewX509CertificateAuthenticationModeConfiguration()
x509CertificateAuthenticationDefaultMode := graphmodels.X509CERTIFICATEMULTIFACTOR_X509CERTIFICATEAUTHENTICATIONMODE 
authenticationModeConfiguration.SetX509CertificateAuthenticationDefaultMode(&x509CertificateAuthenticationDefaultMode) 


x509CertificateRule := graphmodels.NewX509CertificateRule()
x509CertificateRuleType := graphmodels.ISSUERSUBJECT_X509CERTIFICATERULETYPE 
x509CertificateRule.SetX509CertificateRuleType(&x509CertificateRuleType) 
identifier := "CN=ContosoCA,DC=Contoso,DC=org "
x509CertificateRule.SetIdentifier(&identifier) 
x509CertificateAuthenticationMode := graphmodels.X509CERTIFICATEMULTIFACTOR_X509CERTIFICATEAUTHENTICATIONMODE 
x509CertificateRule.SetX509CertificateAuthenticationMode(&x509CertificateAuthenticationMode) 
x509CertificateRule1 := graphmodels.NewX509CertificateRule()
x509CertificateRuleType := graphmodels.POLICYOID_X509CERTIFICATERULETYPE 
x509CertificateRule1.SetX509CertificateRuleType(&x509CertificateRuleType) 
identifier := "1.2.3.4"
x509CertificateRule1.SetIdentifier(&identifier) 
x509CertificateAuthenticationMode := graphmodels.X509CERTIFICATEMULTIFACTOR_X509CERTIFICATEAUTHENTICATIONMODE 
x509CertificateRule1.SetX509CertificateAuthenticationMode(&x509CertificateAuthenticationMode) 

rules := []graphmodels.X509CertificateRuleable {
	x509CertificateRule,
	x509CertificateRule1,
}
authenticationModeConfiguration.SetRules(rules)
requestBody.SetAuthenticationModeConfiguration(authenticationModeConfiguration)


authenticationMethodTarget := graphmodels.NewAuthenticationMethodTarget()
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
authenticationMethodTarget.SetTargetType(&targetType) 
id := "all_users"
authenticationMethodTarget.SetId(&id) 
isRegistrationRequired := false
authenticationMethodTarget.SetIsRegistrationRequired(&isRegistrationRequired) 

includeTargets := []graphmodels.AuthenticationMethodTargetable {
	authenticationMethodTarget,
}
requestBody.SetIncludeTargets(includeTargets)

result, err := graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurations().ByAuthenticationMethodConfigurationId("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```