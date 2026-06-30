---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.microsoftgraphsecurityrunhuntingquery.RunHuntingQueryPostRequestBody runHuntingQueryPostRequestBody = new com.microsoft.graph.beta.security.microsoftgraphsecurityrunhuntingquery.RunHuntingQueryPostRequestBody();
runHuntingQueryPostRequestBody.setQuery("DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2");
runHuntingQueryPostRequestBody.setTimespan("P1D");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("workspaceId", "00000000-0000-0000-0000-000000000001");
runHuntingQueryPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.security().microsoftGraphSecurityRunHuntingQuery().post(runHuntingQueryPostRequestBody);


```