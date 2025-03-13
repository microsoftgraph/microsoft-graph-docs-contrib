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

requestBody := graphmodels.NewExtension()
extensionName := "com.contoso.socialSettings"
requestBody.SetExtensionName(&extensionName) 
id := "com.contoso.socialSettings"
requestBody.SetId(&id) 
additionalData := map[string]interface{}{
	"skypeId" : "skypeId.AdeleV", 
	"linkedInProfile" : "www.linkedin.com/in/testlinkedinprofile", 
	"xboxGamerTag" : "AwesomeAdele", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
extensions, err := graphClient.Users().ByUserId("user-id").Extensions().Post(context.Background(), requestBody, nil)


```