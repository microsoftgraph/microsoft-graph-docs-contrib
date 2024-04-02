---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemAddress itemAddress = new ItemAddress();
itemAddress.setAllowedAudiences(EnumSet.of(AllowedAudiences.Me));
itemAddress.setDisplayName("Secret Hideout");
ItemAddress result = graphClient.users().byUserId("{user-id}").profile().addresses().byItemAddressId("{itemAddress-id}").patch(itemAddress);


```