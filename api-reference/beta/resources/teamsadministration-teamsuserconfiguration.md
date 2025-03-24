---
title: "teamsUserConfiguration resource type"
description: "Contains user's information who have accounts homed on Microsoft Teams"
author: "Prasanna Patil"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "Teams"
doc_type: resourcePageType
---

# teamsUserConfiguration resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains user's information who have accounts homed on Microsoft Teams

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-teamsadminroot-list-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Get user configurations for all Teams users belonging to a tenant|
|[Get](../api/teamsadministration-teamsuserconfiguration-get.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Get Teams user configurations for a sepcific user using the userId (the identifier of User)|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountType|microsoft.graph.teamsAdministration.accountType|Type of the account in Teams context.The possible values are: `user`, `resourceAccount`, `guest`, `sfbOnPremUser`, `unknown`, `unknownFutureValue`, `ineligibleUser`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this {evolvable enum}(/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `ineligibleUser`.|
|createdDateTime|DateTimeOffset|The date when the user was created|
|effectivePolicyAssignments|[microsoft.graph.teamsAdministration.effectivePolicyAssignment](../resources/teamsadministration-effectivepolicyassignment.md) collection|This attribute contains the users effective policy assignments, with each assignment including PolicyType, and PolicyAssignment details|
|featureTypes|String collection|Array of Teams features enabled for a given user based on Licensing/ServicePlan|
|id|String|Globally unique identifier / guid for a user in Entra. Inherits from [entity](../resources/entity.md)|
|isEnterpriseVoiceEnabled|Boolean|Flag that shares if voice capability is enabled or not.|
|modifiedDateTime|DateTimeOffset|The date when this object was last changed. This value is set by the system each time the object is changed.|
|telephoneNumbers|[microsoft.graph.teamsAdministration.assignedTelephoneNumber](../resources/teamsadministration-assignedtelephonenumber.md) collection|Complex object that includes both the telephone number and its corresponding assignment category. The assignment category can include values such as 'Primary', 'Private', and 'Alternate'|
|tenantId|String|Globally unique identifier of the tenant in Active Directory to which this User belongs. |
|userPrincipalName|String|The sign-in address of the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|Represents a Microsoft Entra user account|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "id": "String (identifier)",
  "userPrincipalName": "String",
  "tenantId": "String",
  "effectivePolicyAssignments": [
    {
      "@odata.type": "microsoft.graph.teamsAdministration.effectivePolicyAssignment"
    }
  ],
  "telephoneNumbers": [
    {
      "@odata.type": "microsoft.graph.teamsAdministration.assignedTelephoneNumber"
    }
  ],
  "isEnterpriseVoiceEnabled": "Boolean",
  "featureTypes": [
    "String"
  ],
  "accountType": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```

