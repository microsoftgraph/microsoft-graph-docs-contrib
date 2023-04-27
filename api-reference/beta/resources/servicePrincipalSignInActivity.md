---
title: "servicePrincipalSignInActivity resource type"
description: "Represents the service principal signIn activity usage in a given tenant."
localization_priority: medium
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# servicePrincipalSignInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The sign-in activities for a servicePrincipal. Contains information about last usage time of the service principal.

## Methods

| Method                                                                             | Return Type                    | Description                                                                   |
| :--------------------------------------------------------------------------------- | :----------------------------- | :---------------------------------------------------------------------------- |
| [List servicePrincipalSignInActivity](../api/reportroot-list-serviceprincipalsigninactivities.md) | servicePrincipalSignInActivity | Retrieve a list of servicePrincipalSignInActivity objects.                    |
| [Get servicePrincipalSignInActivity](../api/serviceprincipalsigninactivity-get.md)   | servicePrincipalSignInActivity | Read properties and relationships of a servicePrincipalSignInActivity object. |

## Properties

| Property                                        | Type                           | Description                                                                                                                                     |
| :---------------------------------------------- | :----------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------- |
| id                                              | String                         | The unique id for each service principal sign-in event.                                                                                         |
| appId                                           | String                         | The application id of the resource.                                                                                                             |
| delegatedClientSignInActivity                   | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a delegated flow (user sign in) where the application is acting like a client.                       |
| delegatedResourceSignInActivity                 | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a delegated flow (user sign in) where the application is acting like a resource.                     |
| applicationAuthenticationClientSignInActivity   | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a app-only auth flow (app to app tokens) where the application is acting like a client.              |
| applicationAuthenticationResourceSignInActivity | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the application in a app-only auth flow (app to app tokens) where the application is acting like a resource.            |
| lastSignInActivity                              | [signInActivity](../resources/signinactivity.md) | The most recent sign-in activity of the application across delegated or app only flows where the application is used like a client or resource. |


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
  "id": "String (identifier)",
  "appId": "String",
  "delegatedClientSignInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "delegatedResourceSignInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "applicationAuthenticationClientSignInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "applicationAuthenticationResourceSignInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "lastSignInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  }
}
```



