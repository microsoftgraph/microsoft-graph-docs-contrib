---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

requestBody := graphdirectory.NewUploadPostRequestBody()
uploadUrl := "https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b"
requestBody.SetUploadUrl(&uploadUrl) 
sha256FileHash := "D7F9....61E6F"
requestBody.SetSha256FileHash(&sha256FileHash) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Directory().PublicKeyInfrastructure().CertificateBasedAuthConfigurations().ByCertificateBasedAuthPkiId("certificateBasedAuthPki-id").Upload().Post(context.Background(), requestBody, nil)


```