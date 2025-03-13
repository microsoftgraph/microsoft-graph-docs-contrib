---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <token>")

configuration := &graphserviceprincipals.ItemSynchronizationJobsItemRestartRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphserviceprincipals.NewRestartPostRequestBody()
criteria := graphmodels.NewSynchronizationJobRestartCriteria()
resetScope := graphmodels.WATERMARK, ESCROWS, QUARANTINESTATE_SYNCHRONIZATIONJOBRESTARTSCOPE 
criteria.SetResetScope(&resetScope) 
requestBody.SetCriteria(criteria)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().BySynchronizationJobId("synchronizationJob-id").Restart().Post(context.Background(), requestBody, configuration)


```