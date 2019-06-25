---
title: "relyingPartyDetailedSummary resource type"
description: "Represents a relying party in AD FS"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# relyingPartyDetailedSummary resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a relying party configured in Active Directory Federation Services (AD FS)

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-list.md) | [relyingPartyDetailedSummary](relyingpartydetailedsummary.md) | Read properties and relationships of relyingPartyDetailedSummary object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only. Unique Identifier generated at API level.| 
|relyingPartyId|String|This identifier is used to identify the relying party to this Federation Service. It is used when issuing claims to the relying party.|
|serviceId|String|Uniquely identifies the Active Directory forest.|
|migrationStatus|string| Indication of whether the application can be moved to Azure AD or require more investigation. Possible values are: `ready`, `needsReview`, `additionalStepsRequired`.|
|migrationValidationDetails|[keyValuePair](keyvaluepair.md) collection|Specifies all the validations check done on applications configuration details to evaluate if the application is ready to be moved to Azure AD.|
|relyingPartyName|String|Name of application or other entity on the internet that uses an identity provider to authenticate a user who wants to log in.|
|failedSignInCount|Int64| # of failed sign in on Active Directory Federation Service in the period specified. |
|replyUrls|String collection|Specifies where the relying party expects to receive the token.|
|signInSuccessRate|Double|# of successful / (# Successful + #failed sign ins) on Active Directory Federation Service in the period specified.|
|successfulSignInCount|Int64|# of successful sign ins on Active Directory Federation Service.|
|totalSignInCount|Int64|# of successful + failed sign ins failed sign ins on Active Directory Federation Service in the period specified.|
|uniqueUserCount|Int64|# of unique users that have signed into the application.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "failedSignInCount": "failedSignInCount-value",
  "id": "id-value",
  "migrationStatus": "migrationStatus-value",
  "migrationValidationDetails": [
      {
        "name": "name-value",
        "value": "value-value"
      }
    ],
  "relyingPartyId": "relyingPartyId-value",
  "relyingPartyName": "relyingPartyName-value",
  "replyUrls": [
    "replyUrls-value"
    ],
  "serviceId": "serviceId-value",
  "signInSuccessRate": "signInSuccessRate-value",
  "successfulSignInCount": "successfulSignInCount-value",
  "totalSignInCount": "totalSignInCount-value",
  "uniqueUserCount": "uniqueUserCount-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "relyingPartyDetailedSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->