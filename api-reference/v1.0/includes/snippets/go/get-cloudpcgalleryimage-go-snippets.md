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



galleryImages, err := graphClient.DeviceManagement().VirtualEndpoint().GalleryImages().ByCloudPcGalleryImageId("cloudPcGalleryImage-id").Get(context.Background(), nil)


```