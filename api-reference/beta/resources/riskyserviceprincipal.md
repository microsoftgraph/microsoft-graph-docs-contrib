---
title: "riskyServicePrincipal resource type"
description: "Represents Azure AD workload identities that are at risk, including risk for applications, service principals and Managed Identities. We have combined these various account types into a single collection here. Azure AD continually evaluates workload identity risk based on various signals and machine learning. This API provides programmatic access to all at-risk workload identities in your Azure AD tenant."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskyServicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Azure AD workload identities that are at risk, including risk for applications, service principals and Managed Identities. We have combined these various account types into a single collection here. Azure AD continually evaluates workload identity risk based on various signals and machine learning. This API provides programmatic access to all at-risk workload identities in your Azure AD tenant.

>**Note:** Using the riskyServicePrincipal API requires an Azure AD Premium P2 license.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List riskyServicePrincipals](../api/riskyserviceprincipal-list.md)|[riskyServicePrincipal](../resources/riskyserviceprincipal.md) collection|List risky workload identities and their properties.|
|[Get riskyServicePrincipal](../api/riskyserviceprincipal-get.md)|[riskyServicePrincipal](../resources/riskyserviceprincipal.md)|Get a specific risky workload identity and its properties.|
|[List history](../api/riskyserviceprincipal-list-history.md)|[riskyServicePrincipalHistoryItem](../resources/riskyserviceprincipalhistoryitem.md) collection|Get the risk history of a workload identity.|
|[dismiss](../api/riskyserviceprincipal-dismiss.md)|None|Dismiss the risk of a risky workload identity.|
|[confirmCompromised](../api/riskyserviceprincipal-confirmcompromised.md)|None|Confirm a risky workload identity as compromised.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the service principal account is enabled; otherwise, `false`.|
|appId|String|The unique identifier for the associated application (its appId property), if any.|
|displayName|String|The display name for the service principal.|
|id|String|The unique identifier for the service principal. Inherited from [directoryObject](../resources/entity.md).|
|isProcessing|Boolean|Indicates whether a workload identity's risky state is being processed by the backend.|
|riskDetail|riskDetail|The possible values are: `none`, `hidden`,  `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time that the risk state was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z.`|
|riskLevel|riskLevel|Level of the detected risky workload identity. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the workload identity's risk. The possible values are: `none`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|servicePrincipalType|String|Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Azure AD internally. Inherits from [servicePrincipal](../resources/servicePrincipal.md). 

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyServicePrincipal",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyServicePrincipal",
  "id": "String (identifier)",
  "accountEnabled": "Boolean",
  "isProcessing": "Boolean",
  "riskLastUpdatedDateTime": "String (timestamp)",
  "riskLevel": "String",
  "riskState": "String",
  "riskDetail": "String",
  "displayName": "String",
  "appId": "String",
  "servicePrincipalType": "String"
}
```

