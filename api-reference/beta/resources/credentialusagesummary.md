---
title: "credentialUsageSummary resource type"
description: "Represents the current state of how many users in your organization are using self-service password reset capabilities."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# credentialUsageSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are using self-service password reset capabilities. For more information about license requirements for this feature, see [Authentication Methods Activity: Permissions and licenses](/entra/identity/authentication/howto-authentication-methods-activity#permissions-and-licenses).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/reportroot-getcredentialusagesummary.md) | credentialUsageSummary | Read properties and relationships of a credentialUsageSummary object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethod | usageAuthMethod | Represents the authentication method that the user used. Possible values are:`email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion` (only used for self-service password reset), `appNotification`, `appCode`, `alternateMobileCall` (supported only in registration), `fido`, `appPassword`, `unknownFutureValue`. |
| failureActivityCount | Int64 | Provides the count of failed resets or registration data. |
| feature | featureType | Defines the feature to report. Possible values are: `registration`, `reset`, `unknownFutureValue`. |
| id | String | The unique identifier for the activity. Read-only. |
| successfulActivityCount | Int64 | Provides the count of successful registrations or resets. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUsageSummary",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "feature":"string",
  "successfulActivityCount":"Int64",
  "failureActivityCount": "Int64",
  "authMethod": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

