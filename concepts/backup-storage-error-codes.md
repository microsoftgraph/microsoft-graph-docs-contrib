---
title: "Error codes for the Backup Storage API in Microsoft Graph"
description: "Find information about error codes that the Backup Storage API in Microsoft Graph returns when a request that is sent through the API fails."
author: "tushar20"
ms.localizationpriority: high
ms.subservice: "m365-backup-storage"
doc_type: conceptualPageType
ms.date: 11/07/2024
ms.topic: troubleshooting-error-codes
---

# Backup Storage API error responses

Partners can use the Microsoft 365 Backup Storage API in Microsoft Graph to create their own applications to manage backups. Your application becomes the Microsoft 365 Backup Storage controller in the tenant where the application is deployed.

In addition to [general errors](/graph/errors) that apply to Microsoft Graph, some error conditions are specific to the Backup Storage API. This topic provides a list of common error conditions you might encounter when you use the Backup Storage API.

## Create protection policy API errors

The error codes in this section apply to the following APIs:

- [Create exchangeProtectionPolicy](/graph/api/backuprestoreroot-post-exchangeprotectionpolicies)
- [Create oneDriveForBusinessProtectionPolicy](/graph/api/backuprestoreroot-post-onedriveforbusinessprotectionpolicies)
- [Create sharePointProtectionPolicy](/graph/api/backuprestoreroot-post-sharepointprotectionpolicies)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidCreateRequest|Can't process the request because it's malformed or incorrect.|Create request is null, invalid or its size is too large.|
|400|InvalidDisplayName|Thrown when the policy display name exceeds the character limit or is empty/null.|Please ensure policy name length should be > 0 chars and <= 1024 chars.|
|400|InvalidProtectionUnitId|Thrown when one of the Protection Unit IDs is invalid.|Protection Unit ID is invalid.|
|413|ProtectionUnitsLimitBreached|Thrown when the user tries to add more Protection Units than supported in one request.|Number of Protection Units in each request must not exceed 50.|
|409|PolicyCreationNotAllowed|Thrown when an active protection policy already exists for the service and the user tries to create a new policy.|Can't create Policy. Another active Policy already exists.|
|409|ProtectionUnitAlreadyExists|Artifact ArtifactId is not eligible for protection because it is already protected under policy PolicyId.| Thrown when artifact is already protected under another policy.
|500|PolicySaveFailed|Thrown when a transient error occurs in the M365 Backup service.|An unknown error occurred. Try again.|

## Get protection policy API errors

The error codes in this section apply to the following API:

- [Get protectionPolicyBase](/graph/api/protectionpolicybase-get)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPolicyId|Thrown when the Policy ID in request is invalid, null, or empty.|Policy ID is invalid.|
|404|PolicyNotFound|Thrown when the ID is valid but the policy doesn't exist.|Unable to get the Protection Policy.|

## Patch protection policy API errors

The error codes in this section apply to the following APIs:

- [Update exchangeProtectionPolicy](/graph/api/exchangeprotectionpolicy-update)
- [Update oneDriveForBusinessProtectionPolicy](/graph/api/onedriveforbusinessprotectionpolicy-update)
- [Update sharePointProtectionPolicy](/graph/api/sharepointprotectionpolicy-update)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|200|ProtectionUnitNotFound|This is a delta patch ProtectionUnit level error returned when the user requests to remove Protection Unit, which isn't present in the service.|ProtectionUnit level error: ProtectionUnit doesn't exist.|
|200|ProtectionUnitAlreadyExists|Artifact ArtifactId is not eligible for protection because it is already protected under policy PolicyId.| Thrown when artifact is already protected under another policy.
|400|DuplicateProtectionUnitInList|This is a Protection Unit level error returned when the request has duplicate artifacts in the list.|Protection Unit level error: Duplicate Protection Unit in list.|
|400|ProtectionUnitActionNotAllowed|The artifact with the given protection unit ID can't be removed as it's protected by a dynamic rule.| Protection units protected via dynamic rules can't be removed manually.|
|404|PolicyNotFound|Thrown when the ID is valid but the policy doesn't exist.|Unable to get the Protection Policy.|

## Delete inactive protection policy API errors

The error codes in this section apply to the following API:

- [Delete protectionPolicyBase](/graph/api/protectionpolicybase-delete)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPolicyId|Thrown when the policy ID in request is invalid, null, or empty.|Policy ID is absent.|
|404|PolicyNotFound|Thrown when the ID is valid but the policy doesn't exist.|Policy not found.|
|403|PolicyActionNotAllowed|Thrown when the policy isn't in Inactive state.|Can't delete policy. Only policy in Inactive status can be deleted.|

## Deactivate active protection policy API errors

The error codes in this section apply to the following API:

- [Deactivate protectionPolicyBase](/graph/api/protectionpolicybase-deactivate)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPolicyId|Thrown when the policy ID in request is invalid, null, or empty.|Policy ID is absent.|
|403|PolicyActionNotAllowed|Thrown when the policy isn't in active state.|Policy isn't in correct state. Wait until it moves to the active state.|
|404|PolicyNotFound|Thrown when the ID is valid but the policy doesn't exist.|Unable to get the Protection Policy.|

## Activate inactive protection policy API errors

The error codes in this section apply to the following API:

- [Activate protectionPolicyBase](/graph/api/protectionpolicybase-activate)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPolicyId|Thrown when the policy ID in request is invalid, null, or empty.|Policy ID is absent.|
|403|PolicyActionNotAllowed|Thrown when the policy isn't in Inactive state.|Can't activate policy. The policy isn't in correct state. Make sure the policy is in Inactive state.|
|404|PolicyNotFound|Thrown when the ID is valid but the policy doesn't exist.|Unable to get the Protection Policy.|

## List all the protection unit under a protection policy API errors

The error codes in this section apply to the following APIs:

- [List driveProtectionUnit](/graph/api/backuprestoreroot-list-driveprotectionunits)
- [List mailboxProtectionUnit](/graph/api/backuprestoreroot-list-mailboxprotectionunits)
- [List siteProtectionUnit](/graph/api/backuprestoreroot-list-siteprotectionunits)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPolicyId|Policy ID is invalid, null, or empty.|Policy ID is invalid.|
|400|FilterLengthExceeded|This error occurs when client attempt to send too many filters or queries all at once in a single request including both "and" and "or" filter queries combined.|Filter length exceeds the allowed limit.|
|400|InvalidProtectionUnitId|Protection unit ID is invalid or empty ID.|Invalid Protection Unit ID.|
|404|PolicyNotFound|Policy doesn't exist or can't be found.|Unable to get the Protection Policy.|

## Get protection unit API errors

The error codes in this section apply to the following API:

- [Get protectionUnitBase](/graph/api/protectionunitbase-get)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|200|UnknownError|Unknown error occurred occurs.|Unknown error occurred. Please try again. If the issue persists, please contact support.|
|200|ProtectionUnitNotFound|Protection Unit doesn't exist.|Requested Protection Unit either doesn't exist, is deleted, or can't be found. Please recheck the Protection Unit ID and try again.|
|200|InvalidArtifactId|Invalid or nonexistent Protection Unit ID.|Protection Unit to remove wasn't found.|
|200|QuotaExceeded|Exceeding backup size quota (specifically for Exo).|You have exceeded the backup quota.|
|400|InvalidProtectionUnitId|Protection unit ID is invalid or empty ID.|Invalid Protection Unit ID.|

## Create restore session API errors

The error codes in this section apply to the following APIs:

- [Create exchangeRestoreSession](/graph/api/backuprestoreroot-post-exchangerestoresessions)
- [Create oneDriveForBusinessRestoreSession](/graph/api/backuprestoreroot-post-onedriveforbusinessrestoresessions)
- [Create sharePointRestoreSession](/graph/api/backuprestoreroot-post-sharepointrestoresessions)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidPathType|PathType (new/in-place) isn't known for artifacts.|Restore path type isn't present.|
|400|InvalidArtifactRequest|Empty or null restore artifact list.|There should be at least one restore artifact.|
|400|InvalidRestorePoint|Invalid restore point provided.|Restore Point ID is invalid or empty.|
|400|DifferentRestoreDestinationType|Different destination types for artifacts in request.|Different restore destination type.|
|413|RestoreArtifactsLimitBreached|Request Exceeded maximum artifacts limit.|Restore Artifacts limit is breached.|
|400|DuplicateArtifactInList|Duplicate artifacts in the list.|The restore artifact requested is already present.|

## Get restore session API errors

The error codes in this section apply to the following API:

- [Get restoreSessionBase](/graph/api/restoresessionbase-get)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidRestoreSessionId|Restore session ID invalid, null, or empty.|Restore Session ID is absent.|
|404|RestoreSessionNotFound|Valid ID but session not found.|Restore Session Not Found.|

## Patch restore session API errors

The error codes in this section apply to the following APIs:

- [Update exchangeRestoreSession](/graph/api/exchangerestoresession-update)
- [Update oneDriveForBusinessRestoreSession](/graph/api/onedriveforbusinessrestoresession-update)
- [Update sharePointRestoreSession](/graph/api/sharepointrestoresession-update)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidRestoreSessionId|Restore session ID invalid, null, or empty.|Restore Session ID is absent.|
|400|InvalidPatchRequest|Can't process the request because it's malformed or incorrect.|Can't process the request because it's malformed or incorrect.|
|400|InvalidRestorePoint|Invalid restore point provided.|Restore Point is invalid.|
|400|RestoreArtifactsLimitBreached|Exceeded maximum artifacts limit of 50 for single request.|Restore Artifacts limit is breached.|
|400|InvalidArtifactRequest|Empty or null restore artifact list.|Restore Artifacts are null.|
|403|RestoreSessionActionNotAllowed|Attempt to patch active restore session.|Restore session can only be patched in Draft state.|
|404|RestoreSessionNotFound|Valid ID but session not found.|Unable to get restore session.|
|400|DuplicateArtifactInList|Duplicate artifacts in the request.|The restore artifact requested is already present.|

## Delete restore session API errors

The error codes in this section apply to the following API:

- [Delete restoreSessionBase](/graph/api/restoresessionbase-delete)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidRestoreSessionId|Restore session ID invalid, null, or empty.|RestoreSessionId is absent.|
|403|RestoreSessionActionNotAllowed|Attempt to delete active restore session.|Restore session can only be deleted in Draft state.|
|404|RestoreSessionNotFound|Valid ID but session not found.|Unable to get restore session.|
|500|IncompleteArtifactDeletion|Service unable to delete all requested artifacts.|Unable to delete session, try again.|

## Activate restore session API errors

The error codes in this section apply to the following API:

- [Activate restoreSessionBase](/graph/api/restoresessionbase-activate)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidRestoreSessionId|Restore session ID invalid, null, or empty.|RestoreSessionId is absent.|
|403|RestoreSessionActionNotAllowed|Attempt to activate active restore session.|Restore session can only be activated in Draft state.|
|404|RestoreSessionNotFound|Valid ID but session not found.|Unable to get restore session.|
|500|TooManyActiveRestoreSessions|Attempt to activate more than 25 sessions simultaneously.|Temporary error: Too many active restore sessions.|

## List restore artifact under a restore session API errors

The error codes in this section apply to the following APIs:

- [List driveRestoreArtifact](/graph/api/onedriveforbusinessrestoresession-list-driverestoreartifacts)
- [List mailboxRestoreArtifact](/graph/api/exchangerestoresession-list-mailboxrestoreartifacts)
- [List siteRestoreArtifact](/graph/api/sharepointrestoresession-list-siterestoreartifacts)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|200|UnknownError|Unknown error occurred or a provider-side error.|Unknown error occurred. Please try again. If the issue persists, contact support.|
|200|ArtifactNotFound|Restore Artifact doesn't exist.|The requested restore artifact wasn't found for restore.|
|200|InvalidRestoreTime|Invalid or out-of-bounds restore time.|Restore Artifact can't be restored to this timestamp, the restore time provided is invalid or beyond retention period.|
|200|ArtifactCannotBeRestored|Restore Artifact state doesn't allow restoration.|The restore artifact is in an unexpected state such as preservation lock or TenantDivestiture which is blocking the restore.|
|200|DuplicateArtifactRestoreRequest|Concurrent restoration of the same restore artifact.|An ongoing Restore was found for the given restore artifact. Please wait till its completion and try again.|
|400|InvalidRestoreSessionId|Restore session ID invalid, null, or empty.|RestoreSession ID is invalid.|

## Create inclusion rule API errors

The error codes in this section apply to the following API:

- [Create protectionRuleBase](/graph/api/protectionrulebase-post)

The following table lists the possible error and response code that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidInclusionRuleCreateRequest|Can't process the request because it's malformed or incorrect.|Invalid create request.|
|400|InvalidRuleExpression|Value can't be null or invalid expression.|The expression isn't valid and can't be parsed.|
|413|InvalidRuleExpressionGroupLimitExceeded|Rule expression that contains more than 100 group IDs isn't allowed.|The expression contains more group IDs than the imposed limit allows.|

## Update inclusion rule API errors

The error codes in this section apply to the following APIs:

- [Update driveProtectionRule](/graph/api/protectionrulebase-update)
- [Update mailboxProtectionRule](/graph/api/protectionrulebase-update)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidProtectionRulePatchRequest|The **isAutoApplyEnabled** parameter isn't supported in a patch request.|The **isAutoApplyEnabled** parameter can be supplied only at the time of creation. The conversion between a static rule and a dynamic rule, and vice versa, isn't allowed.|
|400|InvalidProtectionRuleStatusForUpdation|Update operation isn't allowed in the current state.|Invalid state to invoke the update operation.|
|400|InvalidRuleExpression|Value can't be null or invalid expression|The expression isn't valid and can't be parsed.|
|400|PatchNotAllowedForStaticRule|Patch operation isn't allowed for a static rule.|Invalid update request.|
|404|ProtectionRuleNotFound|Protection rule with the given ID doesn't exist.|The given rule ID is either incorrect or the rule was deleted.|
|413|InvalidRuleExpressionGroupLimitExceeded|Rule expression that contains more than 100 group IDs isn't allowed.|The expression contains more group IDs than the imposed limit allows.|
|422|InvalidProtectionRuleStatusForDynamicRuleEdit|Patch operation isn't allowed in the current state.|The patch operation isn't allowed in the `deleteRequested` state.|

## Delete and unprotect inclusion rule API errors

The error codes in this section apply to the following APIs:

- [driveProtectionRule: deleteAndUnprotect](/graph/api/protectionrulebase-deleteandunprotect)
- [mailboxProtectionRule: deleteAndUnprotect](/graph/api/protectionrulebase-deleteandunprotect)

The following table lists the possible error and response code that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidInclusionRuleId|Rule ID in the request is invalid, null, or empty.|The rule ID is invalid.|
|404|ProtectionRuleNotFound|Protection rule with the given ID doesn't exist.|The given rule ID is either incorrect or the rule was deleted.|
|422|InvalidProtectionRuleStatusForDynamicRuleDeleteAndUnprotectAll|The **deleteAndUnprotect** operation isn't allowed in the current state.|Invalid state to invoke the **deleteAndUnprotect** action.|

## Run inclusion rule API errors

The error codes in this section apply to the following APIs:

- [Run driveProtectionRule](/graph/api/protectionrulebase-run)
- [Run mailboxProtectionRule](/graph/api/protectionrulebase-run)
- [Run siteProtectionRule](/graph/api/protectionrulebase-run)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidInclusionRuleId|Rule ID in the request is invalid, null, or empty.|The rule ID is invalid.|
|400|ProtectionRuleActionNotAllowed|Run action isn't allowed for protection rule.|Invalid state to invoke the run action.|
|400|RunNotAllowedForDynamicRule|Run operation isn't allowed for dynamic rule.|Invalid operation for dynamic rules.|
|404|ProtectionRuleNotFound|Protection rule with the given ID doesn't exist.|The given rule ID is either incorrect or the rule was deleted.|

## Get inclusion rule by ID API errors

The error codes in this section apply to the following API:

- [Get protectionRuleBase](/graph/api/protectionrulebase-get)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidInclusionRuleId|Rule ID in the request is invalid, null, or empty.|The rule ID is invalid.|
|404|ProtectionRuleNotFound|Protection rule with the given ID doesn't exist.|The given rule ID is either incorrect or the rule was deleted.|

## Delete inclusion rule by ID API errors

The error codes in this section apply to the following API:

- [Get protectionRuleBase](/graph/api/protectionrulebase-delete)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidInclusionRuleId|Rule ID in the request is invalid, null, or empty.|The rule ID is invalid.|
|400|InvalidProtectionRuleStatusForDeletion|Delete operation isn't allowed in the current state.|Invalid state to invoke the delete operation.|
|404|ProtectionRuleNotFound|Protection rule with the given ID doesn't exist.|The given rule ID is either incorrect or the rule was deleted.|
|422|InvalidProtectionRuleStatusForDynamicRuleDeletion|Delete operation isn't allowed in the current state.|Invalid state to invoke the delete operation on a dynamic rule.|

## Get restore point API errors

The error codes in this section apply to the following APIs:

- [List restorePoint](/graph/api/backuprestoreroot-list-restorepoints)
- [Search restorePoint](/graph/api/restorepoint-search)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|FilterLengthExceeded|Filter length exceeds allowed limit.|Filter length exceeds allowed limit.|
|400|InvalidSearchRequest|Requested date time limit or protection unit ID is invalid.|Restore point input is invalid.|
|400|InvalidProtectionUnitId|Protection unit ID in request is invalid.|Invalid Protection unit ID.|

## Enable service API errors

The error codes in this section apply to the following API:

- [Enable BackupRestore](/graph/api/backuprestoreroot-enable)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|403|UnableToReadBillingProfile|Unable to read billing profile from billing profile provider.|Unable to read billing profile from billing profile provider.|
|402|InvalidBillingProfile|Invalid billing profile received from the provider.|Invalid billing profile received from the provider.|
|400|InvalidAppOwnerTenantId|Owning tenant id not found|Invalid App owner tenant id received from the user.|

## Create bulk addition requests for restoring artifacts API errors

The error codes in this section apply to the following APIs:

- [Create driveRestoreArtifactsBulkAdditionRequests](/graph/api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests?view=graph-rest-beta&preserve-view=true)
- [Create mailboxRestoreArtifactsBulkAdditionRequests](/graph/api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests?view=graph-rest-beta&preserve-view=true)
- [Create siteRestoreArtifactsBulkAdditionRequests](/graph/api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests?view=graph-rest-beta&preserve-view=true)

The following table lists the possible error and response codes that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|400|InvalidBulkRestoreArtifactId|Bulk restore request ID is invalid.|Invalid GUID provided in URI.|
|400|BulkRestoreInvalidCreateRequest|BulkRestoreCreateRequest is null.|The create request is null or invalid.|
|400|BulkRestoreRestorationResourcesCountExceedsLimit|Bulk restore input limit exceeded.|Input size is too large.|
|400|BulkRestoreInvalidCreateRequestSiteUrl|Bulk restore site web URL is invalid.|Site URL is null, empty, or in an incorrect format.|
|400|BulkRestoreInvalidCreateRequestUserEmail|Bulk restore user email is invalid.|Email is null, empty, or in an incorrect format.|

## Get bulk addition requests for restoring artifacts API errors

The error code in this section applies to the following APIs:

- [Get driveRestoreArtifactsBulkAdditionRequests](/graph/api/driverestoreartifactsbulkadditionrequest-get?view=graph-rest-beta&preserve-view=true)
- [Get mailboxRestoreArtifactsBulkAdditionRequests](/graph/api/mailboxrestoreartifactsbulkadditionrequest-get?view=graph-rest-beta&preserve-view=true)
- [Get siteRestoreArtifactsBulkAdditionRequests](/graph/api/siterestoreartifactsbulkadditionrequest-get?view=graph-rest-beta&preserve-view=true)

The following table lists the possible error and response code that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|404|BulkRestoreArtifactsNotFound|No bulkRestoreArtifact item with the given bulkRestoreArtifactId.|No restoreArtifactBulkAdditionRequest associated with the provided bulkRestoreArtifactId in the URI.|

## Delete bulk addition requests for restoring artifacts API errors

The error code in this section applies to the following APIs:

- [Delete driveRestoreArtifactsBulkAdditionRequests](/graph/api/driverestoreartifactsbulkadditionrequest-delete?view=graph-rest-beta&preserve-view=true)
- [Delete mailboxRestoreArtifactsBulkAdditionRequests](/graph/api/mailboxrestoreartifactsbulkadditionrequest-delete?view=graph-rest-beta&preserve-view=true)
- [Delete siteRestoreArtifactsBulkAdditionRequests](/graph/api/siterestoreartifactsbulkadditionrequest-delete?view=graph-rest-beta&preserve-view=true)

The following table lists the possible error and response code that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|403|InvalidStateForBulkRequestDeletion|Validation fails when the service type of the restore session and create request are different.|A bulk request can only be deleted when its status is `completed` or `completedWithErrors`.|

## Known PowerShell errors

The error codes in this section apply to the following APIs when they're called from PowerShell:

- [Get backupRestoreRoot](/graph/api/backuprestoreroot-get)
- [Enable backupRestoreRoot](/graph/api/backuprestoreroot-enable)
- [Create serviceApp](/graph/api/backuprestoreroot-post-serviceapps)
- [Delete serviceApp](/graph/api/backuprestoreroot-delete-serviceapps)

The following table lists the possible error and response code that can be returned.

| HTTP status code| Error code| Error message | Description|
|:------------------|:--------------|:--------------|:--------------|
|403|Forbidden|Method not allowed for known allowed listed internal apps.|The request is forbidden when it's called from PowerShell.|
