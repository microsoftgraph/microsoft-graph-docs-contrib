---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPhone itemPhone = new ItemPhone();
itemPhone.setType(PhoneType.Other);
ItemPhone result = graphClient.users().byUserId("{user-id}").profile().phones().byItemPhoneId("{itemPhone-id}").patch(itemPhone);


```