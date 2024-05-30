---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewApplication()


keyCredential := graphmodels.NewKeyCredential()
endDateTime , err := time.Parse(time.RFC3339, "2024-01-11T15:31:26Z")
keyCredential.SetEndDateTime(&endDateTime) 
startDateTime , err := time.Parse(time.RFC3339, "2023-01-12T15:31:26Z")
keyCredential.SetStartDateTime(&startDateTime) 
type := "AsymmetricX509Cert"
keyCredential.SetType(&type) 
usage := "Verify"
keyCredential.SetUsage(&usage) 
key := []byte("base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==")
keyCredential.SetKey(&key) 
displayName := "CN=20230112"
keyCredential.SetDisplayName(&displayName) 

keyCredentials := []graphmodels.KeyCredentialable {
	keyCredential,
}
requestBody.SetKeyCredentials(keyCredentials)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```