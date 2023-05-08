---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")

requestParameters := &graphconfig.ItemAppRoleAssignedResourcesRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","accountEnabled","servicePrincipalType","signInAudience"},
}
configuration := &graphconfig.ItemAppRoleAssignedResourcesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().AppRoleAssignedResources().Get(context.Background(), configuration)


```