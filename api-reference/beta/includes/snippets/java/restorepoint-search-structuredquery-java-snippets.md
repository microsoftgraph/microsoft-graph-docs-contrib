---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody searchPostRequestBody = new com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody();
ArtifactQuery artifactQuery = new ArtifactQuery();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 structuredQueryExpression = new ();
LinkedList<String> senders = new LinkedList<String>();
senders.add("abc@contoso.com");
structuredQueryExpression.setSenders(senders);
LinkedList<String> subjects = new LinkedList<String>();
subjects.add("Check email");
subjects.add("Important");
structuredQueryExpression.setSubjects(subjects);
structuredQueryExpression.setHasAttachment(true);
LinkedList<String> items = new LinkedList<String>();
items.add("email");
structuredQueryExpression.setItems(items);
additionalData.put("structuredQueryExpression", structuredQueryExpression);
artifactQuery.setAdditionalData(additionalData);
searchPostRequestBody.setArtifactQuery(artifactQuery);
LinkedList<String> protectionUnitIds = new LinkedList<String>();
protectionUnitIds.add("23014d8c-71fe-4d00-a01a-31850bc5b42a");
searchPostRequestBody.setProtectionUnitIds(protectionUnitIds);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-01-30T00:00:00Z");
protectionTimePeriod.setEndDateTime(endDateTime);
searchPostRequestBody.setProtectionTimePeriod(protectionTimePeriod);
searchPostRequestBody.setRestorePointPreference(RestorePointPreference.Oldest);
var result = graphClient.solutions().backupRestore().restorePoints().search().post(searchPostRequestBody);


```