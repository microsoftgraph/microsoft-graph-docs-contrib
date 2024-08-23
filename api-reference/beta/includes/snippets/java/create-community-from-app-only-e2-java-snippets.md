---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Community community = new Community();
community.setDisplayName("Financial Advice for Software Engineers");
community.setDescription("A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.");
community.setPrivacy(CommunityPrivacy.Public);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> ownersOdataBind = new LinkedList<String>();
ownersOdataBind.add("https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2");
additionalData.put("owners@odata.bind", ownersOdataBind);
community.setAdditionalData(additionalData);
Community result = graphClient.employeeExperience().communities().post(community);


```