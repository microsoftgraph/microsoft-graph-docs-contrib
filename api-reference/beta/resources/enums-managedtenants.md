---
title: "Multi-tenant management enumeration values"
description: "Microsoft Graph multi-tenant management enumeration values"
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: enumTypes
---

# Multi-tenant management enumeration values

### delegatedPrivilegeStatus values

|Member|
|:---|
|none|
|delegatedAdminPrivileges|
|unknownFutureValue|
|granularDelegatedAdminPrivileges|
|delegatedAndGranularDelegetedAdminPrivileges|

### managementActionStatus values

|Member|
|:---|
|toAddress|
|completed|
|error|
|timeOut|
|inProgress|
|planned|
|resolvedBy3rdParty|
|resolvedThroughAlternateMitigation|
|riskAccepted|
|unknownFutureValue|

### managementCategory values

|Member|
|:---|
|custom|
|devices|
|identity|
|unknownFutureValue|

### managementParameterValueType values

|Member|
|:---|
|string|
|integer|
|boolean|
|guid|
|stringCollection|
|integerCollection|
|booleanCollection|
|guidCollection|
|unknownFutureValue|

### tenantOnboardingStatus values

|Member|
|:---|
|ineligible|
|inProcess|
|active|
|inactive|
|unknownFutureValue|

### tenantOnboardingEligibilityReason values

|Member|
|:---|
|none|
|contractType|
|delegatedAdminPrivileges|
|usersCount|
|license|
|unknownFutureValue|

### workloadActionCategory values

|Member|
|:---|
|automated|
|manual|
|unknownFutureValue|

### workloadActionStatus values

|Member|
|:---|
|toAddress|
|completed|
|error|
|timeOut|
|inProgress|
|unknownFutureValue|

### workloadOnboardingStatus values

|Member|
|:---|
|notOnboarded|
|onboarded|
|unknownFutureValue|
