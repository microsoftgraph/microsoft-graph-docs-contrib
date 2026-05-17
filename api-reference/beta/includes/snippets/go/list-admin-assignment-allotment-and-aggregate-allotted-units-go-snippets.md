---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)


requestApply := "groupby((skuId,skuPartNumber), aggregate(allottedUnits with sum as totalAllottedUnits, consumedUnits with sum as totalConsumedUnits))"

requestParameters := &graphadmin.CloudLicensingAllotmentsRequestBuilderGetQueryParameters{
	Apply: &requestApply,
}
configuration := &graphadmin.CloudLicensingAllotmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
allotments, err := graphClient.Admin().CloudLicensing().Allotments().Get(context.Background(), configuration)


```