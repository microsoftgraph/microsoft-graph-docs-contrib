---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security labels retention-labels create --body '{\
  "@odata.type": "#microsoft.graph.security.retentionLabel",\
  "displayName": "Retention Schedule 10005",\
  "behaviorDuringRetentionPeriod": "retain",\
  "actionAfterRetentionPeriod": "startDispositionReview",\
  "retentionTrigger": "dateOfEvent",\
  "retentionEventType@odata.bind": "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')",\
  "retentionDuration": {\
    "@odata.type": "microsoft.graph.security.retentionDurationInDays",\
    "days": 2555\
  },\
   "dispositionReviewStages": [\
    {\
      "stageNumber" : 1,\
      "name": "Stage1",\
      "reviewersEmailAddresses ": [\
        "Admin@contoso.onmicrosoft.com"\
      ]\
    }\
  ],\
  "descriptionForAdmins": "retain for 7 years",\
  "descriptionForUsers": "retain for 7 years",\
  "descriptors": {\
    "authorityTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",\
    "categoryTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",\
    "citationTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",\
    "departmentTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",\
    "filePlanReferenceTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')"\
  },\
  "defaultRecordBehavior":"startLocked",\
}\
'

```