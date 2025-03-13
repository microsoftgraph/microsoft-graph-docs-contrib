---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.validatepassword.ValidatePasswordPostRequestBody validatePasswordPostRequestBody = new com.microsoft.graph.beta.users.validatepassword.ValidatePasswordPostRequestBody();
validatePasswordPostRequestBody.setPassword("1234567890");
var result = graphClient.users().validatePassword().post(validatePasswordPostRequestBody);


```