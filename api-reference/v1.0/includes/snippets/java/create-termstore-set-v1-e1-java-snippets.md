---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Set set = new Set();
Group parentGroup = new Group();
parentGroup.id = "fc733b51-10f1-40fd-b784-dc6d1e42804b";
set.parentGroup = parentGroup;
LinkedList<LocalizedName> localizedNamesList = new LinkedList<LocalizedName>();
LocalizedName localizedNames = new LocalizedName();
localizedNames.languageTag = "en-US";
localizedNames.name = "Department";
localizedNamesList.add(localizedNames);
set.localizedNames = localizedNamesList;

graphClient.sites("6a742cee-9216-4db5-8046-13a595684e74").termStore().sets()
	.buildRequest()
	.post(set);

```