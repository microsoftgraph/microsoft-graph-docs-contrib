---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonInterest personInterest = new PersonInterest();
LinkedList<String> categories = new LinkedList<String>();
categories.add("Sports");
personInterest.setCategories(categories);
PersonInterest result = graphClient.me().profile().interests().byPersonInterestId("{personInterest-id}").patch(personInterest);


```