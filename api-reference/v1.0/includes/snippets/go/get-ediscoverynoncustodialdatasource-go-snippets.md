---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphconfig.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().ByNoncustodialDataSourceId("ediscoveryNoncustodialDataSource-id").Get(context.Background(), configuration)


```