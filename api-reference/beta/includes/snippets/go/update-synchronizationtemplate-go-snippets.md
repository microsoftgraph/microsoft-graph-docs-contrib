---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Applications/Item/Synchronization/Templates/Item"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/applications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <token>")

configuration := &graphconfig.ApplicationItemSynchronizationTemplateItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTemplate()
additionalData := map[string]interface{}{
	"id" : "Slack", 
	"applicationId" : "{id}", 
	"factoryTag" : "CustomSCIM", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ApplicationsById("application-id").Synchronization().TemplatesById("synchronizationTemplate-id").Put(context.Background(), requestBody, configuration)


```