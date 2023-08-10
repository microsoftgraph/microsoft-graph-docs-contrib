---
title: "servicePrincipalSignInActivity resource type"
description: "Represents the service principal sign-in activity usage in a given tenant."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# servicePrincipalSignInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service principal sign-in activity usage in a given tenant. This resource contains information about the last usage time of a service principal.

## Methods

| Method                                                                               | Return Type                                                                                 | Description                                                                   |
| :----------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------- |
| [List servicePrincipalSignInActivities](../api/reportroot-list-serviceprincipalsigninactivities.md) | [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) collection | Get a list of [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) objects that contains sign-in activity information for service principals in an Azure Active Directory tenant.                    |
| [Get servicePrincipalSignInActivity](../api/serviceprincipalsigninactivity-get.md)   | [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md)            | Get a [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) object that contains sign-in activity information for a service principal in an Azure Active Directory tenant. |

## Properties

| Property                                        | Type                                             | Description                                                                                                                                     |
| :---------------------------------------------- | :----------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------- |
| appId                                           | String                                           | The application ID of the resource.                                                                                                             |
| applicationAuthenticationClientSignInActivity   | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a client.              |
| applicationAuthenticationResourceSignInActivity | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a resource.            |
| delegatedClientSignInActivity                   | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a client.                       |
| delegatedResourceSignInActivity                 | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a resource.                     |
| id                                              | String                                           | The unique ID for each service principal sign-in event.                                                                                         |
| lastSignInActivity                              | [signInActivity](../resources/signinactivity.md) | The most recent sign-in activity of the application across delegated or app-only flows where the application is used either as a client or resource. |


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipalSignInActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.servicePrincipalSignInActivity",
  "appId": "String",
  "applicationAuthenticationClientSignInActivity": {"@odata.type": "microsoft.graph.signInActivity"},
  "applicationAuthenticationResourceSignInActivity": {"@odata.type": "microsoft.graph.signInActivity"},
  "delegatedClientSignInActivity": {"@odata.type": "microsoft.graph.signInActivity"},
  "delegatedResourceSignInActivity": {"@odata.type": "microsoft.graph.signInActivity"},
  "id": "String (identifier)",
  "lastSignInActivity": {"@odata.type": "microsoft.graph.signInActivity"}
}
```
