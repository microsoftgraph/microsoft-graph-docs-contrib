---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningContent learningContent = new LearningContent();
learningContent.title = "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle";
learningContent.description = "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.";
learningContent.contentWebUrl = "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/";
learningContent.sourceName = "MsLearn";
learningContent.thumbnailWebUrl = "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF";
learningContent.languageTag = "en-us";
learningContent.numberOfPages = 9;
learningContent.duration = DatatypeFactory.newInstance().newDuration("PT20M");
learningContent.format = "Book";
learningContent.createdDateTime = OffsetDateTimeSerializer.deserialize("2018-01-01T00:00:00Z");
learningContent.lastModifiedDateTime = OffsetDateTimeSerializer.deserialize("2021-04-01T04:26:06.1995367Z");
LinkedList<String> contributorsList = new LinkedList<String>();
contributorsList.add("Scott Simpson");
learningContent.contributors = contributorsList;
LinkedList<String> additionalTagsList = new LinkedList<String>();
additionalTagsList.add("Create private or public teams");
additionalTagsList.add("Add members to teams");
learningContent.additionalTags = additionalTagsList;
LinkedList<String> skillTagsList = new LinkedList<String>();
skillTagsList.add("Create teams");
skillTagsList.add("Teams channels");
skillTagsList.add("Teams members");
learningContent.skillTags = skillTagsList;
learningContent.isActive = true;
learningContent.isPremium = false;
learningContent.isSearchable = true;

graphClient.employeeExperience().learningProviders("13727311-e7bb-470d-8b20-6a23d9030d70").learningContents("77029588-a660-46b6-ba58-3ce4d21d5678")
	.buildRequest()
	.patch(learningContent);

```