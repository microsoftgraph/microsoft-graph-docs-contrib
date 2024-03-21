---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



exportJobs, err := graphClient.DeviceManagement().VirtualEndpoint().Reports().ExportJobs().ByCloudPcExportJobId("cloudPcExportJob-id").Get(context.Background(), nil)


```