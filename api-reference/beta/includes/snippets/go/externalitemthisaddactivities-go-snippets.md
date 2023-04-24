---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Connections/Item/Items/Item/ExternalConnectorsAddActivities"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddActivitiesPostRequestBody()


externalActivity := graphmodels.NewExternalActivity()
type := graphmodels.STRING_EXTERNALACTIVITYTYPE 
externalActivity.SetType(&type) 
startDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
externalActivity.SetStartDateTime(&startDateTime) 

activities := []graphmodels.ExternalActivityable {
	externalActivity,

}
requestBody.SetActivities(activities)

result, err := graphClient.Connections().ByConnectionId("externalConnection-id").Items().ByItemId("externalItem-id").ExternalConnectorsAddActivities().Post(context.Background(), requestBody, nil)


```