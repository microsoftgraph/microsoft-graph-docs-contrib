---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
LinkedList<String> businessPhonesList = new LinkedList<String>();
businessPhonesList.add("+1 425 555 0109");
user.businessPhones = businessPhonesList;
user.officeLocation = "18/2111";
AuthorizationInfo authorizationInfo = new AuthorizationInfo();
LinkedList<String> certificateUserIdsList = new LinkedList<String>();
certificateUserIdsList.add("5432109876543210@mil");
authorizationInfo.certificateUserIds = certificateUserIdsList;
user.authorizationInfo = authorizationInfo;

graphClient.users("{id}")
	.buildRequest()
	.patch(user);

```