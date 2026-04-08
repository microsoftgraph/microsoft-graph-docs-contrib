---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkHoursAndLocationsSetting workHoursAndLocationsSetting = new WorkHoursAndLocationsSetting();
workHoursAndLocationsSetting.setMaxSharedWorkLocationDetails(MaxWorkLocationDetails.Approximate);
WorkHoursAndLocationsSetting result = graphClient.me().settings().workHoursAndLocations().patch(workHoursAndLocationsSetting);


```