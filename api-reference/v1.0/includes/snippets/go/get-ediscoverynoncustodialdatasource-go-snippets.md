---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsecurity.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphsecurity.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().ByNoncustodialDataSourceId("ediscoveryNoncustodialDataSource-id").Get(context.Background(), configuration)


```