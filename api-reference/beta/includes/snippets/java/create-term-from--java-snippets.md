---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.termstore.Term term = new com.microsoft.graph.beta.models.termstore.Term();
LinkedList<com.microsoft.graph.beta.models.termstore.LocalizedLabel> labels = new LinkedList<com.microsoft.graph.beta.models.termstore.LocalizedLabel>();
com.microsoft.graph.beta.models.termstore.LocalizedLabel localizedLabel = new com.microsoft.graph.beta.models.termstore.LocalizedLabel();
localizedLabel.setLanguageTag("en-US");
localizedLabel.setName("Car");
localizedLabel.setIsDefault(true);
labels.add(localizedLabel);
term.setLabels(labels);
com.microsoft.graph.models.termstore.Term result = graphClient.termStore().sets().bySetId("{set-id}").children().post(term);


```