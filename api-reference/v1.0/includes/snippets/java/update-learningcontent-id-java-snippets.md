---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LearningContent learningContent = new LearningContent();
learningContent.setTitle("Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle");
learningContent.setDescription("A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.");
learningContent.setContentWebUrl("https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/");
learningContent.setSourceName("MsLearn");
learningContent.setThumbnailWebUrl("https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF");
learningContent.setLanguageTag("en-us");
learningContent.setNumberOfPages(9);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT20M"));
learningContent.setDuration(duration);
learningContent.setFormat("Book");
learningContent.setLevel(Level.Beginner);
OffsetDateTime createdDateTime = OffsetDateTime.parse("2018-01-01T00:00:00Z");
learningContent.setCreatedDateTime(createdDateTime);
OffsetDateTime lastModifiedDateTime = OffsetDateTime.parse("2021-04-01T04:26:06.1995367Z");
learningContent.setLastModifiedDateTime(lastModifiedDateTime);
LinkedList<String> contributors = new LinkedList<String>();
contributors.add("Lina Wagner");
contributors.add("Lisa Richter");
learningContent.setContributors(contributors);
LinkedList<String> additionalTags = new LinkedList<String>();
additionalTags.add("Create private or public teams");
additionalTags.add("Add members to teams");
learningContent.setAdditionalTags(additionalTags);
LinkedList<String> skillTags = new LinkedList<String>();
skillTags.add("Create teams");
skillTags.add("Teams channels");
skillTags.add("Teams members");
learningContent.setSkillTags(skillTags);
learningContent.setIsActive(true);
learningContent.setIsPremium(false);
learningContent.setIsSearchable(true);
LearningContent result = graphClient.employeeExperience().learningProviders().byLearningProviderId("{learningProvider-id}").learningContents().byLearningContentId("{learningContent-id}").patch(learningContent);


```