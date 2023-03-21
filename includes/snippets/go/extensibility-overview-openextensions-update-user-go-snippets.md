---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"xboxGamerTag" : "FierceAdele", 
	"linkedInProfile" : "www.linkedin.com/in/testlinkedinprofile", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.UsersById("user-id").ExtensionsById("extension-id").Patch(context.Background(), requestBody, nil)


```