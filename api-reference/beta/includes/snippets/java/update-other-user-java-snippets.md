---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
LinkedList<String> businessPhones = new LinkedList<String>();
businessPhones.add("+1 425 555 0109");
user.setBusinessPhones(businessPhones);
user.setOfficeLocation("18/2111");
AuthorizationInfo authorizationInfo = new AuthorizationInfo();
LinkedList<String> certificateUserIds = new LinkedList<String>();
certificateUserIds.add("5432109876543210@mil");
authorizationInfo.setCertificateUserIds(certificateUserIds);
user.setAuthorizationInfo(authorizationInfo);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```