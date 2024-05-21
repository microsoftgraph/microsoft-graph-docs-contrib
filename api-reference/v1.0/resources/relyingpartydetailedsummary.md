---
title: "relyingPartyDetailedSummary resource type"
description: "Represents the summary of AD FS relying parties' information on daily, weekly, or monthly frequency."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.subservice: entra-monitoring-health
doc_type: resourcePageType
---

# relyingPartyDetailedSummary resource type

Namespace: microsoft.graph

Represents the summary of AD FS relying parties' information on daily, weekly, or monthly frequency.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List relyingPartyDetailedSummary](../api/reportroot-getrelyingpartydetailedsummary.md)|  [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) collection|Get a summary of AD FS relying parties information.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedSignInCount|Int64|Number of failed sign ins on AD FS in the period specified.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|id|String|Unique identifier for the report. Inherited from [entity](../resources/entity.md).|
|migrationStatus|migrationStatus|Indicates whether the app can be easily moved to Entra ID. The possible values are: `ready`, `needsReview`, `additionalStepsRequired`, `unknownFutureValue`.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|migrationValidationDetails|[keyValuePair](../resources/keyvaluepair.md) collection|Specifies all the validations checks done on applications config details.|
|relyingPartyId|String|Identifies the relying party to this federation service. It's used when issuing claims to the relying party.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|relyingPartyName|String|Name of the relying party's website or other entity on the Internet that uses an identity provider to authenticate a user who wants to log in.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|replyUrls|String collection|Specifies where the relying party expects to receive the token.|
|serviceId|String|Uniquely identifies the Active Directory forest.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|signInSuccessRate|Double|Calculated as `Number of successful / (Number of successful + Number of failed sign ins)` or `successfulSignInCount / totalSignInCount` on AD FS in the period specified.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|successfulSignInCount|Int64|Number of successful sign ins on AD FS.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|totalSignInCount|Int64|Number of successful + failed sign ins on AD FS in the period specified.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|
|uniqueUserCount|Int64|Number of unique users that signed into the application.<br/><br/> Supports `$orderby`, `$filter` (`eq`).|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
  "id": "String (identifier)",
  "relyingPartyId": "String",
  "serviceId": "String",
  "relyingPartyName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "totalSignInCount": "Integer",
  "signInSuccessRate": "Double",
  "uniqueUserCount": "Integer",
  "migrationStatus": "String",
  "migrationValidationDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "replyUrls": [
    "String"
  ]
}
```

