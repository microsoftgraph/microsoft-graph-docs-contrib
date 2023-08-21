---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity-governance access-reviews definitions instances stages patch --access-review-schedule-definition-id {accessReviewScheduleDefinition-id} --access-review-instance-id {accessReviewInstance-id} --access-review-stage-id {accessReviewStage-id} --body '{\
  "@odata.type": "#microsoft.graph.accessReviewStage",\
  "reviewers": [\
      {\
          "query": "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",\
          "queryType": "MicrosoftGraph"\
      }\
  ],\
  "fallbackReviewers": [\
      {\
          "query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",\
          "queryType": "MicrosoftGraph"\
      },\
      {\
          "query": "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",\
          "queryType": "MicrosoftGraph"\
      }\
  ]\
}\
'

```