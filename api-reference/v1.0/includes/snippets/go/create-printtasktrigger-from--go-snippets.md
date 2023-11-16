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


requestBody := graphmodels.NewPrintTaskTrigger()
event := graphmodels.JOBSTARTED_PRINTEVENT 
requestBody.SetEvent(&event) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}", 
}
requestBody.SetAdditionalData(additionalData)

taskTriggers, err := graphClient.Print().Printers().ByPrinterId("printer-id").TaskTriggers().Post(context.Background(), requestBody, nil)


```