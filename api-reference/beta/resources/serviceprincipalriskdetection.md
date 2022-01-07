---
title: "servicePrincipalRiskDetection resource type"
description: "Represents information about a detected workload identity risk in an Azure AD tenant, including risk for applications, service principals and Managed Identities."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# servicePrincipalRiskDetection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a detected workload identity risk in an Azure AD tenant, including risk for applications, service principals and Managed Identities. We have combined these various account types into a single collection here.

Azure AD continually evaluates risks based on various signals and machine learning. This API provides programmatic access to all workload identity risk detections in your Azure AD environment.

For more information about risk events, see Azure Active Directory Identity Protection. 

>**Note:** You must have an Azure AD Premium P1 or P2 license to use the servicePrincipalRiskDetection API.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipalRiskDetections](../api/identityprotectionroot-list-serviceprincipalriskdetections.md)|[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md) collection|List service principal risk detections and their properties.|
|[Get servicePrincipalRiskDetection](../api/serviceprincipalriskdetection-get.md)|[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)|Get a specific service principal risk detection and its properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|activityType|Indicates the activity type the detected risk is linked to. The possible values are: `signin`, `unknownFutureValue`, `servicePrincipal`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipal`.|
|activityDateTime|DateTimeOffset|Date and time that the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|additionalInfo|String|Additional information associated with the risk detection in JSON format.|
|appId|String|The unique identifier for the associated application.|
|correlationId|String|Correlation ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in.|
|detectedDateTime|DateTimeOffset|Date and time that the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk (real-time/offline). The possible values are: `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`.|
|id|String|Unique ID of the risk detection. Inherited from [entity](../resources/entity.md).|
|ipAddress|String|Provides the IP address of the client from where the risk occurred.|
|keyIds|String collection|The unique identifier (GUID) for the key credential associated with the risk detection.|
|lastUpdatedDateTime|DateTimeOffset|Date and time that the risk detection was last updated.|
|location|[signInLocation](../resources/signinlocation.md)|Location of the sign-in.|
|requestId|String|Request ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in.|
|riskDetail|riskDetail|Details of the detected risk. Note: Details for this property are only available for Azure AD Premium P2 customers. P1 customers will be returned hidden. The possible values are: `none`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `adminConfirmedSigninCompromised`, `hidden`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|
|riskEventType|String|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `suspiciousSignIns`,`leakedCredentials`, and `unknownFutureValue`.|
|riskLevel|riskLevel|Level of the detected risk. Note: Details for this property are only available for Azure AD Premium P2 customers. P1 customers will be returned hidden. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|The state of a detected risky workload identity or sign-in. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|servicePrincipalDisplayName|String|	The display name for the service principal.|
|servicePrincipalId|String|The unique identifier for the service principal.|
|source|String|Source of the risk detection. For example, `identityProtection`.|
|tokenIssuerType|tokenIssuerType|Indicates the type of token issuer for the detected sign-in risk. The possible values are: `AzureAD`, `UnknownFutureValue`, `AzureADBackupAuth`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `AzureADBackupAuth`.|

## Relationships
riskyServicePrincipals (ADD LINK HERE).

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

