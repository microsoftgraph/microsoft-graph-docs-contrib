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
extensionName := "com.contoso.roamingSettings"
requestBody.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
	"theme" : "dark", 
	"color" : "purple", 
	"lang" : "Japanese", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Extensions().Post(context.Background(), requestBody, nil)


```