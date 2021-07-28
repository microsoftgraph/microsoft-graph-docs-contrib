---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "skadam-msft"
localization_priority: Normal
ms.prod: "Privacy Management"
doc_type: enumTypes
---

### dataSubjectRequestStage values 


|Member|
|:---|
|contentRetrieval| Content retrieval stage |
|contentReview| Content review stage |
|generateReport| Generate report stage |
|contentDeletion| Content deletion stage |
|caseResolved| Resolve case stage |
|unknownFutureValue|

### dataSubjectRequestStageStatus values 

Represents the status for the data subject request stage

|Member|
|:---|
|notStarted| The stage has not been started yet |
|current| The stage is the current stage for the request. |
|completed| The stage is completed |
|failed|The stage has failed |
|unknownFutureValue|

### dataSubjectRequestStatus values 

Represents the status of the data subject request

|Member|
|:---|
|active| The request is active |
|closed| The request has been marked closed |
|unknownFutureValue|

### dataSubjectRequestType values 

Represents the type of the data subject request

|Member|
|:---|
|export| The request is for exporting the data for the data subject |
|delete| The request is for deleting data for the data subject |
|access| The request for type access |
|tagForAction| The request was created so that the administrator can tag items for different action |
|unknownFutureValue|

### dataSubjectType values 

Represents the type of data subject

|Member|
|:---|
|customer| The data subject is a customer |
|currentEmployee| The data subject is a current employee |
|formerEmployee| The data subject is a formal employee |
|prospectiveEmployee| The data subject is a prospective Employee |
|student| The data subject is student. | 
|teacher| The data subhect is teacher. |
|faculty| The data subject is faculty of the institute. |
|other|
|unknownFutureValue|

