---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Users/Item/Extensions/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"odataContext" : "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity", 
	"xboxGamerTag" : "FierceAdele", 
	"linkedInProfile" : "www.linkedin.com/in/testlinkedinprofile", 
	"id" : "com.contoso.socialSettings", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Extensions().ByExtensionId("extension-id").Get(context.Background(), requestBody, nil)


```