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


requestBody := graphmodels.NewExtension()
id := "com.contoso.socialSettings"
requestBody.SetId(&id) 
additionalData := map[string]interface{}{
	"extensionName" : "com.contoso.socialSettings", 
	"skypeId" : "skypeId.AdeleV", 
	"linkedInProfile" : "www.linkedin.com/in/testlinkedinprofile", 
	"xboxGamerTag" : "AwesomeAdele", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Extensions().Post(context.Background(), requestBody, nil)


```