---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphexternal "github.com/microsoftgraph/msgraph-sdk-go/external"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-sdk-go/models/externalconnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphexternal.NewAddActivitiesPostRequestBody()


externalActivity := graphmodelsexternalconnectors.NewExternalActivity()
type := graphmodels.CREATED_EXTERNALACTIVITYTYPE 
externalActivity.SetType(&type) 
startDateTime , err := time.Parse(time.RFC3339, "2021-04-06T18:04:31.033Z")
externalActivity.SetStartDateTime(&startDateTime) 
performedBy := graphmodelsexternalconnectors.NewIdentity()
type := graphmodels.USER_IDENTITYTYPE 
performedBy.SetType(&type) 
id := "1f0c997e-99f7-43f1-8cca-086f8d42be8d"
performedBy.SetId(&id) 
externalActivity.SetPerformedBy(performedBy)

activities := []graphmodelsexternalconnectors.ExternalActivityable {
	externalActivity,
}
requestBody.SetActivities(activities)

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Items().ByItemId("externalItem-id").MicrosoftGraphExternalConnectorsAddActivities().Post(context.Background(), requestBody, nil)


```