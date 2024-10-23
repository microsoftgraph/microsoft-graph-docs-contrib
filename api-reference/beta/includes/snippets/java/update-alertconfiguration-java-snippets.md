---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.healthmonitoring.AlertConfiguration alertConfiguration = new com.microsoft.graph.beta.models.healthmonitoring.AlertConfiguration();
LinkedList<com.microsoft.graph.beta.models.healthmonitoring.EmailNotificationConfiguration> emailNotificationConfigurations = new LinkedList<com.microsoft.graph.beta.models.healthmonitoring.EmailNotificationConfiguration>();
com.microsoft.graph.beta.models.healthmonitoring.EmailNotificationConfiguration emailNotificationConfiguration = new com.microsoft.graph.beta.models.healthmonitoring.EmailNotificationConfiguration();
emailNotificationConfiguration.setGroupId("c5140914-9507-4180-b60c-04d5ec5eddcb");
emailNotificationConfiguration.setIsEnabled(true);
emailNotificationConfigurations.add(emailNotificationConfiguration);
alertConfiguration.setEmailNotificationConfigurations(emailNotificationConfigurations);
com.microsoft.graph.models.healthmonitoring.AlertConfiguration result = graphClient.reports().healthMonitoring().alertConfigurations().byAlertConfigurationId("{alertConfiguration-id}").patch(alertConfiguration);


```