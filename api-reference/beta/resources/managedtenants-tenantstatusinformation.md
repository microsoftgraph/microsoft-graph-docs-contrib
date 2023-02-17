---
title: "tenantStatusInformation resource type"
description: "Represents onboarding status information for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: resourcePageType
---

# tenantStatusInformation resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents onboarding status information for a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|delegatedPrivilegeStatus|delegatedPrivilegeStatus|The status of the delegated admin privilege relationship between the managing entity and the managed tenant. Possible values are: `none`, `delegatedAdminPrivileges`, `unknownFutureValue`, `granularDelegatedAdminPrivileges`, `delegatedAndGranularDelegetedAdminPrivileges`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `granularDelegatedAdminPrivileges` , `delegatedAndGranularDelegetedAdminPrivileges`. Optional. Read-only.|
|lastDelegatedPrivilegeRefreshDateTime|DateTimeOffset|The date and time the delegated admin privileges status was updated. Optional. Read-only.|
|offboardedByUserId|String|The identifier for the account that offboarded the managed tenant. Optional. Read-only.|
|offboardedDateTime|DateTimeOffset|The date and time when the managed tenant was offboarded. Optional. Read-only.|
|onboardedByUserId|String|The identifier for the account that onboarded the managed tenant. Optional. Read-only.|
|onboardedDateTime|DateTimeOffset|The date and time when the managed tenant was onboarded. Optional. Read-only.|
|onboardingStatus|tenantOnboardingStatus|The onboarding status for the managed tenant.. Possible values are: `ineligible`, `inProcess`, `active`, `inactive`, `unknownFutureValue`. Optional. Read-only.|
|tenantOnboardingEligibilityReason|tenantOnboardingEligibilityReason|Organization's onboarding eligibility reason in Microsoft 365 Lighthouse.. Possible values are: `none`, `contractType`, `delegatedAdminPrivileges`,`usersCount`,`license` and `unknownFutureValue`. Optional. Read-only.|
|workloadStatuses|[microsoft.graph.managedTenants.workloadStatus](../resources/managedtenants-workloadstatus.md) collection|The collection of workload statues for the managed tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantStatusInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantStatusInformation",
  "onboardingStatus": "String",
  "onboardedDateTime": "String (timestamp)",
  "onboardedByUserId": "String",
  "offboardedDateTime": "String (timestamp)",
  "offboardedByUserId": "String",
  "delegatedPrivilegeStatus": "String",
  "lastDelegatedPrivilegeRefreshDateTime": "String (timestamp)",
  "workloadStatuses": [
    {
      "@odata.type": "microsoft.graph.managedTenants.workloadStatus"
    }
  ]
}
```
