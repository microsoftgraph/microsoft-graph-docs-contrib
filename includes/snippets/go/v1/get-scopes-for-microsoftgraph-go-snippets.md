---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "displayName eq 'Microsoft Graph'"

requestParameters := &graphserviceprincipals.ServicePrincipalsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName","appId","oauth2PermissionScopes"},
}
configuration := &graphserviceprincipals.ServicePrincipalsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

servicePrincipals, err := graphClient.ServicePrincipals().Get(context.Background(), configuration)


```