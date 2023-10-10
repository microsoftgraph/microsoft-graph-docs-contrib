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


requestBody := graphmodels.NewExtension()
id := "com.contoso.socialSettings"
requestBody.SetId(&id) 
additionalData := map[string]interface{}{
	"odataContext" : "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity", 
	"xboxGamerTag" : "FierceAdele", 
	"linkedInProfile" : "www.linkedin.com/in/testlinkedinprofile", 
}
requestBody.SetAdditionalData(additionalData)

extensions, err := graphClient.Users().ByUserId("user-id").Extensions().ByExtensionId("extension-id").Get(context.Background(), requestBody, nil)


```