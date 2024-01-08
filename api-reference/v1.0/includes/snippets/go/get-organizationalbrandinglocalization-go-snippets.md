---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Localizations().ByOrganizationalBrandingLocalizationId("organizationalBrandingLocalization-id").Get(context.Background(), nil)


```