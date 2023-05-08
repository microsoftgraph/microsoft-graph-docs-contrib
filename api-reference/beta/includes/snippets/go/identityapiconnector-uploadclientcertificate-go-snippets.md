---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Identity/ApiConnectors/Item/UploadClientCertificate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUploadClientCertificatePostRequestBody()
pkcs12Value := "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
requestBody.SetPkcs12Value(&pkcs12Value) 
password := "<password>"
requestBody.SetPassword(&password) 

result, err := graphClient.Identity().ApiConnectors().ByApiConnectorId("identityApiConnector-id").UploadClientCertificate().Post(context.Background(), requestBody, nil)


```