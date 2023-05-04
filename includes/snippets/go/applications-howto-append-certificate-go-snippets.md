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


requestBody := graphmodels.NewApplication()


keyCredential := graphmodels.NewKeyCredential()
endDateTime , err := time.Parse(time.RFC3339, "2024-01-11T15:31:26Z")
keyCredential.SetEndDateTime(&endDateTime) 
startDateTime , err := time.Parse(time.RFC3339, "2023-01-12T09:31:26Z")
keyCredential.SetStartDateTime(&startDateTime) 
type := "AsymmetricX509Cert"
keyCredential.SetType(&type) 
usage := "Verify"
keyCredential.SetUsage(&usage) 
key := []byte("base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==")
keyCredential.SetKey(&key) 
displayName := "CN=20230114"
keyCredential.SetDisplayName(&displayName) 
keyCredential1 := graphmodels.NewKeyCredential()
customKeyIdentifier := []byte("52ED9B5038A47B9E2E2190715CC238359D4F8F73")
keyCredential1.SetCustomKeyIdentifier(&customKeyIdentifier) 
type := "AsymmetricX509Cert"
keyCredential1.SetType(&type) 
usage := "Verify"
keyCredential1.SetUsage(&usage) 
key := []byte("base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA==")
keyCredential1.SetKey(&key) 
displayName := "CN=20230113"
keyCredential1.SetDisplayName(&displayName) 

keyCredentials := []graphmodels.KeyCredentialable {
	keyCredential,
	keyCredential1,

}
requestBody.SetKeyCredentials(keyCredentials)

result, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```