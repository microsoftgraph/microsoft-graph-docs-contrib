---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphorganization "github.com/microsoftgraph/msgraph-sdk-go/organization"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Accept-Language", "fr-FR")

configuration := &graphorganization.OrganizationItemBrandingRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

branding, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Get(context.Background(), configuration)


```