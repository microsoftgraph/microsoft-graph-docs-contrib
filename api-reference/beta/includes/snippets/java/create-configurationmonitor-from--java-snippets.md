---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConfigurationMonitor configurationMonitor = new ConfigurationMonitor();
configurationMonitor.setDisplayName("Demo Monitor");
configurationMonitor.setDescription("This is a Demo Monitor");
ConfigurationBaseline baseline = new ConfigurationBaseline();
baseline.setDisplayName("Demo Baseline");
baseline.setDescription("This is a baseline with resources SharedMailbox, AcceptedDomain and MailContact");
LinkedList<BaselineResource> resources = new LinkedList<BaselineResource>();
BaselineResource baselineResource = new BaselineResource();
baselineResource.setDisplayName("TestSharedMailbox Resource");
baselineResource.setResourceType("microsoft.exchange.sharedmailbox");
OpenComplexDictionaryType properties = new OpenComplexDictionaryType();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("DisplayName", "TestSharedMailbox");
additionalData.put("Alias", "testSharedMailbox");
additionalData.put("Identity", "TestSharedMailbox");
additionalData.put("Ensure", "Present");
additionalData.put("PrimarySmtpAddress", "testSharedMailbox@contoso.onmicrosoft.com");
LinkedList<String> emailAddresses = new LinkedList<String>();
emailAddresses.add("abc@contoso.onmicrosoft.com");
additionalData.put("EmailAddresses", emailAddresses);
properties.setAdditionalData(additionalData);
baselineResource.setProperties(properties);
resources.add(baselineResource);
BaselineResource baselineResource1 = new BaselineResource();
baselineResource1.setDisplayName("Accepted Domain");
baselineResource1.setResourceType("microsoft.exchange.accepteddomain");
OpenComplexDictionaryType properties1 = new OpenComplexDictionaryType();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("Identity", "contoso.onmicrosoft.com");
additionalData1.put("DomainType", "InternalRelay");
additionalData1.put("Ensure", "Present");
properties1.setAdditionalData(additionalData1);
baselineResource1.setProperties(properties1);
resources.add(baselineResource1);
BaselineResource baselineResource2 = new BaselineResource();
baselineResource2.setDisplayName("Mail Contact Resource");
baselineResource2.setResourceType("microsoft.exchange.mailcontact");
OpenComplexDictionaryType properties2 = new OpenComplexDictionaryType();
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("Name", "Chris");
additionalData2.put("DisplayName", "Chris");
additionalData2.put("ExternalEmailAddress", "SMTP:chris@fabrikam.com");
additionalData2.put("Alias", "Chrisa");
additionalData2.put("Ensure", "Present");
properties2.setAdditionalData(additionalData2);
baselineResource2.setProperties(properties2);
resources.add(baselineResource2);
baseline.setResources(resources);
configurationMonitor.setBaseline(baseline);
ConfigurationMonitor result = graphClient.admin().configurationManagement().configurationMonitors().post(configurationMonitor);


```