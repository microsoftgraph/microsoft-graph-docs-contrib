---
title: "Use the Backup Storage REST API"
description: "You can use the Backup Storage API in Microsoft Graph to manage Backup and Restore of sites, users and mailboxes in Microsoft 365."
author: "tushar20"
ms.localizationpriority: high
ms.subservice: "m365-backup-storage"
doc_type: conceptualPageType
---

# Use the Backup Storage REST API

Partners can use the Microsoft 365 Backup Storage API in Microsoft Graph to create their own applications to manage backups. Your application becomes the Microsoft 365 Backup Storage controller in the tenant where the application is deployed.

# Common Backup Storage error conditions

In addition to [general errors](/graph/errors) that apply to Microsoft Graph, some error conditions are specific to the Planner API.

## Create ProtectionPolicy API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidCreateRequest	|Can't process the request because it's malformed or incorrect.	|Create Request Is Null, Invalid Or Its Size Is Too big.|
|400	|InvalidDisplayName	|Thrown when the policy Display name exceeds the character limit or is empty/null.	|Please Ensure Policy Name Length Should Be > 0 chars And <= 1024 chars.|
|400	|EmptyProtectionUnitList	|Thrown when the Protection Unit list in the create request is empty.	|Protection Unit list Is empty.|
|400	|InvalidProtectionUnitId	|Thrown when one of the Protection Unit id is invalid.	|Protection Unit Id Is Invalid.|
|413	|ProtectionUnitsLimitBreached	|Thrown when the user tries to add more Protection Units than supported in one request.	|Number Of Protection Units In Each Request Must Not Exceed 50.|
|409	|PolicyCreationNotAllowed	|Thrown when an active protection policy already exists for the service and the user tries to create a new policy.	|Can't Create Policy. Another active Policy already Exists.|
|500	|PolicySaveFailed	|Thrown when a transient error occurs in the M365 Backup service.	|An Unknown Error Occurred. Please Try Again.|

## Get Protection Policies API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPolicyId	|Thrown when the policy id in request is invalid, null or empty.	|Policy Id is invalid.|
|404	|PolicyNotFound	|Thrown when the Id is valid but the policy does not exist.	|Unable to get the Protection Policy.|

## Patch Protection Policies API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|200	|ProtectionUnitAlreadyExists	|This is an delta patch ProtectionUnit level error returned when the request has duplicate Protection Unit in the list that are already present in the service.	|ProtectionUnit level error: ProtectionUnit already exists.|
|200	|ProtectionUnitNotFound	|This is an delta patch ProtectionUnit level error returned when the user requests to remove Protection Unit which is not present in the service.	|ProtectionUnit level error: ProtectionUnit does not exist.|
|400	|DuplicateProtectionUnitInList	|This is an Protection Unit level error returned when the request has duplicate artifacts in the list.	|Protection Unit level error: duplicate Protection Unit in list.|
|404	|PolicyNotFound	|Thrown when the Id is valid but the policy does not exist.	|Unable to get the Protection Policy.|

## Delete Inactive Protection Policy API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPolicyId	|Thrown when the policy id in request is invalid, null or empty.	|Policy Id is absent.|
|404	|PolicyNotFound	|Thrown when the Id is valid but the policy does not exist.	|Policy not found.|
|403	|PolicyActionNotAllowed	|Thrown when the policy is not in Inactive state.	|Can't delete policy. Policy current status: {0}. Only policy in Inactive status can be deleted.|

## Deactivate Active Protection Policy API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPolicyId	|Thrown when the policy id in request is invalid, null or empty.	|Policy Id is absent.|
|403	|PolicyActionNotAllowed	|Thrown when the policy is not in active state.	|Policy is not in correct state. Please wait till it comes in active state|
|404	|PolicyNotFound	|Thrown when the Id is valid but the policy does not exist.	|Unable to get the Protection Policy.|

## Activate Inactive Protection Policy API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPolicyId	|Thrown when the policy id in request is invalid, null or empty.	|Policy Id is absent.|
|403	|PolicyActionNotAllowed	|Thrown when the policy is not in Inactive state.	|Can't activate policy. The policy is not in correct state. Please make sure the policy is in Inactive state.|
|404	|PolicyNotFound	|Thrown when the Id is valid but the policy does not exist.	|Unable to get the Protection Policy.|

## List all the Protection Units under a Protection Policy API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPolicyId	|Policy Id is invalid, null, or empty	|Policy Id is invalid.|
|400	|FilterLengthExceeded	|This error occurs when client attempt to send too many filters or queries all at once in a single request including both "and" and "or" filter queries combined.	|Filter length exceeds the allowed limit.|
|400	|InvalidProtectionUnitId	|Protection unit id is invalid or empty Id	|Invalid Protection Unit Id|
|404	|PolicyNotFound	|Policy does not exist or cannot be found	|Unable to get the Protection Policy.|

## Get Protection unit API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|200	|UnknownError	|Unknown error occurred occurs	|Unknown Error Occurred. Please try again. If the issue persists, please contact support.|
|200	|ProtectionUnitNotFound	|Protection Unit does not exist	|Requested Protection Unit {id} either does not exist, is deleted, or cannot be found. Please recheck the Protection Unit id and try again.|
|200	|InvalidArtifactId	|Invalid or non-existent Protection Unit Id	|Protection Unit to remove was not found.|
|200	|QuotaExceeded	|Exceeding backup size quota (specifically for Exo)	|You have exceeded the backup quota.|
|400	|InvalidProtectionUnitId	|Protection unit id is invalid or empty Id	|Invalid Protection Unit Id|

## Create Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidPathType	|PathType (new/inplace) is not known for artifacts	|Restore path type is not present.|
|400	|InvalidArtifactRequest	|Empty or null restore artifact list	|There should be at least one restore artifact.|
|400	|InvalidRestorePoint	|Invalid restore point provided	|Restore Point id is invalid or empty.|
|400	|DifferentRestoreDestinationType	|Different destination types for artifacts in request	|Different Restore Destination Type.|
|413	|RestoreArtifactsLimitBreached	|Request Exceeded maximum artifacts limit	|Restore Artifacts limit is breached.|
|400	|DuplicateArtifactInList	|Duplicate artifacts in the list	|The restore artifact requested is already present.|

## Get Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidRestoreSessionId	|Restore session id invalid, null, or empty	|RestoreSessionId is absent.|
|404	|RestoreSessionNotFound	|Valid Id but session not found	|Restore Session Not Found.|

## Patch Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidRestoreSessionId	|Restore session id invalid, null, or empty	|RestoreSessionId is absent.|
|400	|InvalidPatchRequest	|Can't process the request because it's malformed or incorrect.	|Can't process the request because it's malformed or incorrect.|
|400	|InvalidRestorePoint	|Invalid restore point provided	|Restore Point is invalid.|
|400	|RestoreArtifactsLimitBreached	|Exceeded maximum artifacts limit of 50 for single request	|Restore Artifacts limit is breached.|
|400	|InvalidArtifactRequest	|Empty or null restore artifact list	|Restore Artifacts are null.|
|403	|RestoreSessionActionNotAllowed	|Attempt to patch active restore session	|Restore session can only be patched in Draft state.|
|404	|RestoreSessionNotFound	|Valid Id but session not found	|Unable to get restore session|
|400	|DuplicateArtifactInList	|Duplicate artifacts in the request	|The restore artifact requested is already present.|

## Delete Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidRestoreSessionId	|Restore session id invalid, null, or empty	|RestoreSessionId is absent.|
|403	|RestoreSessionActionNotAllowed	|Attempt to delete active restore session	|Restore session can only be deleted in Draft state.|
|404	|RestoreSessionNotFound	|Valid Id but session not found |Unable to get restore session|
|500	|IncompleteArtifactDeletion	|Service unable to delete all requested artifacts	|Unable to delete session, try again|

## Activate Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidRestoreSessionId	|Restore session id invalid, null, or empty	|RestoreSessionId is absent.|
|403	|RestoreSessionActionNotAllowed	|Attempt to activate active restore session	|Restore session can only be activated in Draft state.|
|404	|RestoreSessionNotFound	|Valid Id but session not found	|Unable to get restore session|
|500	|TooManyActiveRestoreSessions	|Attempt to activate more than 25 sessions simultaneously	|Temporary error: Too many active restore sessions.|

## List Restore Artifacts under a Restore Session API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|200	|UnknownError	|Unknown error occurred or a provider-side error	|Unknown Error Occurred. Please try again. If the issue persists, contact Support.|
|200	|ArtifactNotFound	|Restore Artifact does not exist	|The requested restore artifact was not found for restore.|
|200	|InvalidRestoreTime	|Invalid or out-of-bounds restore time	|Restore Artifact cannot be restored to this timestamp, the restore time provided is invalid or beyond retention period.|
|200	|ArtifactCannotBeRestored	|Restore Artifact state does not allow restoration	|The restore artifact is in an unexpected state such as preservation lock or TenantDivestiture which is blocking the restore.|
|200	|DuplicateArtifactRestoreRequest	|Concurrent restoration of the same restore artifact	|An ongoing Restore was found for the given restore artifact. Please wait till its completion and try again.|
|400	|InvalidRestoreSessionId	|Restore session id invalid, null, or empty	|RestoreSession Id is invalid.|

## Create Inclusion Rule API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidInclusionRuleCreateRequest	|Can't process the request because it's malformed or incorrect.	|Invalid create request.|
|500	|InvalidProtectionRuleDetails	|A transeint error where Service is unable to save the rule details	|Invalid rule details.|

## Get Inclusion Rule by ID API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidInclusionRuleId	|Rule ID in request is invalid, null, or empty	|Rule id is invalid.|
|404	|ProtectionRuleNotFound	|Id is valid but rule details do not exist	|Inclusion details not found.|

## Update Inclusion Rule API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|InvalidInclusionRuleId	|Rule ID in request is invalid, null, or empty	|Rule id is absent.|
|404	|ProtectionRuleNotFound	|Id is valid but rule details do not exist	|Inclusion details not found.|

## Get Restore Point API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|400	|FilterLengthExceeded	|Filter length exceeds allowed limit	|Filter length exceeds allowed limit|
|400	|InvalidSearchRequest	|Requested date time limit or protection unit ID is invalid	|Restore point input is invalid|
|400	|InvalidProtectionUnitId	|Protection unit ID in request is invalid	|Invalid Protection unit ID|

## Enable service API Errors

The following table lists the possible error and response codes that can be returned.

| HTTP Status Code	| Error Code	| Description	| Error Message |
|:------------------|:--------------|:--------------|:--------------|
|403	|UnableToReadBillingProfile	|Unable to read billing profile from billing profile provider	|Unable to read billing profile from billing profile provider|
|402	|BillingProfileNotAvailable	|Billing profile is not available	|Configure the billing profile|
