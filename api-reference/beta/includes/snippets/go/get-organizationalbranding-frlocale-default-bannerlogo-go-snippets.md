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



graphClient.Organization().ByOrganizationId("organization-id").Branding().Localizations().ByOrganizationalBrandingLocalizationId("organizationalBrandingLocalization-id").BannerLogo().Get(context.Background(), nil)


```