---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.deletepasswordsinglesignoncredentials.DeletePasswordSingleSignOnCredentialsPostRequestBody deletePasswordSingleSignOnCredentialsPostRequestBody = new com.microsoft.graph.beta.users.item.deletepasswordsinglesignoncredentials.DeletePasswordSingleSignOnCredentialsPostRequestBody();
deletePasswordSingleSignOnCredentialsPostRequestBody.setId("314ac440-129f-4cb3-ad61-24ef4a7de1d9");
graphClient.users().byUserId("{user-id}").deletePasswordSingleSignOnCredentials().post(deletePasswordSingleSignOnCredentialsPostRequestBody);


```