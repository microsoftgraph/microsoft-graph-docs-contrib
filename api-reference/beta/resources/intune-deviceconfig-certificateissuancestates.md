---
title: "certificateIssuanceStates enum type"
description: "Certificate Issuance State Options."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# certificateIssuanceStates enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Certificate Issuance State Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0||
|challengeIssued|1||
|challengeIssueFailed|2||
|requestCreationFailed|3||
|requestSubmitFailed|4||
|challengeValidationSucceeded|5||
|challengeValidationFailed|6||
|issueFailed|7||
|issuePending|8||
|issued|9||
|responseProcessingFailed|10||
|responsePending|11||
|enrollmentSucceeded|12||
|enrollmentNotNeeded|13||
|revoked|14||
|removedFromCollection|15||
|renewVerified|16||
|installFailed|17||
|installed|18||
|deleteFailed|19||
|deleted|20||
|renewalRequested|21||
|requested|22||