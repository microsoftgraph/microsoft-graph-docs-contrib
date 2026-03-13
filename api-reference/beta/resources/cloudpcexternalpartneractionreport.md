---
title: "cloudPcExternalPartnerActionReport resource type"
description: "Represents the records of the Cloud PC external partner action. Such as the configure agent action, deploy agent action."
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExternalPartnerActionReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the records of the Cloud PC external partner action. Such as the configure agent action, deploy agent action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|[cloudPcExternalPartnerActionType](#cloudpcexternalpartneractiontype-values)|The type of external partner action. Read-only. The possible values are: `configureAgent`, `deployAgent`, `unknownFutureValue`.|
|activityId|String|The ID of external partner activity. Read-only.|
|activityMessage|String|The message of external partner activity. Read-only.|
|agentName|String|The agent name of the external partner. Read-only.|
|agentSetting|[cloudPcExternalPartnerAgentSetting](../resources/cloudpcexternalpartneragentsetting.md)|The agent setting of the external partner. Read-only.|
|authenticatedAppId|String|Indicates the authenticated Microsoft Entra (Azure AD) app ID of the action request. Read-only.|
|authenticatedAppName|String|Indicates the authenticated Microsoft Entra (Azure AD) app name of the action request. Read-only.|
|authenticatedMethod|[cloudPcExternalPartnerAuthenticatedMethod](#cloudpcexternalpartnerauthenticatedmethod-values)|Indicates the authenticated method used by the Cloud PC external partner action. Read-only. The possible values are: `gDAP`, `dAP`, `appOnly`, `normalUser`, `guestUser`, `unknownFutureValue`.|
|authenticatedUserPrincipalName|String|Indicates the authenticated Microsoft Entra (Azure AD) user principal name of the action request. Read-only.|
|cloudPcId|String|The Cloud PC's ID of the partner agent is deployed. Read-only.|
|cloudPcName|String|The Cloud PC's Name of the partner agent is deployed. Read-only.|
|createdDateTime|DateTimeOffset|The create time of the action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only.|

### CloudPcExternalPartnerActionType values

|Member|Description|
|:---|:---|
|configureAgent|Default. Indicates Cloud PC Partner action to partner configuring agent.|
|deployAgent|Indicates Cloud PC Partner action to partner deploying agent.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### CloudPcExternalPartnerAuthenticatedMethod values

|Member|Description|
|:---|:---|
|gDAP|Indicates Granular Delegated Admin Privileges(GDAP) is delegating the authentication.|
|dAP|Indicates Delegated Admin Privileges(DAP) is delegating the authentication.|
|appOnly|Indicates the authentication is done by service principal.|
|normalUser|Indicates the authentication is done by Microsoft Entra (Azure AD) member user.|
|guestUser|Indicates the authentication is done by Microsoft Entra (Azure AD) guest user. This user commonly creates by B2B invitation. The tenant admin can invite external identities to join their tenant.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcExternalPartnerActionReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerActionReport",
  "actionType": "String",
  "authenticatedMethod": "String",
  "authenticatedAppId": "String",
  "authenticatedAppName": "String",
  "authenticatedUserPrincipalName": "String",
  "createdDateTime": "String (timestamp)",
  "cloudPcId": "String",
  "cloudPcName": "String",
  "agentName": "String",
  "agentSetting": {
    "@odata.type": "microsoft.graph.cloudPcExternalPartnerAgentSetting"
  },
  "activityId": "String",
  "activityMessage": "String"
}
```

