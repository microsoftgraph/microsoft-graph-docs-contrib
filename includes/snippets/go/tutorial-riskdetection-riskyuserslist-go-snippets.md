---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "userDisplayName eq 'MyTestUser1'"

requestParameters := &graphconfig.RiskyUsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.RiskyUsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskyUsers().Get(context.Background(), configuration)


```