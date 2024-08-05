---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc education classes assignment-settings patch --education-class-id {educationClass-id} --body '{\
  "gradingCategories": [\
        {           \
            "displayName": "Lab",\
            "percentageWeight": 10\
        },\
        {\
            "displayName": "Homework",\
            "percentageWeight": 80\
        },\
        {\
            "displayName": "Test",\
            "percentageWeight": 10\
        }\
    ]\
}\
'

```