---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

requestParameters := &graphsecurity.CasesEdiscoveryCasesItemNoncustodialDataSourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphsecurity.CasesEdiscoveryCasesItemNoncustodialDataSourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
noncustodialDataSources, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().Get(context.Background(), configuration)


```