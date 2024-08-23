---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.termstore.Term term = new com.microsoft.graph.models.termstore.Term();
LinkedList<com.microsoft.graph.models.termstore.LocalizedLabel> labels = new LinkedList<com.microsoft.graph.models.termstore.LocalizedLabel>();
com.microsoft.graph.models.termstore.LocalizedLabel localizedLabel = new com.microsoft.graph.models.termstore.LocalizedLabel();
localizedLabel.setName("changedLabel");
localizedLabel.setLanguageTag("en-US");
localizedLabel.setIsDefault(true);
labels.add(localizedLabel);
term.setLabels(labels);
com.microsoft.graph.models.termstore.Term result = graphClient.sites().bySiteId("{site-id}").termStore().sets().bySetId("{set-id}").terms().byTermId("{term-id}").patch(term);


```