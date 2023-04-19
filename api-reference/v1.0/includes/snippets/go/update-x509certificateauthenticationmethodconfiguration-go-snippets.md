---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationMethodConfiguration()
id := "X509Certificate"
requestBody.SetId(&id) 
state := graphmodels.ENABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 
additionalData := map[string]interface{}{


 := graphmodels.New()
x509CertificateField := "PrincipalName"
.SetX509CertificateField(&x509CertificateField) 
userProperty := "onPremisesUserPrincipalName"
.SetUserProperty(&userProperty) 
priority := int32(1)
.SetPriority(&priority) 

	certificateUserBindings := []graphmodels.Objectable {
		,

	}
authenticationModeConfiguration := graphmodels.New()
x509CertificateAuthenticationDefaultMode := "x509CertificateMultiFactor"
authenticationModeConfiguration.SetX509CertificateAuthenticationDefaultMode(&x509CertificateAuthenticationDefaultMode) 


 := graphmodels.New()
x509CertificateRuleType := "issuerSubject"
.SetX509CertificateRuleType(&x509CertificateRuleType) 
identifier := "CN=ContosoCA,DC=Contoso,DC=org "
.SetIdentifier(&identifier) 
x509CertificateAuthenticationMode := "x509CertificateMultiFactor"
.SetX509CertificateAuthenticationMode(&x509CertificateAuthenticationMode) 
 := graphmodels.New()
x509CertificateRuleType := "policyOID"
.SetX509CertificateRuleType(&x509CertificateRuleType) 
identifier := "1.2.3.4"
.SetIdentifier(&identifier) 
x509CertificateAuthenticationMode := "x509CertificateMultiFactor"
.SetX509CertificateAuthenticationMode(&x509CertificateAuthenticationMode) 

	rules := []graphmodels.Objectable {
		,
		,

	}
	authenticationModeConfiguration.SetRules(rules)
	requestBody.SetAuthenticationModeConfiguration(authenticationModeConfiguration)


 := graphmodels.New()
targetType := "group"
.SetTargetType(&targetType) 
id := "all_users"
.SetId(&id) 
isRegistrationRequired := false
.SetIsRegistrationRequired(&isRegistrationRequired) 

	includeTargets := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurations().ByAuthenticationMethodConfigurationId("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```