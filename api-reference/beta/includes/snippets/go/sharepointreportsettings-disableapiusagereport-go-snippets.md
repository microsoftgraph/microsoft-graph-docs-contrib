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

requestBody := graphadmin.NewDisableApiUsageReportPostRequestBody()
metric := "egressReport"
requestBody.SetMetric(&metric) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
disableApiUsageReport, err := graphClient.Admin().ReportSettings().SharePoint().DisableApiUsageReport().Post(context.Background(), requestBody, nil)


```