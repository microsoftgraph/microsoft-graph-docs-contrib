---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)


// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groupId := "{groupId}"
servicePlanId := "{servicePlanId}"
getProvisionedCloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().GetProvisionedCloudPCsWithGroupIdWithServicePlanId(&groupId, &servicePlanId).GetAsGetProvisionedCloudPCsWithGroupIdWithServicePlanIdGetResponse(context.Background(), nil)


```