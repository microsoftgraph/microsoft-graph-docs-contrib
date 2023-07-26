---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {Token}")

configuration := &graphserviceprincipals.ServicePrincipalItemSynchronizationJobItemSchemaRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().ByJobId("synchronizationJob-id").Schema().Get(context.Background(), configuration)


```