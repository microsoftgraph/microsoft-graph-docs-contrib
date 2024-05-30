---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserAccountInformation userAccountInformation = new UserAccountInformation();
userAccountInformation.setCountryCode("NO");
UserAccountInformation result = graphClient.me().profile().account().byUserAccountInformationId("{userAccountInformation-id}").patch(userAccountInformation);


```