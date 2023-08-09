---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentSettings()
grading_categories_education_grading_category1 = EducationGradingCategory()
grading_categories_education_grading_category1.display_name = 'Lab'

grading_categories_education_grading_category1.PercentageWeight = 10


gradingCategoriesArray []= gradingCategoriesEducationGradingCategory1;
grading_categories_education_grading_category2 = EducationGradingCategory()
grading_categories_education_grading_category2.display_name = 'Homework'

grading_categories_education_grading_category2.PercentageWeight = 80


gradingCategoriesArray []= gradingCategoriesEducationGradingCategory2;
grading_categories_education_grading_category3 = EducationGradingCategory()
grading_categories_education_grading_category3.display_name = 'Test'

grading_categories_education_grading_category3.PercentageWeight = 10


gradingCategoriesArray []= gradingCategoriesEducationGradingCategory3;
request_body.gradingcategories(gradingCategoriesArray)





result = await client.education.classes.by_classe_id('educationClass-id').assignment_settings.patch(request_body = request_body)


```