---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewServicePrincipal()


keyCredential := graphmodels.NewKeyCredential()
customKeyIdentifier := []byte("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
keyCredential.SetCustomKeyIdentifier(&customKeyIdentifier) 
endDateTime , err := time.Parse(time.RFC3339, "2027-01-22T00:00:00Z")
keyCredential.SetEndDateTime(&endDateTime) 
keyId := uuid.MustParse("4c266507-3e74-4b91-aeba-18a25b450f6e")
keyCredential.SetKeyId(&keyId) 
startDateTime , err := time.Parse(time.RFC3339, "2024-02-21T17:09:35Z")
keyCredential.SetStartDateTime(&startDateTime) 
type := "X509CertAndPassword"
keyCredential.SetType(&type) 
usage := "Sign"
keyCredential.SetUsage(&usage) 
key := []byte("mIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=")
keyCredential.SetKey(&key) 
displayName := "CN=AWSContoso"
keyCredential.SetDisplayName(&displayName) 
keyCredential1 := graphmodels.NewKeyCredential()
customKeyIdentifier := []byte("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
keyCredential1.SetCustomKeyIdentifier(&customKeyIdentifier) 
endDateTime , err := time.Parse(time.RFC3339, "2027-01-22T00:00:00Z")
keyCredential1.SetEndDateTime(&endDateTime) 
keyId := uuid.MustParse("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42")
keyCredential1.SetKeyId(&keyId) 
startDateTime , err := time.Parse(time.RFC3339, "2024-02-21T17:09:35Z")
keyCredential1.SetStartDateTime(&startDateTime) 
type := "AsymmetricX509Cert"
keyCredential1.SetType(&type) 
usage := "Verify"
keyCredential1.SetUsage(&usage) 
key := []byte("mIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=")
keyCredential1.SetKey(&key) 
displayName := "CN=AWSContoso"
keyCredential1.SetDisplayName(&displayName) 

keyCredentials := []graphmodels.KeyCredentialable {
	keyCredential,
	keyCredential1,
}
requestBody.SetKeyCredentials(keyCredentials)


passwordCredential := graphmodels.NewPasswordCredential()
customKeyIdentifier := []byte("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
passwordCredential.SetCustomKeyIdentifier(&customKeyIdentifier) 
keyId := uuid.MustParse("4c266507-3e74-4b91-aeba-18a25b450f6e")
passwordCredential.SetKeyId(&keyId) 
endDateTime , err := time.Parse(time.RFC3339, "2022-01-27T19:40:33Z")
passwordCredential.SetEndDateTime(&endDateTime) 
startDateTime , err := time.Parse(time.RFC3339, "2027-01-22T00:00:00Z")
passwordCredential.SetStartDateTime(&startDateTime) 
secretText := "61891f4ee44d"
passwordCredential.SetSecretText(&secretText) 

passwordCredentials := []graphmodels.PasswordCredentialable {
	passwordCredential,
}
requestBody.SetPasswordCredentials(passwordCredentials)

servicePrincipals, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```