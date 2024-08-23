---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationRubric educationRubric = new EducationRubric();
educationRubric.setDisplayName("Example Credit Rubric");
EducationItemBody description = new EducationItemBody();
description.setContent("This is an example of a credit rubric (no points)");
description.setContentType(BodyType.Text);
educationRubric.setDescription(description);
LinkedList<RubricLevel> levels = new LinkedList<RubricLevel>();
RubricLevel rubricLevel = new RubricLevel();
rubricLevel.setDisplayName("Good");
EducationItemBody description1 = new EducationItemBody();
description1.setContent("");
description1.setContentType(BodyType.Text);
rubricLevel.setDescription(description1);
levels.add(rubricLevel);
RubricLevel rubricLevel1 = new RubricLevel();
rubricLevel1.setDisplayName("Poor");
EducationItemBody description2 = new EducationItemBody();
description2.setContent("");
description2.setContentType(BodyType.Text);
rubricLevel1.setDescription(description2);
levels.add(rubricLevel1);
educationRubric.setLevels(levels);
LinkedList<RubricQuality> qualities = new LinkedList<RubricQuality>();
RubricQuality rubricQuality = new RubricQuality();
EducationItemBody description3 = new EducationItemBody();
description3.setContent("Argument");
description3.setContentType(BodyType.Text);
rubricQuality.setDescription(description3);
LinkedList<RubricCriterion> criteria = new LinkedList<RubricCriterion>();
RubricCriterion rubricCriterion = new RubricCriterion();
EducationItemBody description4 = new EducationItemBody();
description4.setContent("The essay's argument is persuasive.");
description4.setContentType(BodyType.Text);
rubricCriterion.setDescription(description4);
criteria.add(rubricCriterion);
RubricCriterion rubricCriterion1 = new RubricCriterion();
EducationItemBody description5 = new EducationItemBody();
description5.setContent("The essay's argument does not make sense.");
description5.setContentType(BodyType.Text);
rubricCriterion1.setDescription(description5);
criteria.add(rubricCriterion1);
rubricQuality.setCriteria(criteria);
qualities.add(rubricQuality);
RubricQuality rubricQuality1 = new RubricQuality();
EducationItemBody description6 = new EducationItemBody();
description6.setContent("Spelling and Grammar");
description6.setContentType(BodyType.Text);
rubricQuality1.setDescription(description6);
LinkedList<RubricCriterion> criteria1 = new LinkedList<RubricCriterion>();
RubricCriterion rubricCriterion2 = new RubricCriterion();
EducationItemBody description7 = new EducationItemBody();
description7.setContent("The essay uses proper spelling and grammar with few or no errors.");
description7.setContentType(BodyType.Text);
rubricCriterion2.setDescription(description7);
criteria1.add(rubricCriterion2);
RubricCriterion rubricCriterion3 = new RubricCriterion();
EducationItemBody description8 = new EducationItemBody();
description8.setContent("The essay has numerous errors in spelling and/or grammar.");
description8.setContentType(BodyType.Text);
rubricCriterion3.setDescription(description8);
criteria1.add(rubricCriterion3);
rubricQuality1.setCriteria(criteria1);
qualities.add(rubricQuality1);
educationRubric.setQualities(qualities);
EducationRubric result = graphClient.education().me().rubrics().post(educationRubric);


```