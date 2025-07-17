---
title: riskyServicePrincipal resource type
description: 'Represents Microsoft Entra Workload ID that are at risk, including risk for applications, service principals and Managed Identities. '
author: ebasseri
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
ms.date: 07/22/2024
---

# riskyServicePrincipal resource type

Namespace: microsoft.graph

Represents Microsoft Entra service principals that are at-risk. Microsoft Entra ID continually evaluates service principal risk based on various signals and machine learning. This API provides programmatic access to all at-risk service principals in your Microsoft Entra tenant.

Inherits from [entity](../resources/entity.md).

>**Note:** Using the riskyServicePrincipal API requires a Workload Identities Premium license.

## Methods

| Method                                                                                      | Return type                                                                        | Description                                                     |
| :------------------------------------------------------------------------------------------ | :--------------------------------------------------------------------------------- | :-------------------------------------------------------------- |
| [List](../api/identityprotectionroot-list-riskyserviceprincipals.md) | [riskyServicePrincipal](../resources/riskyserviceprincipal.md) collection          | List risky service principals and their risk properties.        |
| [Get](../api/riskyserviceprincipal-get.md)                            | [riskyServicePrincipal](../resources/riskyserviceprincipal.md)                     | Get a specific risky service principal and its risk properties. |
| [Dismiss](../api/riskyserviceprincipal-dismiss.md)                                          | None                                                                               | Dismiss the risk of a risky service principal.                  |
| [Confirm compromised](../api/riskyserviceprincipal-confirmcompromised.md)                    | None                                                                               | Confirm a risky service principal as compromised.               |
| [List history](../api/riskyserviceprincipal-list-history.md)                                | [riskyServicePrincipalHistoryItem](riskyserviceprincipalhistoryitem.md) collection | Get the risk history of a Microsoft Entra service principal.          |

## Properties

| Property                | Type           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| :---------------------- | :------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| appId                   | String         | The globally unique identifier for the associated application (its **appId** property), if any.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| displayName             | String         | The display name for the service principal.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| id                      | String         | The unique identifier assigned to the service principal at risk. Inherited from [entity](../resources/entity.md).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| isEnabled          | Boolean        | `true` if the service principal account is enabled; otherwise, `false`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| isProcessing            | Boolean        | Indicates whether Microsoft Entra ID is currently processing the service principal's risky state.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| riskDetail              | riskDetail     | Details of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned `hidden`. <br/>The possible values are: `none`, `hidden`,  `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`. |
| riskLastUpdatedDateTime | DateTimeOffset | The date and time that the risk state was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`. Supports `$filter` (`eq`).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| riskLevel               | riskLevel      | Level of the detected risky workload identity. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Supports `$filter` (`eq`).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| riskState               | riskState      | State of the service principal's risk. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| servicePrincipalType    | String         | Identifies whether the service principal represents an `Application`, a `ManagedIdentity`, or a legacy application (`socialIdp`). This is set by Microsoft Entra ID internally and is inherited from [servicePrincipal](../resources/servicePrincipal.md).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

## Relationships

| Relationship | Type                                                                               | Description                                                 |
| :----------- | :--------------------------------------------------------------------------------- | :---------------------------------------------------------- |
| history      | [riskyServicePrincipalHistoryItem](riskyserviceprincipalhistoryitem.md) collection | Represents the risk history of Microsoft Entra service principals. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyServicePrincipal",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.riskyServicePrincipal",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
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
