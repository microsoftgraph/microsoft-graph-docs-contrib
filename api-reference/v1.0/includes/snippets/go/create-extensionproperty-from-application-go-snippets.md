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


requestBody := graphmodels.NewExtensionProperty()
name := "jobGroup"
requestBody.SetName(&name) 
dataType := "String"
requestBody.SetDataType(&dataType) 
targetObjects := []string {
	"User",
}
requestBody.SetTargetObjects(targetObjects)

extensionProperties, err := graphClient.Applications().ByApplicationId("application-id").ExtensionProperties().Post(context.Background(), requestBody, nil)


```