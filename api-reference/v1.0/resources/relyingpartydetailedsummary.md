---
title: "relyingPartyDetailedSummary resource type"
description: "Enables customers to get the summary of ADFS relying Parties Information on Daily/Weekly/Monthly."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# relyingPartyDetailedSummary resource type

Namespace: microsoft.graph



Enables customers to get the summary of ADFS relying Parties Information on Daily/Weekly/Monthly.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List relyingPartyDetailedSummary objects](../api/relyingpartydetailedsummary-list.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) collection|Get a list of the [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) objects and their properties.|
|[Get relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-get.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md)|Read the properties and relationships of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|
|[Update relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-update.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md)|Update the properties of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|
|[Delete relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-delete.md)|None|Delete a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedSignInCount|Int64|# of failed sign ins on AD FS in the period specified.|
|id|String|Unique Identifier generated at API. Inherited from [entity](../resources/entity.md).|
|migrationStatus|migrationStatus|Indication of whether we believe the app can be easily moved to AAD. The possible values are: `ready`, `needsReview`, `additionalStepsRequired`, `unknownFutureValue`.|
<!--|migrationValidationDetails|[keyValuePair](../resources/intune-keyvaluepair.md) collection|**TODO: Add Description**|-->
|relyingPartyId|String|This identifier is used to identify the relying party to this Federation Service. It is used when issuing claims to the relying party.|
|relyingPartyName|String|Name of website or other entity on the Internet that uses an identity provider to authenticate a user who wants to log in.|
|replyUrls|String collection|Specifies where the relying party expects to receive the token.|
|serviceId|String|Uniquely identifies the AD forest.|
|signInSuccessRate|Double|# of successful / (# Successful + #failed sign ins) on AD FS in the period specified.|
|successfulSignInCount|Int64|# of successful sign ins on AD FS.|
|totalSignInCount|Int64|# of successful + failed sign ins failed sign ins on AD FS in the period specified.|
|uniqueUserCount|Int64|# of unique users that have signed into the application. |

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

