---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.DetectionRule detectionRule = new com.microsoft.graph.beta.models.security.DetectionRule();
com.microsoft.graph.beta.models.security.QueryCondition queryCondition = new com.microsoft.graph.beta.models.security.QueryCondition();
queryCondition.setQueryText("DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'");
detectionRule.setQueryCondition(queryCondition);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("status", "disabled");
detectionRule.setAdditionalData(additionalData);
com.microsoft.graph.models.security.DetectionRule result = graphClient.security().rules().detectionRules().byDetectionRuleId("{detectionRule-id}").patch(detectionRule);


```