---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

requestBody := graphdevicemanagement.NewGetCachedReportPostRequestBody()
id := "Id value"
requestBody.SetId(&id) 
select := []string {
	"Select value",
}
requestBody.SetSelect(select)
search := "Search value"
requestBody.SetSearch(&search) 
groupBy := []string {
	"Group By value",
}
requestBody.SetGroupBy(groupBy)
orderBy := []string {
	"Order By value",
}
requestBody.SetOrderBy(orderBy)
skip := int32(4)
requestBody.SetSkip(&skip) 
top := int32(3)
requestBody.SetTop(&top) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().Reports().GetCachedReport().Post(context.Background(), requestBody, nil)


```