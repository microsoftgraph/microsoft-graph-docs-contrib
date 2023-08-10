---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationRubric()
request_body.display_name = 'Example Credit Rubric'

description = EducationItemBody()
description.content = 'This is an example of a credit rubric (no points)'

description.contenttype(BodyType.Text('bodytype.text'))


request_body.description = description
levels_rubric_level1 = RubricLevel()
levels_rubric_level1.display_name = 'Good'

levels_rubric_level1description = EducationItemBody()
levels_rubric_level1description.content = ''

levels_rubric_level1description.contenttype(BodyType.Text('bodytype.text'))


levels_rubric_level1.description = levels_rubric_level1description

levelsArray []= levelsRubricLevel1;
levels_rubric_level2 = RubricLevel()
levels_rubric_level2.display_name = 'Poor'

levels_rubric_level2description = EducationItemBody()
levels_rubric_level2description.content = ''

levels_rubric_level2description.contenttype(BodyType.Text('bodytype.text'))


levels_rubric_level2.description = levels_rubric_level2description

levelsArray []= levelsRubricLevel2;
request_body.levels(levelsArray)


qualities_rubric_quality1 = RubricQuality()
qualities_rubric_quality1description = EducationItemBody()
qualities_rubric_quality1description.content = 'Argument'

qualities_rubric_quality1description.contenttype(BodyType.Text('bodytype.text'))


qualities_rubric_quality1.description = qualities_rubric_quality1description
criteria_rubric_criterion1 = RubricCriterion()
criteria_rubric_criterion1description = EducationItemBody()
criteria_rubric_criterion1description.content = 'The essay\'s argument is persuasive.'

criteria_rubric_criterion1description.contenttype(BodyType.Text('bodytype.text'))


criteria_rubric_criterion1.description = criteria_rubric_criterion1description

criteriaArray []= criteriaRubricCriterion1;
criteria_rubric_criterion2 = RubricCriterion()
criteria_rubric_criterion2description = EducationItemBody()
criteria_rubric_criterion2description.content = 'The essay\'s argument does not make sense.'

criteria_rubric_criterion2description.contenttype(BodyType.Text('bodytype.text'))


criteria_rubric_criterion2.description = criteria_rubric_criterion2description

criteriaArray []= criteriaRubricCriterion2;
qualities_rubric_quality1.criteria(criteriaArray)



qualitiesArray []= qualitiesRubricQuality1;
qualities_rubric_quality2 = RubricQuality()
qualities_rubric_quality2description = EducationItemBody()
qualities_rubric_quality2description.content = 'Spelling and Grammar'

qualities_rubric_quality2description.contenttype(BodyType.Text('bodytype.text'))


qualities_rubric_quality2.description = qualities_rubric_quality2description
criteria_rubric_criterion1 = RubricCriterion()
criteria_rubric_criterion1description = EducationItemBody()
criteria_rubric_criterion1description.content = 'The essay uses proper spelling and grammar with few or no errors.'

criteria_rubric_criterion1description.contenttype(BodyType.Text('bodytype.text'))


criteria_rubric_criterion1.description = criteria_rubric_criterion1description

criteriaArray []= criteriaRubricCriterion1;
criteria_rubric_criterion2 = RubricCriterion()
criteria_rubric_criterion2description = EducationItemBody()
criteria_rubric_criterion2description.content = 'The essay has numerous errors in spelling and/or grammar.'

criteria_rubric_criterion2description.contenttype(BodyType.Text('bodytype.text'))


criteria_rubric_criterion2.description = criteria_rubric_criterion2description

criteriaArray []= criteriaRubricCriterion2;
qualities_rubric_quality2.criteria(criteriaArray)



qualitiesArray []= qualitiesRubricQuality2;
request_body.qualities(qualitiesArray)





result = await client.education.me.rubrics.post(request_body = request_body)


```