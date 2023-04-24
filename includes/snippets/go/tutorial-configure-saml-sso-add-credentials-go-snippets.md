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


requestBody := graphmodels.NewServicePrincipal()


keyCredential := graphmodels.NewKeyCredential()
customKeyIdentifier := []byte("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
keyCredential.SetCustomKeyIdentifier(&customKeyIdentifier) 
endDateTime , err := time.Parse(time.RFC3339, "2021-04-22T22:10:13Z")
keyCredential.SetEndDateTime(&endDateTime) 
keyId := uuid.MustParse("4c266507-3e74-4b91-aeba-18a25b450f6e")
keyCredential.SetKeyId(&keyId) 
startDateTime , err := time.Parse(time.RFC3339, "2020-04-22T21:50:13Z")
keyCredential.SetStartDateTime(&startDateTime) 
type := "X509CertAndPassword"
keyCredential.SetType(&type) 
usage := "Sign"
keyCredential.SetUsage(&usage) 
key := []byte("mIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==")
keyCredential.SetKey(&key) 
displayName := "CN=awsAPI"
keyCredential.SetDisplayName(&displayName) 
keyCredential1 := graphmodels.NewKeyCredential()
customKeyIdentifier := []byte("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
keyCredential1.SetCustomKeyIdentifier(&customKeyIdentifier) 
endDateTime , err := time.Parse(time.RFC3339, "2021-04-22T22:10:13Z")
keyCredential1.SetEndDateTime(&endDateTime) 
keyId := uuid.MustParse("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42")
keyCredential1.SetKeyId(&keyId) 
startDateTime , err := time.Parse(time.RFC3339, "2020-04-22T21:50:13Z")
keyCredential1.SetStartDateTime(&startDateTime) 
type := "AsymmetricX509Cert"
keyCredential1.SetType(&type) 
usage := "Verify"
keyCredential1.SetUsage(&usage) 
key := []byte("mIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==")
keyCredential1.SetKey(&key) 
displayName := "CN=awsAPI"
keyCredential1.SetDisplayName(&displayName) 

keyCredentials := []graphmodels.KeyCredentialable {
	keyCredential,
	keyCredential1,

}
requestBody.SetKeyCredentials(keyCredentials)


passwordCredential := graphmodels.NewPasswordCredential()
customKeyIdentifier := []byte("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
passwordCredential.SetCustomKeyIdentifier(&customKeyIdentifier) 
keyId := uuid.MustParse("4c266507-3e74-4b91-aeba-18a25b450f6e")
passwordCredential.SetKeyId(&keyId) 
endDateTime , err := time.Parse(time.RFC3339, "2022-01-27T19:40:33Z")
passwordCredential.SetEndDateTime(&endDateTime) 
startDateTime , err := time.Parse(time.RFC3339, "2020-04-20T19:40:33Z")
passwordCredential.SetStartDateTime(&startDateTime) 
secretText := "61891f4ee44d"
passwordCredential.SetSecretText(&secretText) 

passwordCredentials := []graphmodels.PasswordCredentialable {
	passwordCredential,

}
requestBody.SetPasswordCredentials(passwordCredentials)

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```