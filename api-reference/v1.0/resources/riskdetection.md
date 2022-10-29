---
title: "riskDetection resource type"
description: "risk detections"
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskDetection resource type

Namespace: microsoft.graph

Represents information about a detected risk in an Azure AD tenant. 

Azure AD continually evaluates [user risks](riskyuser.md) and app or user [sign-in](signin.md) risks based on various signals and machine learning. This API provides programmatic access to all risk detections in your Azure AD environment.

For more information about risk events, see [Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection).

>[!NOTE]
> 1. You must have an Azure AD Premium P1 or P2 license to use the risk detection API.
> 2. The availability of risk detection data is governed by the [Azure AD data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List riskDetections](../api/riskdetection-list.md)|[riskDetection](../resources/riskdetection.md) collection|Get a list of the [riskDetection](../resources/riskdetection.md) objects and their properties.|
|[Get riskDetection](../api/riskdetection-get.md)|[riskDetection](../resources/riskdetection.md)|Read the properties and relationships of a [riskDetection](../resources/riskdetection.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|activityType|Indicates the activity type the detected risk is linked to. Possible values are: `signin`, `user`, `unknownFutureValue`.|
|activityDateTime|DateTimeOffset|Date and time that the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is look like this: `2014-01-01T00:00:00Z`|
|additionalInfo|String|Additional information associated with the risk detection in JSON format. For example, `"[{\"Key\":\"userAgent\",\"Value\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\"}]"`. Possible keys in the additionalInfo JSON string are: `userAgent`, `alertUrl`, `relatedEventTimeInUtc`, `relatedUserAgent`, `deviceInformation`, `relatedLocation`, `requestId`, `correlationId`, `lastActivityTimeInUtc`, `malwareName`, `clientLocation`, `clientIp`, `riskReasons`. <br/>For more information about riskReasons and possible values, see [riskReasons values](#riskreasons-values). |
|correlationId|String|Correlation ID of the sign-in associated with the risk detection. This property is `null` if the risk detection is not associated with a sign-in.|
|detectedDateTime|DateTimeOffset|Date and time that the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: `2014-01-01T00:00:00Z`|
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk (real-time/offline). Possible values are: `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`.|
|id|String|Unique ID of the risk detection. Inherited from [entity](../resources/entity.md)|
|ipAddress|String|Provides the IP address of the client from where the risk occurred.|
|lastUpdatedDateTime|DateTimeOffset|Date and time that the risk detection was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is look like this: `2014-01-01T00:00:00Z`|
|location|[signInLocation](../resources/signinlocation.md)|Location of the sign-in.|
|requestId|String|Request ID of the sign-in associated with the risk detection. This property is `null` if the risk detection is not associated with a sign-in.|
|riskDetail|riskDetail|Details of the detected risk. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `m365DAdminDismissedDetection`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `m365DAdminDismissedDetection`.|
|riskEventType|String|The type of risk event detected. The possible values are `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`, `generic`,`adminConfirmedUserCompromised`, `passwordSpray`, `impossibleTravel`, `newCountry`, `anomalousToken`, `tokenIssuerAnomaly`,`suspiciousBrowser`, `riskyIPAddress`, `mcasSuspiciousInboxManipulationRules`, `suspiciousInboxForwarding`, and `anomalousUserActivity`. If the risk detection is a premium detection, will show `generic`. <br/>For more information about each value, see [riskEventType values](#riskeventtype-values).|
|riskLevel|riskLevel|Level of the detected risk. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|The state of a detected risky user or sign-in. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|source|String|Source of the risk detection. For example, `activeDirectory`. |
|tokenIssuerType|tokenIssuerType|Indicates the type of token issuer for the detected sign-in risk. Possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`.|
|userDisplayName|String|The user principal name (UPN) of the user. |
|userId|String|Unique ID of the user.|
|userPrincipalName|String|The user principal name (UPN) of the user.|

### riskEventType values

| Name | UI Display Name | Description |
|--|--|--|
| unlikelyTravel | Atypical travel | Identifies two sign-ins originating from geographically distant locations, where at least one of the locations may also be atypical for the user, given past behavior.  |
| anonymizedIPAddress | Anonymous IP address | Indicates sign-ins from an anonymous IP address, for example, using an anonymous browser or VPN. |
| maliciousIPAddress | Malicious IP address | Indicates sign-ins from a malicious IP address. An IP address is considered malicious based on high failure rates because of invalid credentials received from the IP address or other IP reputation sources. |
| unfamiliarFeatures | Unfamiliar sign-in properties | Indicates sign-ins with characteristics that deviate from past sign-in properties. |
| malwareInfectedIPAddress | Malware linked IP address | Indicates sign-ins from IP addresses infected with malware. Deprecated and no longer generated for new detections. |
| suspiciousIPAddress | Malicious IP address | Identifies logins from IP addresses that are known to be malicious at the time of the sign in. |
| leakedCredentials | Leaked credentials | Indicates that the user's valid credentials have been leaked. This sharing is typically done by posting publicly on the dark web, paste sites, or by trading and selling the credentials on the black market. When the Microsoft leaked credentials service acquires user credentials from the dark web, paste sites, or other sources, they are checked against Azure AD users' current valid credentials to find valid matches. |
| investigationsThreatIntelligence | Azure AD threat intelligence | Indicates a sign-in activity that is unusual for the given user or is consistent with known attack patterns based on Microsoft's internal and external threat intelligence sources. |
| generic | Additional risk detected | Indicates that the user was not enabled for Identity Protection. |
| adminConfirmedUserCompromised | Admin confirmed user compromised | Indicates that an administrator has [confirmed the user is compromised](../api/riskyuser-confirmcompromised.md). |
| passwordSpray | Password spray | Indicates that multiple usernames are attacked using common passwords in a unified brute force manner to gain unauthorized access. |
| anomalousToken | Anomalous Token | Indicates that there are abnormal characteristics in the token such as an unusual token lifetime or a token that is played from an unfamiliar location. |
| tokenIssuerAnomaly | Token Issuer Anomaly | Indicates that The SAML token issuer for the associated SAML token is potentially compromised. The claims included in the token are unusual or match known attacker patterns. |
| suspiciousBrowser | Suspicious browser | Suspicious sign-in activity across multiple tenants from different countries in the same browser. |
| impossibleTravel | Impossible travel | Discovered by Microsoft Defender for Cloud Apps (MDCA). Identifies two user activities (a single or multiple sessions) originating from geographically distant locations within a time period shorter than the time it would have taken the user to travel from the first location to the second, indicating that a different user is using the same credentials. | 
| newCountry | New country | This detection is discovered by Microsoft Cloud App Security (MCAS). The sign-in occurred from a location that wasn't recently or never visited by the given user. |
| riskyIPAddress | Activity from anonymous IP address | This detection is discovered by Microsoft Cloud App Security (MCAS). Users were active from an IP address that has been identified as an anonymous proxy IP address. |
| mcasSuspiciousInboxManipulationRules | Suspicious inbox manipulation rules | Discovered by Microsoft Defender for Cloud Apps (MDCA). Identifies suspicious email forwarding rules, for example, if a user created an inbox rule that forwards a copy of all emails to an external address.|
| suspiciousInboxForwarding | Suspicious inbox forwarding | This detection is discovered by Microsoft Cloud App Security (MCAS). It looks for suspicious email forwarding rules, for example, if a user created an inbox rule that forwards a copy of all emails to an external address. |
| anomalousUserActivity |  Indicates a suspicious pattern of behavior for a user that is anomalous to past behavioral patterns. |

### riskReasons values

| riskEventType | Value | UI display string |
|--|--|--|
| `investigationsThreatIntelligence` | `suspiciousIP` | This sign-in was from a suspicious IP address |
| `investigationsThreatIntelligence` | `passwordSpray` | This user account was attacked by a password spray. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskDetection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskDetection",
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
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "additionalInfo": "String"
}
```
