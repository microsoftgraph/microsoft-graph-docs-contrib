---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsecurity.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphsecurity.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

noncustodialDataSources, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().Get(context.Background(), configuration)


```