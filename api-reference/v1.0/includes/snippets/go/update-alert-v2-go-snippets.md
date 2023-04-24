---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAlert()
assignedTo := "secAdmin@contoso.onmicrosoft.com"
requestBody.SetAssignedTo(&assignedTo) 
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MALWARE_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
status := graphmodels.INPROGRESS_ALERTSTATUS 
requestBody.SetStatus(&status) 

result, err := graphClient.Security().Alerts_v2().ByAlerts_v2().Id("alert-id").Patch(context.Background(), requestBody, nil)


```