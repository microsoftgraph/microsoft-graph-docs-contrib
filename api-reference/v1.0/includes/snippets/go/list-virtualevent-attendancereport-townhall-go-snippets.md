---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)


// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
attendanceReports, err := graphClient.Solutions().VirtualEvents().Townhalls().ByVirtualEventTownhallId("virtualEventTownhall-id").Sessions().ByVirtualEventSessionId("virtualEventSession-id").AttendanceReports().Get(context.Background(), nil)


```