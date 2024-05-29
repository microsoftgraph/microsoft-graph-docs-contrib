---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.externalconnectors.Schema schema = new com.microsoft.graph.models.externalconnectors.Schema();
schema.setBaseType("microsoft.graph.externalItem");
LinkedList<com.microsoft.graph.models.externalconnectors.Property> properties = new LinkedList<com.microsoft.graph.models.externalconnectors.Property>();
com.microsoft.graph.models.externalconnectors.Property property = new com.microsoft.graph.models.externalconnectors.Property();
property.setName("ticketTitle");
property.setType(com.microsoft.graph.models.externalconnectors.PropertyType.String);
property.setIsSearchable(true);
property.setIsRetrievable(true);
LinkedList<com.microsoft.graph.models.externalconnectors.com.microsoft.graph.models.externalconnectors.Label> labels = new LinkedList<com.microsoft.graph.models.externalconnectors.com.microsoft.graph.models.externalconnectors.Label>();
labels.add(com.microsoft.graph.models.externalconnectors.Label.Title);
property.setLabels(labels);
properties.add(property);
com.microsoft.graph.models.externalconnectors.Property property1 = new com.microsoft.graph.models.externalconnectors.Property();
property1.setName("priority");
property1.setType(com.microsoft.graph.models.externalconnectors.PropertyType.String);
property1.setIsQueryable(true);
property1.setIsRetrievable(true);
property1.setIsSearchable(false);
properties.add(property1);
com.microsoft.graph.models.externalconnectors.Property property2 = new com.microsoft.graph.models.externalconnectors.Property();
property2.setName("assignee");
property2.setType(com.microsoft.graph.models.externalconnectors.PropertyType.String);
property2.setIsRetrievable(true);
properties.add(property2);
schema.setProperties(properties);
com.microsoft.graph.models.externalconnectors.Schema result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").schema().patch(schema);


```