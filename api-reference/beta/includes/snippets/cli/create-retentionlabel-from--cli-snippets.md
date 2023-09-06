---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security labels retention-labels create --body '{\
  "@odata.type": "#microsoft.graph.security.retentionLabel",\
  "displayName": "String",\
  "behaviorDuringRetentionPeriod": "String",\
  "actionAfterRetentionPeriod": "String",\
  "retentionTrigger": "String",\
  "retentionDuration": {\
    "@odata.type": "microsoft.graph.security.retentionDuration"\
  },\
  "isInUse": "Boolean",\
  "descriptionForAdmins": "String",\
  "descriptionForUsers": "String",\
  "createdBy": {\
    "@odata.type": "microsoft.graph.identitySet"\
  },\
  "labelToBeApplied": "String",\
  "defaultRecordBehavior": "String",\
  "descriptors": {\
    "authorityTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",\
    "categoryTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",\
    "citationTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",\
    "departmentTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",\
    "filePlanReferenceTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')"\
  },\
}\
'

```