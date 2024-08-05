---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.microsoftgraphsecurityrunhuntingquery.RunHuntingQueryPostRequestBody runHuntingQueryPostRequestBody = new com.microsoft.graph.security.microsoftgraphsecurityrunhuntingquery.RunHuntingQueryPostRequestBody();
runHuntingQueryPostRequestBody.setQuery("DeviceProcessEvents");
runHuntingQueryPostRequestBody.setTimespan("P90D");
var result = graphClient.security().microsoftGraphSecurityRunHuntingQuery().post(runHuntingQueryPostRequestBody);


```