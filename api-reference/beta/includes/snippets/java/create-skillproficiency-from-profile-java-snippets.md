---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SkillProficiency skillProficiency = new SkillProficiency();
LinkedList<String> categories = new LinkedList<String>();
categories.add("Professional");
skillProficiency.setCategories(categories);
skillProficiency.setAllowedAudiences(EnumSet.of(AllowedAudiences.Organization));
skillProficiency.setDisplayName("API Design");
skillProficiency.setProficiency(SkillProficiencyLevel.GeneralProfessional);
LinkedList<String> collaborationTags = new LinkedList<String>();
collaborationTags.add("ableToMentor");
skillProficiency.setCollaborationTags(collaborationTags);
SkillProficiency result = graphClient.me().profile().skills().post(skillProficiency);


```