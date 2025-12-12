---
title: "teamsUserConfiguration resource type"
description: "Contains information of users who have accounts hosted on Microsoft Teams."
author: "praspatil05"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsUserConfiguration resource type

Namespace: microsoft.graph.teamsAdministration

Contains information of users who have accounts hosted on Microsoft Teams.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-teamsadminroot-list-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Get user configurations for all Teams users who belong to a tenant.|
|[Get](../api/teamsadministration-teamsuserconfiguration-get.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Read the Teams user configurations for a specific user using their ID (the user's identifier).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountType|microsoft.graph.teamsAdministration.accountType|The type of the account in the Teams context. The possible values are: `user`, `resourceAccount`, `guest`, `sfbOnPremUser`, `unknown`, `unknownFutureValue`, `ineligibleUser`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this enum [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `ineligibleUser`.|
|createdDateTime|DateTimeOffset|The date and time when the user was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|effectivePolicyAssignments|[microsoft.graph.teamsAdministration.effectivePolicyAssignment](../resources/teamsadministration-effectivepolicyassignment.md) collection|Contains the user's effective policy assignments, with each assignment including **policyType** and **policyAssignment** details.|
|featureTypes|String collection|The Teams features enabled for a given user based on licensing or service plan.|
|id|String|The unique identifier (GUID) for a user in Microsoft Entra. Inherited from [entity](../resources/entity.md).|
|isEnterpriseVoiceEnabled|Boolean|Indicates whether voice capability is enabled.|
|modifiedDateTime|DateTimeOffset|The date and time when the user's details were last modified. The system updates this value each time the user's details are changed. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|telephoneNumbers|[microsoft.graph.teamsAdministration.assignedTelephoneNumber](../resources/teamsadministration-assignedtelephonenumber.md) collection|Includes both the phone number and its corresponding assignment category. The assignment category can include values such as `primary`, `private`, and `alternate`.|
|tenantId|String|The unique identifier of the tenant in Entra to which this user is assigned.|
|userPrincipalName|String|The sign-in address of the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|Represents an Entra user account.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "accountType": "String",
  "createdDateTime": "String (timestamp)",
  "effectivePolicyAssignments": [{"@odata.type": "microsoft.graph.teamsAdministration.effectivePolicyAssignment"}],
  "featureTypes": ["String"],
  "id": "String (identifier)",
  "isEnterpriseVoiceEnabled": "Boolean",
  "modifiedDateTime": "String (timestamp)",
  "telephoneNumbers": [{"@odata.type": "microsoft.graph.teamsAdministration.assignedTelephoneNumber"}],
  "tenantId": "String",
  "userPrincipalName": "String"
}
```
