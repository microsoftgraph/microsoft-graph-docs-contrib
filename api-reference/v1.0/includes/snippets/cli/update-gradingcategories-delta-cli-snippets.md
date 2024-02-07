---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta education classes assignment-settings patch --education-class-id {educationClass-id} --body '{\
    "gradingCategories@delta": [\
        {\
            // Change this grading category's name\
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",\
            "displayName": "Lab Test"\
        },\
        {\
            // Delete this grading category\
            "@odata.context": "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",\
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",\
            "reason": "deleted"\
        },\
        {\
            // Add a new grading category\
            "displayName": "Lab Practice",\
            "percentageWeight": 30\
        },\
        {\
            "displayName": "Lab Theory",\
            "percentageWeight": 10\
        }\
    ]\
}\
'

```