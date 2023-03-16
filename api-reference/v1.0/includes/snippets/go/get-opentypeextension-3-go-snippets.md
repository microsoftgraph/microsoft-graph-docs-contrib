---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.MeMessageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"extensions($filter=id%20eq%20'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')"},
}
configuration := &graphconfig.MeMessageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").Get(context.Background(), configuration)


```