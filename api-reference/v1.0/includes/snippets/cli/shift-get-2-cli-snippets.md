---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users settings shift-preferences patch --user-id {user-id} --body '{\
    "id": "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",\
    "@odata.etag": "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",\
    "availability": [\
        {\
            "recurrence": {\
                "pattern": {\
                    "type": "Weekly",\
                    "daysOfWeek": ["Monday", "Wednesday", "Friday"],\
                    "interval": 1\
                },\
                "range": {\
                    "type": "noEnd"\
                }\
            },\
            "timeZone": "Pacific Standard Time",\
            "timeSlots": null\
        }\
    ]\
}\
'

```