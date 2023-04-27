---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/Synchronization/Jobs/Item/Restart"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <token>")

configuration := &graphconfig.ServicePrincipalItemSynchronizationJobItemRestartRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewRestartPostRequestBody()
criteria := graphmodels.NewSynchronizationJobRestartCriteria()
resetScope := graphmodels.WATERMARK, ESCROWS, QUARANTINESTATE_SYNCHRONIZATIONJOBRESTARTSCOPE 
criteria.SetResetScope(&resetScope) 
requestBody.SetCriteria(criteria)

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().ByJobId("synchronizationJob-id").Restart().Post(context.Background(), requestBody, configuration)


```