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
skillProficiency.setProficiency(SkillProficiencyLevel.AdvancedProfessional);
SkillProficiency result = graphClient.me().profile().skills().bySkillProficiencyId("{skillProficiency-id}").patch(skillProficiency);


```