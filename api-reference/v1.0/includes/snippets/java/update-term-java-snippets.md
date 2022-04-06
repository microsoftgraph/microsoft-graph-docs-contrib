---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Term term = new Term();
LinkedList<LocalizedLabel> labelsList = new LinkedList<LocalizedLabel>();
LocalizedLabel labels = new LocalizedLabel();
labels.name = "changedLabel";
labels.languageTag = "en-US";
labels.isDefault = true;
labelsList.add(labels);
term.labels = labelsList;

graphClient.sites("microsoft.sharepoint.com,b9b0bc03-cbc4-40d2-aba9-2c9dd9821ddf,6a742cee-9216-4db5-8046-13a595684e74").termStore().sets("6362a3a4-c24c-4ce7-b491-e32c8a087071").terms("81be9856-9856-81be-5698-be815698be81")
	.buildRequest()
	.patch(term);

```