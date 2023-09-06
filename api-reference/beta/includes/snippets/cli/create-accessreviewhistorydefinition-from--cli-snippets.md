---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance access-reviews history-definitions create --body '{\
  "displayName": "Last quarter's group reviews April 2021",\
  "decisions": [\
    "approve",\
    "deny",\
    "dontKnow",\
    "notReviewed",\
    "notNotified"\
  ],\
  "reviewHistoryPeriodStartDateTime": "2021-01-01T00:00:00Z",\
  "reviewHistoryPeriodEndDateTime": "2021-04-30T23:59:59Z",\
  "scopes": [\
    {\
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",\
      "queryType": "MicrosoftGraph",     \
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",\
      "queryRoot": null\
    },  \
    {\
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",\
      "queryType": "MicrosoftGraph",     \
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",\
      "queryRoot": null\
    }\
  ]\
}\
'

```