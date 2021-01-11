---
title: "userRegistrationFeatureSummary resource type"
description: "Summary of users capable of Multi-Factor Authentication, Self-Service Password Reset, and Passwordless authentication."
author: "danielwood95"
localization_priority: Normal
ms.prod: "reports"
doc_type: resourcePageType
---

# userRegistrationFeatureSummary resource type

Namespace: microsoft.graph

Represents the current state of how many users in your organization are capable of multi-factor authentication, self-service password reset and passwordless authentication.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users accounts, excluding those that are blocked|
|userRegistrationFeatureCounts|[userRegistrationFeatureCount](../resources/userregistrationfeaturecount.md) collection|**TODO: Add Description**|
|userRoles|includedUserRoles|User role type. Possible values are: `all`, `privilegedAdmin` (e.g. Global admin, Security admin, Conditional Access admin, Exchange admin, SharePoint admin, Helpdesk admin, Billing admin, User admin, and Authentication admin), `admin` (any Azure AD admin role), `user`, `unknownFutureValue`.|
|userTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationFeatureSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureSummary",
  "totalUserCount": "Integer",
  "userTypes": "String",
  "userRoles": "String",
  "userRegistrationFeatureCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationFeatureCount"
    }
  ]
}
```
