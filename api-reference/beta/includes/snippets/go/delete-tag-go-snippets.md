---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)


requestForcedelete := "true"

requestParameters := &graphcompliance.EdiscoveryCasesItemTagsItemRequestBuilderDeleteQueryParameters{
	Forcedelete: &requestForcedelete,
}
configuration := &graphcompliance.EdiscoveryCasesItemTagsItemRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().ByTagId("tag-id").Delete(context.Background(), configuration)


```