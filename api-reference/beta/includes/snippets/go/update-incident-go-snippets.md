---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewIncident()
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MULTISTAGEDATTACK_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
customTags := []string {
	"Demo",
}
requestBody.SetCustomTags(customTags)

result, err := graphClient.Security().Incidents().ByIncidentId("incident-id").Patch(context.Background(), requestBody, nil)


```