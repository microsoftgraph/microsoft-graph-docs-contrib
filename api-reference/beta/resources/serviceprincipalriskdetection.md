---
title: "servicePrincipalRiskDetection resource type"
description: "Represents information about a detected at-risk service principal in an Azure AD tenant."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# servicePrincipalRiskDetection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about detected at-risk service principals in an Azure AD tenant. Azure AD continually evaluates risks based on various signals and machine learning. This API provides programmatic access to all service principal risk detections in your Azure AD environment.

Inherits from [entity](../resources/entity.md).

For more information about risk events, see [Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection). 

>**Note:** You must have an Entra Workload Identity Premium license to use the servicePrincipalRiskDetection API.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipalRiskDetections](../api/identityprotectionroot-list-serviceprincipalriskdetections.md)|[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md) collection|List service principal risk detections and their properties.|
|[Get servicePrincipalRiskDetection](../api/serviceprincipalriskdetection-get.md)|[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)|Get a specific service principal risk detection and its properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|activityType|Indicates the activity type the detected risk is linked to.  The possible values are: `signin`, `servicePrincipal`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipal`. |
|activityDateTime|DateTimeOffset|Date and time when the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|additionalInfo|String|Additional information associated with the risk detection. This string value is represented as a JSON object with the quotations escaped. |
|appId|String|The unique identifier for the associated application.|
|correlationId|String|Correlation ID of the sign-in activity associated with the risk detection. This property is `null` if the risk detection is not associated with a sign-in activity.|
|detectedDateTime|DateTimeOffset|Date and time when the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk , whether real-time or offline). The possible values are: `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`.|
|id|String|Unique identifier of the risk detection. Inherited from [entity](../resources/entity.md).|
|ipAddress|String|Provides the IP address of the client from where the risk occurred.|
|keyIds|String collection|The unique identifier (GUID) for the key credential associated with the risk detection.|
|lastUpdatedDateTime|DateTimeOffset|Date and time when the risk detection was last updated.|
|location|[signInLocation](signinlocation.md)|Location from where the sign-in was initiated. |
|requestId|String|Request identifier of the sign-in activity associated with the risk detection. This property is `null` if the risk detection is not associated with a sign-in activity. Supports `$filter` (`eq`).|
|riskDetail|riskDetail|Details of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned `hidden`. <br/>The possible values are: `none`, `hidden`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|
|riskEventType|String|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `generic`, `adminConfirmedServicePrincipalCompromised`, `suspiciousSignins`, `leakedCredentials`, `anomalousServicePrincipalActivity`, `maliciousApplication`, `suspiciousApplication`.|
|riskLevel|riskLevel|Level of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned `hidden`. The possible values are: `low`, `medium`, `high`, `hidden`, `none`.|
|riskState|riskState|The state of a detected risky service principal or sign-in activity. The possible values are: `none`, `dismissed`, `atRisk`, `confirmedCompromised`.|
|servicePrincipalDisplayName|String|	The display name for the service principal.|
|servicePrincipalId|String|The unique identifier for the service principal. Supports `$filter` (`eq`).|
|source|String|Source of the risk detection. For example, `identityProtection`.|
|tokenIssuerType|tokenIssuerType|Indicates the type of token issuer for the detected sign-in risk. The possible values are: `AzureAD`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipalRiskDetection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalRiskDetection",
  "id": "String (identifier)",
  "requestId": "String",
  "correlationId": "String",
  "riskEventType": "String",
  "riskState": "String",
  "riskLevel": "String",
  "riskDetail": "String",
  "source": "String",
  "detectionTimingType": "String",
  "activity": "String",
  "tokenIssuerType": "String",
  "ipAddress": "String",
  "location": {
    "@odata.type": "microsoft.graph.signInLocation"
  },
  "activityDateTime": "String (timestamp)",
  "detectedDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "servicePrincipalId": "String",
  "servicePrincipalDisplayName": "String",
  "appId": "String",
  "keyIds": [
    "String"
  ],
  "additionalInfo": "String"
}
```

